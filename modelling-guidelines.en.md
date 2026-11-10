# Modelling guidelines for the national profiles of Uzbekistan

## 1) Purpose and scope

This guide describes the approaches and methods for creating national profiles of FHIR resources, adapted to the healthcare requirements of Uzbekistan, using HL7 FHIR R5.

## 2) Naming conventions

### 2.1 General naming principles

All artifacts in the national profiles must follow uniform naming conventions to ensure consistency and maintainability of the code.

### 2.2 Profile naming

Each national profile must follow a uniform structure:

```fsh
Profile: UZCoreCondition
Parent: Condition
Id: uz-core-condition
Title: "UZ Core Condition"
Description: "Uzbekistan Core Condition profile, used for documenting a patient's clinical symptoms, conditions, and their characteristics"
```

**Conventions for profiles:**
- **Profile**: `UZCore[ResourceName]` (for example, `UZCorePatient`, `UZCoreObservation`)
- **Parent**: The corresponding base FHIR resource
- **Id**: `uz-core-[resourcename]` in lowercase, with the resource name as one word (for example, `uz-core-medicationrequest`)
- **Title**: `"UZ Core [ResourceName]"`
- **Description**: `"Uzbekistan Core [ResourceName] profile, used to [description of purpose]"`

**Multi-word resource names:**

The FHIR resource name is written exactly as the FHIR specification writes it - as one word in CamelCase. The space in the templates above separates only the prefix (`UZ Core`, `Uzbekistan Core`), not the parts of the resource name.

| Resource | Profile | Title | Description |
|---|---|---|---|
| `MedicationRequest` | `UZCoreMedicationRequest` | `"UZ Core MedicationRequest"` | `"Uzbekistan Core MedicationRequest profile, used to ..."` |
| `ClaimResponse` | `UZCoreClaimResponse` | `"UZ Core ClaimResponse"` | `"Uzbekistan Core ClaimResponse profile, used to ..."` |
| `PractitionerRole` | `UZCorePractitionerRole` | `"UZ Core PractitionerRole"` | `"Uzbekistan Core PractitionerRole profile, used to ..."` |

**Incorrect:** `Title: "UZ Core Medication Request"`, `Description: "Uzbekistan Core Claim Response profile, ..."` - the resource name is split into two words.

In the `Id`, the resource name is also written as one word, in lowercase; the hyphen separates only the `uz-core-` prefix: `uz-core-medicationrequest`, `uz-core-claimresponse`, `uz-core-practitionerrole`, `uz-core-inventoryitem`. `uz-core-auditevent`, `uz-core-episodeofcare`, `uz-core-healthcareservice`, `uz-core-relatedperson`, `uz-core-servicerequest`, `uz-core-activitydefinition` and `uz-core-medicationrequest` are already named this way.

**Existing exceptions - do not fix:** these profiles are published with an `Id` in which the words of the resource name are separated by hyphens:

`uz-core-practitioner-role`, `uz-core-questionnaire-response`, `uz-core-allergy-intolerance`, `uz-core-immunization-recommendation`, `uz-core-adverse-event`, `uz-core-plan-definition`, `uz-core-diagnostic-report`, `uz-core-laboratory-observation-definition`, `uz-core-medication-dispense`, `uz-core-claim-response`, `uz-core-biologically-derived-product`, `uz-core-supply-request`, `uz-core-supply-delivery`

Their canonical URLs are already published, so renaming them would break developers' references and the IG page addresses. Leave them as they are; the one-word rule applies to new profiles.

### 2.3 File naming

**Source Excel files:** Keep only the latest version of each file in `input/excel/`. Historical versions are not committed.

**Main profiles:**
- Format: `UZCore[ResourceName].fsh`
- Examples: `UZCorePatient.fsh`, `UZCoreCondition.fsh`, `UZCoreObservation.fsh`

**Terminology artifacts:**
- CodeSystem: `[PurposeName]CS.fsh` (for example, `ClinicalStatusCS.fsh`)
- ValueSet: `[PurposeName]VS.fsh` (for example, `ClinicalStatusVS.fsh`)

**Special files:**
- `Extensions.fsh` - all extensions
- `Aliases.fsh` - all aliases
- `Rulesets.fsh` - RuleSets

### 2.4 Canonical URLs of artifacts

All artifacts must use standardised URL templates:

| Artifact type | URL template |
|---------------|------------|
| **Profile** | `https://dhp.uz/fhir/core/StructureDefinition/{id}` |
| **Extension** | `https://dhp.uz/fhir/core/StructureDefinition/{id}` |
| **CodeSystem** | `https://terminology.dhp.uz/fhir/core/CodeSystem/{id}` |
| **ValueSet** | `https://terminology.dhp.uz/fhir/core/ValueSet/{id}` |

**Important:**
- Always use `https://` (not `http://`)
- The `dhp.uz` domain - for profiles and extensions
- The `terminology.dhp.uz` domain - for terminology artifacts (CodeSystem, ValueSet)

### 2.5 Extension naming

**Naming structure for Extensions:**
```fsh
Extension: DiagnosisType
Id: diagnosis-type
Title: "Diagnosis Type"
Description: "Extension to differentiate the diagnosis type"
Context: Condition
```

**Conventions for Extensions:**
- **Extension name**: CamelCase, a descriptive name
- **Id**: `[purpose-name]` in lowercase with hyphens
- **Title**: A human-readable name in Title Case
- **Context**: Use the `Context:` keyword to specify the context in which the extension is used. For multiple contexts, list them separated by commas:

```fsh
Context: Patient.gender, RelatedPerson.gender, Practitioner.gender
```

### 2.6 Invariant naming

**Invariant naming format:**
- For resources: `uzcore-[resource-abbreviation]-[number]`
- For extensions: `uzcore-[extension-purpose]-[number]`
- Examples:
  - Resources: `uzcore-con-1`, `uzcore-pat-1`, `uzcore-obs-1`
  - Extensions: `uzcore-gender-other-1`, `uzcore-diagnosis-type-1`

```fsh
* obeys uzcore-con-1
* ^constraint[0].key = "uzcore-con-1"
* ^constraint[=].severity = #error
* ^constraint[=].human = "Condition must have either a code or a bodySite"
* ^constraint[=].expression = "code.exists() or bodySite.exists()"
```

### 2.7 Search parameter naming

**Format for national search parameters:**
**Conventions:**
- **Id**: `uz-core-[resource]-[parameter-name]` in lowercase with hyphens
- **Name**: PascalCase with the UZ prefix

```fsh
SearchParameter: uz-core-condition-diagnosis-type
Id: uz-core-condition-diagnosis-type
* name = "UZConditionDiagnosisType"
* description = "Search for conditions by diagnosis type"
```

### 2.8 Identifier systems

All identifier systems (`Identifier.system`) are built according to the template from the [Identifiers](https://dhp.uz/fhir/core/identifiers.html) page:

```
https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]
```

- The `namespace` segment is mandatory. Choose it by what is being identified, not by who assigns the identifier: a case, record or document number belongs to `doc`, even if it is issued by an organization. A product number (for example, of a blood product unit) belongs to `prd`; if the number is issued by an external registry with its own system URI (for example, Asl Belgisi or uzpharminfo.uz for medicinal products), use that URI.
- Before creating a system, check [IdentifierDomainCS](https://dhp.uz/fhir/core/CodeSystem-identifier-domain-cs.html) and the core NamingSystems. If the system already exists, use it: the PINFL is always `https://dhp.uz/fhir/core/sid/pid/uz/ni`, and no separate system or NamingSystem is created for it.
- For each new system, create a NamingSystem with `kind = #identifier` and this URI in `uniqueId.value`.
- An identifier without a system identifies nothing: every `Identifier` is sent together with its `system`. In a profile the system is fixed in the slice (`system 1..1` and `system = ...`), in examples it is always populated, and in mapping tables it is given next to the value.
- The rule also applies to guides built on UZ Core. Use only the namespaces listed on the [Identifiers](https://dhp.uz/fhir/core/identifiers.html) page; new namespaces are not created.

If a new namespace seems necessary, check it first:
- Does an existing namespace fit, if you choose by what is being identified?
- Is there already a system for this in IdentifierDomainCS or the core NamingSystems?

Only if the namespace passes the check is it first added to UZ Core - to the Identifiers page (en/ru/uz), to IdentifierDomainCS and to a NamingSystem - and it is used in dependent guides only after that change has been merged.

## 3) Slicing conventions

### 3.1 Basic slicing principles

Slicing is used to divide arrays of elements into subsets with specific characteristics. When creating slices in national profiles, follow these principles:

**Discriminator types:**: use as needed.

**Slicing rules:**  `#open` - additional slices are allowed, recommended by default

### 3.2 Slice naming conventions

- Slice names must be in lower camelCase (per FSH best practice)
- Use descriptive names that reflect the purpose of the slice
- Examples of slice names: `problemListItem`, `encounterDiagnosis`, `primaryAsserter`

### 3.3 Slicing examples

**Identifier slicing (Patient.identifier) from UZCorePatient:**

```fsh
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a patient can be identified"
* identifier ^slicing.ordered = false
* identifier contains
    nationalId 0..1 MS and
    passportLocal 0..1 MS and
    passportInternational 0..1 MS and
    birthCertificate 0..1 MS and
    driversLicense 0..1 MS

* identifier[nationalId]
  * ^short = "PINFL of the patient"
  * system 1..1 MS
  * system = $nationaluniqueID
  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

* identifier[passportLocal]
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS
```

**Key elements:**
- `discriminator.type = #value` - discrimination by exact value
- `discriminator.path = "system"` - discrimination by the system field
- `rules = #open` - additional slices are allowed
- `ordered = false` - the order of slices does not matter
- Each slice has a clear purpose and constraints


## 4) Profile rules (cardinalities, MustSupport, bindings)

When defining profile rules, the following principles must be taken into account:

- **MustSupport (MS)**: All elements that must be supported by all systems in Uzbekistan must be marked as MS. A detailed description of MustSupport can be found in the [documentation](https://build.fhir.org/ig/uzinfocom-org/digital-health-ig/en/api-access.html#must-support).
- **Cardinalities**: Specify element cardinalities only if they differ from the base FHIR resource. If the cardinality matches the base resource, do not duplicate this information.
- **Bindings**: When specifying a binding to a ValueSet, always explicitly specify the binding strength (`required`, `extensible`, `preferred` or `example`). Use a `required` binding for mandatory elements with a fixed set of values. Use an `extensible` binding when additional codes are allowed. Use a `preferred` binding when the DHP cannot or does not want to enforce specific codes, but gives a recommendation on their use. Use an `example` binding when the ValueSet serves only as an example without any recommendation. **Warning**: if an `extensible` binding is used, the validator will not be able to distinguish typos from new valid codes.
- **Narrowing base ValueSets**: Do not narrow the ValueSet to which an element is bound in base FHIR down to a subset of its codes unless there is a specific reason to prohibit the rest. Such narrowing makes correct resources invalid and requires changing the ValueSet for every new scenario. To add translations, include the entire base set together with a supplement.
- **Bindings of repeating elements**: Do not bind a ValueSet with a `required` or `extensible` binding to a repeating coded element (`0..*`, `1..*`) as a whole: the binding applies to every repetition and prevents adding codes from other systems alongside it. Create an open slice and bind the ValueSet to it.
- **Additional Bindings**: Use `^binding.additional` when there is an opportunity to combine several profiles into one. This allows specifying different ValueSets for different usage contexts of the same element. Example from UZCoreSocioeconomicObservation:

```fsh
* value[x] from BenefitsVS (example)
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(BenefitsVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#1303306008 "Eligible for benefit"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(EducationVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#105421008 "Educational achievement"
```

In this example, a single UZCoreSocioeconomicObservation profile is used for observations about benefits, education, occupation and social status - each with the corresponding ValueSet depending on the observation type, instead of creating four separate profiles.

- **Reference target profiles (Reference and Canonical)**: If a national UZ Core profile exists for the target resource of a reference, constrain the reference to that profile via `only Reference(...)` rather than to the base FHIR resource. Keep the base resource only if there is no national profile for it. The same rule applies to canonical references (`only Canonical(...)`). Thanks to this, the IG Publisher renders links to the national profile pages, and the validator checks that the target resources conform to UZ Core requirements. Example from UZCoreObservation:

```fsh
// UZ Core profiles exist - specify them
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* encounter only Reference(UZCoreEncounter)
```

## 5) Terminology artifacts

Wherever possible, use codes from international standards (SNOMED CT, LOINC, ICD-10, ICD-11, ATC, UCUM, HL7 terminologies and others) rather than local codes. A standard code is more interoperable than a local one: a local code requires mapping via a ConceptMap for data exchange outside the platform.

Therefore every local code must go through a check: before adding a concept to an original CodeSystem (or keeping an existing one), look for a standard code with the same meaning and, if there is one, use it instead of the local code.

A local code is acceptable only when there is no equivalent standard concept: the standard concept is broader or narrower in meaning, or is missing altogether (for example, national administrative categories). If the standard covers only part of the list, a ValueSet may combine standard and local codes - only the uncovered concepts remain local.

### 5.1 Why a supplement is needed for CodeSystem and ValueSet

When creating national profiles, there is often a need to localise terminologies. Creating a **supplement** to existing HL7 CodeSystems (for example, `condition-clinical` for the Condition profile) allows you to:

- Add local translations (RU/UZ) without duplicating the original code set.
- Preserve compatibility with international profiles by continuing to use the canonical HL7 codes.
- Avoid conflicts when HL7 terminologies are updated, since a supplement does not change the structure of the original code system but only extends its descriptions.

Below are the step-by-step actions for creating a supplement, followed by concrete FSH examples.

**How to create a supplement:**

To standardise the process of creating a supplement, use the existing RuleSets from the `Rulesets.fsh` file:

- `SupplementCodeSystemDraft` - for draft versions of a supplement
- `SupplementCodeSystem` - for active versions of a supplement

Follow these steps:

1. Define a local CodeSystem using the appropriate RuleSet.
2. Add display translations in the required languages (RU/UZ).
3. Create a local ValueSet that includes both the original system and your supplement.

**Important:** The supplement version must reflect the version of the original CodeSystem that it supplements. This is the only case where the version must be specified explicitly - original CodeSystems and all ValueSets must not have an explicit version, since it is automatically inherited from the IG version. The supplement version must also be in SemVer format - see the next section.

### Requirement for the terminology version format

If the version of a terminology artifact is specified explicitly (for example, in a supplement), it must be in **SemVer** format: `MAJOR.MINOR.PATCH` (for example, `5.0.0`).

FHIR technically allows the CodeSystem version to be specified in a different format, for example as a date (`20042026`). However, such a version must not be used: the terminology processing system of the DHP platform expects exactly the SemVer format and will not be able to correctly recognise a version in date format.

**Correct:**

```fsh
* ^version = "5.0.0"
```

**Incorrect:**

```fsh
* ^version = "20042026"
```

**Important:** the requirement applies to all terminology artifacts - CodeSystem, ValueSet, ConceptMap and others.

**Encoding non-SemVer versions of original systems.** External terminologies often have release identifiers that are not in SemVer format. Since the supplement version must reflect the release of the original system and at the same time be SemVer, such identifiers are encoded according to the following rules:

| Original release | Supplement SemVer version | Rule |
|---|---|---|
| `2026-01` (SNOMED CT) | `2026.1.0` | year.month.0 |
| `20210222` (date YYYYMMDD) | `2021.2.22` | year.month.day |
| `2.82` (LOINC), `2.9` (HL7 v2) | `2.82.0`, `2.9.0` | append `.0` |
| `2025` (ATC) | `2025.0.0` | append `.0.0` |

### Creating original CodeSystems

To create your own (non-supplement) CodeSystems, use the corresponding RuleSets from the `Rulesets.fsh` file:

- `OriginalCodeSystemDraft` - for draft versions of original CodeSystems
- `OriginalCodeSystem` - for active versions of original CodeSystems

**Important:**
- In original CodeSystems, do not specify the version explicitly - it is automatically inherited from the IG version.
- In original CodeSystems the default language is Uzbek (`#uz`), so translations into Russian and English are added.
- In supplements the default language is English (`#en`), so translations into Russian and Uzbek are added.

**CodeSystem quality best practices:**

When creating CodeSystems, follow the terminology quality assurance methodology according to the [Checklist for Terminology Quality Assurance](https://zenodo.org/records/14609494).

**Hierarchical CodeSystem conventions:**

When creating hierarchical CodeSystems, follow these rules:

- **Separation of parent and child codes**: parent codes MUST NOT be present in child codes
- **Separate namespaces**: parent and child codes must use separate naming schemes
- **No embedding**: child codes CANNOT include parent codes

**Examples of correct naming:**
- Parent codes: `AAA`, `AAB`, `AAC` (the number of letters depends on the expected number of categories)
- Child codes: `1`, `2`, `3` (regardless of the hierarchy they are in)

**Incorrect:** If the parent code is `A`, then the child code `A1` is not allowed (it embeds the parent code)

**Setting parent relationships:**

To define hierarchical relationships, use the `parent` property:

```fsh
* property[0].code = #parent
* property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* property[=].type = #code

* concept[0] = #AAA "Category A"
* concept[+] = #1 "Subcategory 1"
  * property[0].code = #parent
  * property[=].valueCode = #AAA
* concept[+] = #2 "Subcategory 2"
  * property[0].code = #parent
  * property[=].valueCode = #AAA
```

**Example of an original CodeSystem:**

```fsh
CodeSystem: DiagnosisTypeCS
Id: diagnosis-type-cs
Title: "Diagnosis type"
Description: "Diagnosis types in Uzbekistan"
* insert OriginalCodeSystemDraft(diagnosis-type-cs)

* #gencl-0001-00001 "Yo'naltiruvchi muassasaning tashxisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагноз направившего учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosis of the referring institution"
```

**Large CodeSystems (>100 codes):**

CodeSystems with more than 100 codes slow down every SUSHI build. Pre-generate their JSON:

1. Build the IG with SUSHI.
2. Move `fsh-generated/resources/CodeSystem-<id>.json` → `input/vocabulary/`.
3. Move the source `.fsh` → `input/manual-fsh/` (SUSHI does not parse it, but the FSH is kept as the source).
4. When updating the code list: move the `.fsh` back to `input/fsh/terminology/`, rebuild, repeat steps 2-3.

### 5.2 FSH example for ClinicalStatusCS (using Condition as an example)

```fsh
CodeSystem: ClinicalStatusCS
Id: clinical-status-cs
Title: "Clinical status translations"
Description: "Clinical status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(clinical-status-cs, $condition-clinical, 3.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
```

### 5.3 FSH example for ClinicalStatusVS (using Condition as an example)

When creating ValueSets that include codes from supplement CodeSystems, a special extension must be added. ValueSets that use only original codes do not require this extension.

```fsh
ValueSet: ClinicalStatusVS
Id: clinical-status-vs
Title: "Clinical status"
Description: "Clinical statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/clinical-status-vs"
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClinicalStatusCS)
* include codes from system $condition-clinical

```

**Important:**
- The `valueset-supplement` extension is needed only for ValueSets that include codes from supplement CodeSystems. For ValueSets with only original codes, this extension is not required.
- When using supplement CodeSystems in a ValueSet, you must include codes from the **original** CodeSystem (for example, `$condition-clinical`), not from the supplement CodeSystem. The `valueset-supplement` extension points to the supplement that provides translations for the original codes.

**Title and Description of the supplement and ValueSet:**

A supplement and the ValueSet over it name the same concept, so their Title and Description follow the same pattern:

| Artifact | Title | Description |
|---|---|---|
| Supplement CodeSystem | `"[Concept] translations"` | `"[Concept] supplement with translations in Uzbek and Russian"` |
| ValueSet | `"[Concept]"` | `"[Concept in plural]"` |

For example, for device categories: `"Device category translations"` / `"Device category supplement with translations in Uzbek and Russian"` and `"Device category"` / `"Device categories"`.

- Write the Title with a capital letter only in the first word (sentence case); names of FHIR resources (for example, `AdverseEvent`) are written as in the specification.
- Do not add the artifact type to the Title: `"Code System"`, `"Value Set"`, `"CS"`, `"VS"`, `"Supplement CodeSystem"`. The type is already visible on the artifact page.
- Do not list codes in the Description: the list of codes is shown on the artifact page and becomes outdated when the system changes.
- Bring existing artifacts with other Titles in line with the pattern when you change them. Title and Description are not part of the canonical URL, so changing them breaks nothing.

### 5.4 Why and how to create Extensions

When creating national profiles, additional attributes that are absent from the base FHIR resources are often required. In such cases, **Extensions** are created. For example, the Condition profile may require a "Diagnosis type" (primary, referring facility, clarified, etc.). Extensions allow you to:

- Add new data without breaking compatibility with the base specification.
- Account for national requirements, ensuring the exchange of necessary information.

**Standard extensions first.** Before creating your own extension, go through these steps in order:

1. Make sure the base resource has no suitable element.
2. Check the [HL7 FHIR extension registry](https://hl7.org/fhir/extensions/extension-registry.html) (package `hl7.fhir.uv.extensions`). If it has a suitable extension, use it and add an Alias for it in `Aliases.fsh` (like `$translation-extension`). For example, if the resource has no element for the location where an event took place, use the standard `event-location` rather than your own extension for the same purpose.
3. If there is no standard extension, look for community-defined extensions in the [XIG registry](https://packages2.fhir.org/xig?offset=0&type=ext). If you find an extension with the required semantics, a suitable context and value type, reuse it.
4. Create your own DHP extension only when there is neither a standard nor a suitable community extension. Model it with the same semantics (structure, data types) as the closest existing extension: this keeps extensions compatible and makes further integration easier.

The main steps are shown below, followed immediately by an FSH example.

**How:**

1. Create a separate FSH file for the Extension, defining its ID, name, canonical URL and description.
2. Define the data type (in our case `CodeableConcept`).
3. Create a CodeSystem (`DiagnosisTypeCS`) with the required codes and translations.
4. Create a ValueSet (`DiagnosisTypeVS`) that includes codes from the created CodeSystem.
5. In the profile (`UZCoreCondition`), specify the Extension with a binding to this ValueSet.

> **Note:** all Extensions are kept in a separate file `Extensions.fsh`.

**FSH example for an Extension (DiagnosisType for Condition):**

```fsh
Extension: DiagnosisType
Id: diagnosis-type
Title: "Diagnosis Type"
* ^url = "https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type"
Context: Condition
* valueCodeableConcept 1..1
* valueCodeableConcept from DiagnosisTypeVS (required)
```

### 5.5 Why and how to create Aliases

**Why:**

- Aliases are used to shorten and simplify code in FSH files.
- They allow you to set a short name for a long canonical URL (for example, `$sct` instead of `http://snomed.info/sct`).
- They make profiles easier to read and maintain, and reduce the risk of typos.
- If a canonical URL changes, it is enough to update it in one place - in the Aliases file.

**How:**

1. Create the file `Aliases.fsh`.
2. Define aliases in the format: `Alias: $<short_name> = <full_URL>`.
3. Use aliases in all FSH files instead of long URLs.

> **Note:** all Aliases are kept in a separate file `Aliases.fsh`.

**Example Aliases.fsh:**

```fsh
Alias: $sct = http://snomed.info/sct
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type
```

**Maintaining the Aliases.fsh file:**

- **Alphabetical order**: Keep aliases in alphabetical order for easy lookup.
- **Cleanup**: Periodically check the file for unused or duplicate aliases and remove them.

### 5.6 Why you should always create Instance examples for profiles

**Why:**

- Instance examples demonstrate how to correctly populate a resource in accordance with any profile.
- They provide developers and testers with ready-made templates for integration.
- They make it possible to validate a profile against real data, revealing errors in bindings, cardinalities and MustSupport elements.
- They simplify the learning and documentation process.

**How:**

1. Create a separate FSH file or section for the `Instance` of each profile.
2. Set `InstanceOf` = `<profile_name>`.
3. Populate all MustSupport elements and required fields.
4. If needed, create several examples for different scenarios (for example, for Condition: active condition, remission, refuted condition).

**Naming conventions for examples (Usage: #example):**

- **Instance**: `example-[descriptive-name]` in lowercase with hyphens (kebab-case)
- **Title**: `"Example [Profile Title] - [Scenario]"` in Title Case
- **Description**: A description of the scenario in English
- **Usage**: Always specify `Usage: #example` for examples - this is a mandatory FSH keyword that marks the Instance as an example in the IG

Examples of correct naming:
- `example-headache` for a headache example
- `example-pregnancy` for a pregnancy example
- `example-practitioner` for a practitioner example

**Language and translations in examples:**

- Specify `* language = #uz` to set Uzbek as the default language
- For elements that require translation into Russian or Karakalpak, use the `translation` extension:

```fsh
* name.text = "Тошкент шаҳар поликлиникаси"
* name.text.extension[+].url = $translation-extension
* name.text.extension[=].extension[0].url = "lang"
* name.text.extension[=].extension[=].valueCode = #ru
* name.text.extension[=].extension[+].url = "content"
* name.text.extension[=].extension[=].valueString = "Ташкентская городская поликлиника"
```

**Instance example for UZCoreCondition:**

```fsh
Instance:  example-headache
InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Headache"
Description: "Example instance of a headache condition documented during a patient encounter"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* code = $icd-10#R51 "Headache"
* subject = Reference(Patient/example)
* recordedDate = "2025-07-29"
```

### 5.7 Profile description pages (intro and notes)

Every profile must have two markdown fragments in `input/pagecontent/`; the IG Publisher inserts them into the profile page before and after the formal views:

- `StructureDefinition-<id>-intro.md` - the introductory part above the tables;
- `StructureDefinition-<id>-notes.md` - the Quick Start below the tables.

Models to follow: Organization, Location, Medication. A new profile without these fragments is considered incomplete.

**Structure of intro:**

1. A summary paragraph: what the resource represents and which resources reference it (with links to their pages). For reference entities (Patient, Organization, Practitioner, Medication) - advice to search for an existing resource by identifier before creating a new one.
2. `### Mandatory and Must Support data elements` with the standard introductory paragraph (copy it from an existing intro), then `#### Each UZ Core <Resource> Must Have` as prose and `#### Each UZ Core <Resource> Must Support` as a list - one line per element or group: in plain words, what it holds, with the main values in parentheses where that is helpful, for example: "status (active / suspended / inactive)". Do not list bindings and do not reference ValueSets - the formal profile shows them. In Must Have, also account for the required elements of the base R5 resource, not only those added by the profile.
3. For reference entities - a short section `### Finding an existing <Resource> {#finding}` with examples of searching by identifier and code.
4. `### Building the JSON, step by step`: three or four examples from a minimal valid instance to a complete one, each followed by a short explanation (bindings, Reference / CodeableReference types, slices). Links to the complete reference Instances. If `identifier` is sliced - a table of slices `{#identifier-slices}` with the `system` URIs.
5. A closing line with a link to `[Quick Start](#quick-start)`.

**Structure of notes:**

- `### Quick Start` with the standard paragraph about JWT, `[base]` and `%7C`;
- read by id, search (first by identifier and code, then other useful queries), create, update with `If-Match`;
- a closing line that links to the resource's section of the CapabilityStatement: `See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#<Type>1-<N>) for the full list of supported search parameters.` `<N>` is the resource's position in `rest.resource` of `input/vocabulary/CapabilityStatement-DHPCapabilityStatement.json`, counting from 1 (Patient is `#Patient1-1`); check the anchor on the built page, as it shifts when the server reorders resources. Do not list the parameters in prose. If the resource is not in the CapabilityStatement yet, write `<Type> is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above use standard FHIR R5 search parameters.` RU and UZ use the same sentence as the other pages (`Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](…).`, `Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](…) da keltirilgan.`);
- `### Related` with links to workflows and general pages of the guide.

**Rules:**

- Every JSON example must pass validation against the profile (the command is in `AGENTS.md`): always `meta.profile`; the `display` of codes from local CodeSystems must match the resource's `language`; the optional `display` on HL7 codes is better omitted.
- Lines in code blocks no longer than ~120 characters - split long objects across several lines, otherwise the page spreads out in width.
- Use only search parameters a client can rely on: those the CapabilityStatement lists for the resource (standard FHIR R5 ones if it is not listed yet), plus UZ Core SearchParameters defined in this guide, linked to their page.
- Do not repeat the same rule in several places on the page.
- Put RU and UZ copies of both fragments in `input/translations/<lang>/pagecontent/` under the same file name, with a machine translation banner at the top. Code blocks and JSON are identical to the English ones. Set the anchors `{#quick-start}`, `{#finding}`, `{#identifier-slices}` explicitly - translated headings do not generate them.
- Add a changelog entry (en, ru, uz) in its place in alphabetical order within the category, not at the end - see `AGENTS.md`.

## 6) Translations and localisation

### Principles of working with translations

**Important rule**: FSH files use **English only**. This applies to all text elements, including:
- `^short` - short descriptions
- `^description` - detailed descriptions
- `^definition` - element definitions
- All other text metadata

### Translation workflow

Translations are done through the system of .po files after the IG build:

**Step 1: Creating FSH files**
- Create profiles, extensions and terminologies in English

**Step 2: Building the IG**
```bash
# Build the IG to generate the base .po files
./_genOnce.sh # Linux, macOS
_genOnce.bat  # Windows
```

**Step 3: Copying .po files**
- Copy the needed .po files from `/translations/lang/po/*.po` to `/input/translations/lang/`
- For example, for Russian: `/translations/ru/po/` → `/input/translations/ru/`

**Step 4: Translating .po files**

Use one of the following methods:

**Option A: Text editor**
```po
# Example structure of a .po file
msgid "Patient"
msgstr "Пациент"

msgid "A person who is receiving or has received medical care"
msgstr "Лицо, которое получает или получало медицинскую помощь"
```

**Option B: Online editor**
- Open https://localise.biz/free/poeditor (a free tool)
- Upload the .po file
- Do the translation in a convenient interface
- Download the translated file

**Step 5: Rebuilding the IG**
 - Build the IG again and the translations will be there

### Translation folder structure

```
input/
└── translations/
    ├── ru/
    │   ├── StructureDefinition-uz-core-patient.po
    │   ├── StructureDefinition-uz-core-condition.po
    │   └── ...
    └── uz/
        ├── StructureDefinition-uz-core-patient.po
        ├── StructureDefinition-uz-core-condition.po
        └── ...
```

### Translation recommendations

**Terminology:**
- Use consistent medical terminology
- Maintain a glossary of key terms
- Agree on translations with medical experts

**Quality:**
- Translate by meaning, not word for word
- Take into account the context of use in medical systems

