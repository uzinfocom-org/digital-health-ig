### In development

Added [laboratory observation codes](CodeSystem-observation-lab-research-codes-cs.html) for panels and analytes used in Uzbekistan.

Added [document identifier namespace](identifiers.html#document-identifiers) (doc) to identifier systems.

#### Organization profile changes

`type.coding[organizationType]` in [UZ Core Organization](StructureDefinition-uz-core-organization.html) now uses [OrganizationTypeUZCS](CodeSystem-organization-types-uz-cs.html) instead of the HL7 `organization-type` CodeSystem. For example, `$organization-type-cs#prov` must be replaced with a code from `organization-types-uz-cs` (e.g. `#I` "Distribution by management"). There is no 1:1 mapping - each organization must be classified into the new system (codes I-V).

Added `type.coding[organizationGrouping]` slice to [UZ Core Organization](StructureDefinition-uz-core-organization.html) using [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) for detailed facility grouping (e.g. `#104` "Specialized hospitals", `#210` "Family polyclinic"). Implementers should populate this new slice.

`type.coding[organizationalServiceGroup]` and `type.coding[specialization]` cardinality in [UZ Core Organization](StructureDefinition-uz-core-organization.html) widened from 0..1 to 0..\*. Implementers can now send multiple service group and specialization codes per organization.

Added code I_6 "Organizations with foreign investors participation" to [OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html). Implementers should use this code in `type.coding[subordinationGroup]` for applicable organizations.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) expanded with new codes for outpatient facilities (e.g. `#200` polyclinics), educational institutions (`#300`), blood transfusion centers (`#400`), sanepid services (`#500`), and others. Some existing translations corrected (e.g. `#116` fixed from "Medical center center" to "Medical center"). Implementers should review if a more specific code now exists for their facilities.

Added [coverage area extension](StructureDefinition-coverage-area.html) to [UZ Core Organization](StructureDefinition-uz-core-organization.html) for specifying the administrative territory an organization serves, bound to [StateVS](ValueSet-state-vs.html). SSV territory codes can be mapped to StateCS using [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html).

Added [example](Organization-xonobod-medical-association.html) demonstrating how to translate a MIS2 JSON organization into a UZ Core Organization resource using the ConceptMaps.

Added ConceptMaps for translating MIS2 codes to UZ Core terminology: [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) for `type.coding[organizationalStructure]`, [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) for `type.coding[subordinationGroup]`, and [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) for `type.coding[organizationalServiceGroup]`. Implementers translating from MIS2 should use these maps to populate the corresponding slices.

### Version 0.4.0
Added [UZ Core Goal](StructureDefinition-uz-core-goal.html) profile with associated codesystems and valuesets.

Added [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) and [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) profiles with multilingual support for translated answer options.

Added [pension certificate identifier type](NamingSystem-patient-id-uzb-pension-number.html) (Номер пенсионного удостоверения) with NamingSystem support in [Patient](StructureDefinition-uz-core-patient.html) resource.

Clarified binding strength requirements in [modelling guidelines](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md).

Applied feedback from DHP Connectathon 1.

Fixed profile references to use UZ Core profiles where possible instead of base FHIR resources.

[Patient](StructureDefinition-uz-core-patient.html) citizenship now uses ISO 3166-1 alpha-2 codes instead of custom MVD codes.

Fixed [OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) code consistency (101 → 101.0).

Fixed Russian translation for I_3 in [OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html).

Clarified descriptions for [NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html), and [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) to explain their purpose and hierarchy.

Added [managing organization attachment extension](StructureDefinition-managing-organization-attachment.html) to track when a patient was attached to a managing organization.

Added [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) for translating MVD country codes to ISO 3166-1 alpha-2 codes.

Added explicit slices for foreign patient passport numbers and drivers licenses with country code support.

Updated [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) description.

Improved [identifier documentation](identifiers.html) including PINFL clarity and migration to alpha-2 country codes.

Added [vital signs section](vital-signs.html) with guidance and examples.

Added Karakalpak language (kaa) support in the MultilingualName ruleset, used for multilingual names in [Organization](StructureDefinition-uz-core-organization.html) and [Location](StructureDefinition-uz-core-location.html) profiles.

Updated IP holder to Ministry of Health.

[UZ Core Clinical Condition](StructureDefinition-uz-core-clinical-condition.html) added to differentiate clinical (ICD-10) and non-ICD-10 based conditions.

Patient disability status has been moved from the [Patient](StructureDefinition-uz-core-patient.html) resource (using a FHIR-standard extension) to the [Condition](StructureDefinition-uz-core-condition.html) resource.

Underscores have been removed from NamingSystem identifiers.

Added a [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) describing DHP's supported resources, profiles, operations and searchparameters.

Added IP statements, globals table, and a dependency table to the IG.

Canonical URLs of NamingSystems now start with `https://terminology.dhp.uz`.

Name of the [Observation Interpretation](CodeSystem-observation-interpretation-cs.html) codesystem supplement has been fixed.

Added multilingual terminology strategy with Uzbek-authored CodeSystems and THO supplements for UI localization.

Documented use of ConceptMaps and their associated strategy.

Updated slice names to follow best practice naming convention of lower camelCase.

Added support for international addresses in [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), and [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) resources.

Added Uzbek translations.

### Version 0.3.0

UZ Core profiles for [Encounter](StructureDefinition-uz-core-encounter.html), [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), and [Observation](StructureDefinition-uz-core-observation.html) have been added.

Canonical URLs have been changed to `https://dhp.uz/fhir/core` for conformance resources and `https://terminology.dhp.uz/fhir/core` for terminology resources to accommodate future IGs, which will follow a pattern of `https://dhp.uz/fhir/<ig>`.

Russian translations have been added.

### Version 0.2.0

This is a first, in-development release of the IG that updates the canonical URLs of all resources to their final version.

#### Major changes
UZ Core profiles for AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance and the Socioeconomic Observation have been added.

Canonical URLs of profiles, terminology resources, and the IG have been changed from the temporary `medcore.uz` domain to the official `dhp.uz` domain.

