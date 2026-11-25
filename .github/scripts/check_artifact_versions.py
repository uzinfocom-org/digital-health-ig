#!/usr/bin/env python3
"""Fail if any artifact declares a version that is not MAJOR.MINOR.PATCH.

Implements "Identification of versions" on the IG home page: every artifact
carries a SemVer MAJOR.MINOR.PATCH version. The one documented exception is a
translation supplement, which follows the version of the code system it
supplements and may add a fourth number (e.g. 2.2.0.1) when only the
supplement changes. Downstream importers reject anything else (e.g. "3.2").

Usage: check_artifact_versions.py [dir ...]
Defaults to fsh-generated/resources and input/vocabulary.
"""
import glob
import json
import os
import re
import sys

SEMVER = re.compile(r"^\d+\.\d+\.\d+$")
SUPPLEMENT = re.compile(r"^\d+\.\d+\.\d+(\.\d+)?$")

dirs = sys.argv[1:] or ["fsh-generated/resources", "input/vocabulary"]
checked = 0
bad = []
for d in dirs:
    for path in sorted(glob.glob(os.path.join(d, "*.json"))):
        try:
            with open(path, encoding="utf-8") as f:
                res = json.load(f)
        except (OSError, ValueError) as e:
            bad.append(f"{path}: cannot read ({e})")
            continue
        if not isinstance(res, dict) or "resourceType" not in res or "version" not in res:
            continue
        checked += 1
        version = str(res["version"])
        is_supplement = res.get("resourceType") == "CodeSystem" and res.get("content") == "supplement"
        if not (SUPPLEMENT if is_supplement else SEMVER).match(version):
            expected = "MAJOR.MINOR.PATCH[.N]" if is_supplement else "MAJOR.MINOR.PATCH"
            bad.append(f"{path}: {res.get('resourceType')}/{res.get('id')} version {version!r} is not {expected}")

for line in bad:
    print(f"::error::{line}")
if bad:
    print(f"{len(bad)} of {checked} versioned artifacts break the versioning rule")
    sys.exit(1)
print(f"All {checked} versioned artifacts use MAJOR.MINOR.PATCH")
