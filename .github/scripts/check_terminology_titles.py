#!/usr/bin/env python3
"""Fail if a CodeSystem or ValueSet title breaks the naming pattern.

Implements "Title и Description supplement и ValueSet" in modelling-guidelines.md:
- no Title names the artifact type ("CS", "VS", "Code System", "Value Set", ...);
- a supplement is titled "[Concept] translations" and described as
  "[Concept] supplement with translations in Uzbek and Russian".
A ValueSet may take a subset of a broad supplement (FHIR types, Act reason), so its
title is not tied to the supplement's.

Usage: check_terminology_titles.py [dir ...]
Defaults to fsh-generated/resources and input/vocabulary.
"""
import glob
import json
import os
import re
import sys

OWN = "https://terminology.dhp.uz/"
TYPE_WORD = re.compile(r"\b(CS|VS|code ?systems?|value ?sets?|supplement)\b", re.IGNORECASE)
SUFFIX = " translations"
DESCRIPTION = " supplement with translations in Uzbek and Russian"

dirs = sys.argv[1:] or ["fsh-generated/resources", "input/vocabulary"]
resources = []
bad = []
for d in dirs:
    for path in sorted(glob.glob(os.path.join(d, "*.json"))):
        try:
            with open(path, encoding="utf-8") as f:
                res = json.load(f)
        except (OSError, ValueError) as e:
            bad.append(f"{path}: cannot read ({e})")
            continue
        if isinstance(res, dict) and res.get("resourceType") in ("CodeSystem", "ValueSet") \
                and str(res.get("url", "")).startswith(OWN):
            resources.append((path, res))

for path, res in resources:
    label = f"{path}: {res['resourceType']}/{res.get('id')}"
    title = res.get("title")
    if not title:
        bad.append(f"{label} has no title")
        continue
    if TYPE_WORD.search(title):
        bad.append(f"{label} title {title!r} names the artifact type")
    if res["resourceType"] == "CodeSystem" and res.get("content") == "supplement":
        if not title.endswith(SUFFIX):
            bad.append(f"{label} supplement title {title!r} does not end in {SUFFIX!r}")
        else:
            expected = title[: -len(SUFFIX)] + DESCRIPTION
            if res.get("description") != expected:
                bad.append(f"{label} supplement description is not {expected!r}")

for line in bad:
    print(f"::error::{line}")
if bad:
    print(f"{len(bad)} naming problems in {len(resources)} code systems and value sets")
    sys.exit(1)
print(f"All {len(resources)} code systems and value sets follow the naming pattern")
