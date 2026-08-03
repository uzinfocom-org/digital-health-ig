# Uzbekistan Digital Health Platform FHIR Implementation Guide

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
- **Canonical base**: `http://dhp.uz` and `https://terminology.dhp.uz` for terminologies
- **ID pattern**: Use lowercase with hyphens (e.g., `dhp`)
