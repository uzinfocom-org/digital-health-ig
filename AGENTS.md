# Uzbekistan Digital Health Platform FHIR Implementation Guide

## Modelling guidelines (required reading)

Before creating or modifying any FHIR profile, extension, value set, code system, naming system, instance, or other modelling artifact, you MUST read `modelling-guidelines.md` in full and follow it. It defines the naming conventions, canonical URL patterns, identifier systems, cardinality rules, binding strengths, slicing patterns, terminology and versioning rules, and structural conventions every artifact must follow.

## Build Commands
- **Full build**: `./_build.sh` or `./_genonce.sh` (main build command)
- **Offline build**: `./_build.sh notx` (build without terminology server)
- **Update publisher**: `./_build.sh update` (download latest IG publisher)
- **Jekyll build**: `./_build.sh jekyll` (build static site only)
- **Clean**: `./_build.sh clean` (remove temp directories)
- **Test**: No specific test framework - validation happens during build

## Code Style & Conventions
- **FSH files**: Most are located in `input/fsh/` with extra-large codesystems in `input/manual-fsh/`
- **Vocabulary**: Pre-rendered extra-large codesystems are stored in `input/vocabulary/`
- **Content**: Markdown pages in `input/pagecontent/`
  - The `StructureDefinition-*-intro.md` fragments embed hand-written JSON examples that the IG build does **not** validate. Whenever you add or change one, validate it with the FHIR IG validator against the profile in its `meta.profile` (e.g. `java -jar input-cache/validator_cli.jar example.json -version 5.0.0 -ig . -profile <canonical-url>`) and fix any errors before committing.
- **Changelog**: add entries under `### In development` in all three changelogs (`input/pagecontent/changelog.md` and `input/translations/{ru,uz}/pagecontent/changelog.md`). Within each `####` category, keep entries in alphabetical order by their visible text (ignore link brackets; Latin before Cyrillic), each language sorted on its own. Insert a new entry at its sorted place rather than at the end: entries that concurrent PRs add at the same spot conflict on GitHub.
- **Canonical base**: `http://dhp.uz` and `https://terminology.dhp.uz` for terminologies
- **ID pattern**: Use lowercase with hyphens (e.g., `dhp`)
