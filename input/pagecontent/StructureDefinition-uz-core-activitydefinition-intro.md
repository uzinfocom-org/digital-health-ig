UZ Core ActivityDefinition describes one activity in general terms, independent of any patient: a vaccine dose with its product, route and dose, or the invitation a patient receives to attend screening. It is a reusable template that says what kind of request to create and what goes in it. A [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) builds a national schedule from such activities, each schedule action pointing to one through `definitionCanonical` or `definitionUri`. When the activity is applied to a patient, the application creates the request named in `kind`, such as an [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) or a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), and a [CarePlan](StructureDefinition-uz-core-careplan.html) can cite the definition in `instantiatesCanonical`. Other resources link to an ActivityDefinition by its canonical `url`, so look it up by `url` before publishing a new one. The [immunization workflow](workflow-immunization.html) shows a schedule and its activities in use.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core ActivityDefinition Must Have

This profile adds no mandatory elements. The base resource requires a `status` (draft / active / retired / unknown). A `dynamicValue`, when present, must carry both its `path` and its `expression`.

#### Each UZ Core ActivityDefinition Must Support

- the canonical `url`, business `identifier`, `version` and the algorithm for comparing versions (`versionAlgorithm[x]`);
- the machine-processable `name` and the Uzbek `title`, with its Russian and Karakalpak forms as translations;
- the publication `status`, `date`, `publisher`, `description` and the period the definition is in force (`effectivePeriod`);
- the type of subject the activity is for (`subject[x]`, usually Patient);
- the kind of request the activity produces (`kind`) and the profile that request must conform to (`profile`);
- what is to be done (`code`), the intent (`intent`: proposal / plan / order and others), the urgency (`priority`) and whether the activity must not be done (`doNotPerform`);
- when it should happen (`timing[x]`);
- who takes part (`participant`: its `type`, a definition or reference to the kind of participant, its `role` and `function`);
- the product involved (`product[x]`: a vaccine code or a reference), the `quantity` and the `dosage`;
- the `bodySite`;
- what is needed or produced: specimens (`specimenRequirement`), observations (`observationRequirement`) and their results (`observationResultRequirement`);
- how the request is built from the definition: a StructureMap (`transform`) or individual values (`dynamicValue`: the `path` to set and the `expression` that computes it).

### Request resource types

`kind` names the resource created when this definition is applied, for example `ServiceRequest` for a lab test or `ImmunizationRecommendation` for a vaccination. Any [FHIR R5 request resource type](ValueSet-request-resource-types-vs.html) is allowed; event resources such as Observation or QuestionnaireResponse are not.

### Building the JSON, step by step

The examples below go from the smallest useful definition to a screening invitation template. Each one validates against this profile. The complete reference instance is the [childhood vaccination activity](ActivityDefinition-example-activity-definition.html).

#### The smallest ActivityDefinition you should send

Only `status` is mandatory, and every UZ Core resource names its profile in `meta.profile`. A definition is only useful with a canonical `url` that others can point to, a `name`, the `kind` of request it produces and a `code` for the activity. This much passes validation:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "name": "DiabetesScreeningInvitation",
  "status": "draft",
  "kind": "ServiceRequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  }
}
```

The `url` must stay stable once published, because schedules and care plans link to it. `name` has no spaces. `code` takes a SNOMED CT procedure or an ICHI intervention.

#### A vaccine dose

The hepatitis B birth dose, as one action of the national immunization schedule would reference it. `kind` is `ImmunizationRecommendation`, `code` is SNOMED CT `33879002` Administration of vaccine to produce active immunity, and the vaccine goes in `productCodeableConcept`:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-hepatitis-b-birth-dose",
  "version": "1.0.0",
  "versionAlgorithmCoding": { "system": "http://hl7.org/fhir/version-algorithm", "code": "semver" },
  "name": "HepatitisBBirthDose",
  "title": "Gepatit B ga qarshi tug'ruqxonada emlash",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Вакцинация против гепатита B в роддоме" }
        ]
      }
    ]
  },
  "status": "active",
  "subjectCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/fhir-types", "code": "Patient" } ]
  },
  "date": "2026-08-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "First dose of hepatitis B vaccine, given within 24 hours of birth.",
  "effectivePeriod": { "start": "2026-08-01" },
  "kind": "ImmunizationRecommendation",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "33879002",
        "display": "Administration of vaccine to produce active immunity"
      }
    ]
  },
  "intent": "plan",
  "priority": "routine",
  "doNotPerform": false,
  "participant": [ { "type": "practitioner" } ],
  "productCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/sid/cvx", "code": "08" } ]
  },
  "dosage": [
    {
      "route": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "78421000", "display": "Intramuscular route" } ]
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 0.5, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" } }
      ]
    }
  ]
}
```

`title` is in Uzbek; the Russian and Karakalpak titles travel as `translation` extensions on `_title`. When `code` is `33879002`, the product must come from the vaccine codes. The age at which the dose is due usually sits on the schedule action that references this definition (`PlanDefinition.action.timing[x]`), so one definition can serve several doses. `participant.type` uses a required binding (practitioner, patient, related person and others).

#### A screening invitation template

For an invitation template, use this existing profile with `kind = ServiceRequest`, `intent = plan`, and `profile` naming the existing [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html):

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "version": "1.0.0",
  "name": "DiabetesScreeningInvitation",
  "title": "Diabetes screening invitation",
  "status": "active",
  "date": "2026-09-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "Template for the invitation a patient receives to attend diabetes screening.",
  "kind": "ServiceRequest",
  "profile": "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  },
  "intent": "plan",
  "priority": "routine"
}
```

Patient, invitation category, program identifier and the pinned PlanDefinition reference are populated when the application creates the patient request. Definitions do not evaluate results or change a patient request status. Screening examples and the application contract belong to Integrations.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
