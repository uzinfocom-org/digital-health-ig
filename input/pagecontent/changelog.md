### In development

UZ Core Clinical Condition added to differentiate clinical (ICD-10) and non-ICD-10 based conditions.

Patient disability status has been moved from the Patient resource (using a FHIR-standard extension) to the Condition resource.

Underscores have been removed from NamingSystem identifiers.

Added a capabilitystatement describing DHP's supported resources, profiles, operations and searchparameters.

Added IP statements, globals table, and a dependency table to the IG.

Canonical URLs of NamingSystems now start with `https://terminology.dhp.uz`.

Name of the Observation Interpretation codesystem supplement has been fixed.

Added multilingual terminology strategy with Uzbek-authored CodeSystems and THO supplements for UI localization.

Documented use of ConceptMaps and their associated strategy.

Updated slice names to follow best practice naming convention of lower camelCase.

Added support for international addresses in Patient, Practitioner, and RelatedPerson resources.

### Version 0.3.0

UZ Core profiles for Encounter, EpisodeOfCare, and Observation have been added.

Canonical URLs have been changed to `https://dhp.uz/fhir/core` for conformance resources and `https://terminology.dhp.uz/fhir/core` for terminology resources to accommodate future IGs, which will follow a pattern of `https://dhp.uz/fhir/<ig>`.

Russian translations have been added.

### Version 0.2.0

This is a first, in-development release of the IG that updates the canonical URLs of all resources to their final version.

#### Major changes
UZ Core profiles for AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance and the Socioeconomic Observation have been added.

Canonical URLs of profiles, terminology resources, and the IG have been changed from the temporary `medcore.uz` domain to the official `dhp.uz` domain.

