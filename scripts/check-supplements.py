#!/usr/bin/env python3
"""Check CodeSystem supplements for designation conflicts.

Run after SUSHI. Fails when:
  - a code is translated in more than one supplement of the same base CodeSystem,
  - a concept has more than one designation without a use in the same language,
  - a concept display differs from the base CodeSystem display (for base
    CodeSystems found in the FHIR package cache).
Overlaps listed in scripts/check-supplements-baseline.txt are counted but do not fail.
"""
import collections
import glob
import json
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASELINE = os.path.join(ROOT, "scripts", "check-supplements-baseline.txt")
PACKAGES = os.path.join(os.path.expanduser("~"), ".fhir", "packages")


def flatten(concepts):
    for c in concepts:
        yield c
        yield from flatten(c.get("concept", []))


def load_supplements():
    paths = glob.glob(os.path.join(ROOT, "fsh-generated", "resources", "CodeSystem-*.json"))
    paths += glob.glob(os.path.join(ROOT, "input", "vocabulary", "CodeSystem-*.json"))
    sups = {}
    for p in paths:
        with open(p, encoding="utf-8") as f:
            cs = json.load(f)
        if cs.get("content") == "supplement":
            sups[cs["id"]] = cs
    return list(sups.values())


def load_base_displays(urls):
    displays = collections.defaultdict(lambda: collections.defaultdict(set))
    for p in glob.glob(os.path.join(PACKAGES, "*", "package", "CodeSystem-*.json")):
        try:
            with open(p, encoding="utf-8") as f:
                cs = json.load(f)
        except (OSError, ValueError):
            continue
        if cs.get("url") not in urls or cs.get("content") not in ("complete", "fragment"):
            continue
        for c in flatten(cs.get("concept", [])):
            if "display" in c:
                displays[cs["url"]][c["code"]].add(c["display"])
    return displays


def load_baseline():
    if not os.path.exists(BASELINE):
        return set()
    with open(BASELINE, encoding="utf-8") as f:
        return {line.strip() for line in f if line.strip() and not line.startswith("#")}


def main():
    sups = load_supplements()
    baseline = load_baseline()
    base = load_base_displays({cs["supplements"] for cs in sups})
    errors, known = [], []

    owners = collections.defaultdict(list)
    for cs in sups:
        system = cs["supplements"]
        for c in flatten(cs.get("concept", [])):
            owners[(system, c["code"])].append(cs["id"])

            langs = collections.Counter(d.get("language") for d in c.get("designation", []) if "use" not in d)
            for lang, n in langs.items():
                if n > 1:
                    errors.append(f"{cs['id']}: {c['code']} has {n} designations in '{lang}' without a use")

            expected = base.get(system, {}).get(c["code"])
            if expected and "display" in c and c["display"] not in expected:
                errors.append(f"{cs['id']}: {c['code']} display \"{c['display'][:80]}\" differs from the base display \"{sorted(expected)[0]}\"")

    for (system, code), ids in sorted(owners.items()):
        if len(ids) > 1:
            msg = f"{system}|{code} is translated in {', '.join(sorted(ids))}"
            (known if f"{system}|{code}" in baseline else errors).append(msg)

    for m in errors:
        print(f"error: {m}")
    print(f"{len(sups)} supplements checked: {len(errors)} errors, {len(known)} known overlaps")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
