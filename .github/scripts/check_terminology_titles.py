#!/usr/bin/env python3
"""Fail if a CodeSystem or ValueSet title breaks the naming pattern.

Implements "Title и Description supplement и ValueSet" in modelling-guidelines.md:
- no Title names the artifact type ("CS", "VS", "Code System", "Value Set", ...);
- a supplement is titled "[Concept] translations" and described as
  "[Concept] supplement with translations in Uzbek and Russian";
- no other CodeSystem or ValueSet is titled "... translations", and no ValueSet
  description mentions translations or a supplement;
- every title and description is present.
Sentence case and plural ValueSet descriptions are left to review.
A ValueSet may take a subset of a broad supplement (FHIR types, Act reason), so its
title is not tied to the supplement's.

Usage: check_terminology_titles.py [dir ...]
Defaults to fsh-generated/resources and input/vocabulary in the repository.
"""
import glob
import json
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
OWN = ("https://terminology.dhp.uz/", "https://dhp.uz/")
TYPE_WORD = re.compile(r"\b(CS|VS|code ?systems?|value ?sets?|supplement (code ?system|CS))\b", re.IGNORECASE)
VS_DESCRIPTION_WORD = re.compile(r"\bwith\b[^.]*\btranslations\b|\bsupplement with\b", re.IGNORECASE)
SUFFIX = " translations"
DESCRIPTION = " supplement with translations in Uzbek and Russian"

dirs = sys.argv[1:] or [os.path.join(ROOT, "fsh-generated", "resources"), os.path.join(ROOT, "input", "vocabulary")]
resources = []
bad = []
for d in dirs:
    if not os.path.isdir(d):
        sys.exit(f"::error::{d} does not exist; run SUSHI first")
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
    description = res.get("description")
    if not description:
        bad.append(f"{label} has no description")
    if TYPE_WORD.search(title):
        bad.append(f"{label} title {title!r} names the artifact type")
    if res["resourceType"] == "CodeSystem" and res.get("content") == "supplement":
        if not title.endswith(SUFFIX):
            bad.append(f"{label} supplement title {title!r} does not end in {SUFFIX!r}")
        else:
            expected = title[: -len(SUFFIX)] + DESCRIPTION
            if description != expected:
                bad.append(f"{label} supplement description is not {expected!r}")
    elif title.endswith(SUFFIX):
        bad.append(f"{label} is not a supplement but is titled {title!r}")
    if res["resourceType"] == "ValueSet" and description and VS_DESCRIPTION_WORD.search(description):
        bad.append(f"{label} description {description!r} mentions translations or a supplement")

if not resources:
    sys.exit("::error::no code systems or value sets found")

for line in bad:
    print(f"::error::{line}")
if bad:
    print(f"{len(bad)} naming problems in {len(resources)} code systems and value sets")
    sys.exit(1)
print(f"All {len(resources)} code systems and value sets follow the naming pattern")
