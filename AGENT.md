# DHP-temp FHIR Implementation Guide

## Build Commands
- **Full build**: `./_build.sh` or `./_genonce.sh` (main build command)
- **Offline build**: `./_build.sh notx` (build without terminology server)
- **Update publisher**: `./_build.sh update` (download latest IG publisher)
- **Jekyll build**: `./_build.sh jekyll` (build static site only)
- **Clean**: `./_build.sh clean` (remove temp directories)
- **Test**: No specific test framework - validation happens during build

## Architecture
- **Type**: FHIR R5 Implementation Guide using SUSHI/FSH (FHIR Shorthand)
- **Main config**: `sushi-config.yaml` (IG metadata, parameters, menu)
- **IG config**: `ig.ini` (publisher settings)
- **Source**: `input/` directory containing FSH files, vocabulary, and content
- **Generated**: `fsh-generated/` (SUSHI output), `output/` (final IG), `temp/` (build temp)
- **Publisher**: HL7 FHIR IG Publisher (Java-based, stored in `input-cache/`)

## Code Style & Conventions
- **FSH files**: Most are located in `input/fsh/` with extra-large codesystems in `input/manual-fsh/`
- **Vocabulary**: Pre-rendered extra-large codesystems are stored in `input/vocabulary/`
- **Content**: Markdown pages in `input/pagecontent/`
- **Canonical base**: `http://medcore.uz` and `https://terminology.medcore.uz` for terminologies
- **ID pattern**: Use lowercase with hyphens (e.g., `dhp`)
