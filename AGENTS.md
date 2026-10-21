# Uzbekistan Digital Health Platform FHIR Implementation Guide

## Modelling guidelines (required reading)

Before creating or modifying any FHIR profile, extension, value set, code system, naming system, instance, or other modelling artifact, you MUST read `modelling-guidelines.md` in full and follow it. It defines the naming conventions, canonical URL patterns, identifier systems, cardinality rules, binding strengths, slicing patterns, terminology and versioning rules, and structural conventions every artifact must follow.

## Identifier systems

Every `Identifier.system` - in this guide and in guides that build on it - must follow the patterns on the [identifiers](https://dhp.uz/fhir/core/en/identifiers.html) page, `https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]`, using one of the namespaces listed there. Do not invent a new namespace.

If a new namespace seems necessary, scrutinize it before adding it:
- Does the value identify exactly one thing? A value shared by many resources, such as a program or form type, is a code, not an identifier - put it in a coded element, `meta.tag` or an extension.
- Does an existing namespace already fit? Choose the namespace by what is identified, not by who assigns the identifier.
- Is there already a system for it in `IdentifierDomainCS` or a core NamingSystem?

Only when it passes, add the namespace to this guide first - the identifiers page (en/ru/uz), `IdentifierDomainCS` and a NamingSystem - and use it in dependent guides only after that is merged.

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
