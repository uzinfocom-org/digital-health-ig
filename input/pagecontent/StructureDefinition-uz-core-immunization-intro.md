UZ Core Immunization records a single vaccine dose - whether it was administered or deliberately not given - for a patient on the Digital Health Platform. It captures what vaccine was given, the product, batch and dose, when and where it happened, who administered it, the protocol that was followed, and any reaction. It references the [Patient](StructureDefinition-uz-core-patient.html) who was vaccinated and the administering [Practitioner](StructureDefinition-uz-core-practitioner.html) or [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), and it may be linked back to the [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) that prompted it. A dose is uniquely identified by patient + vaccine code + occurrence + lot number, so the same dose is not recorded twice.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Immunization Must Have

Every Immunization must carry a status - completed (the dose was administered), not-done (a medical exemption or refusal, in which case give the status reason), or entered-in-error - the vaccine code saying which vaccine was given (or would have been), the patient the record is about, and an occurrence (the date it was administered, as a date/time, or a string when only an approximate date is known). Where a performer is recorded, the actor who administered the dose is mandatory, and where a protocol is recorded, so is the dose number within the series.

#### Each UZ Core Immunization Must Support



- a business identifier, and basedOn - the order or [recommendation](StructureDefinition-uz-core-immunization-recommendation.html) that authorised the dose;
- the status reason (for a `not-done` record), the administered product, manufacturer lot number and expiry date, and the dose quantity;
- the encounter, location, administration site and route, and supporting information;
- the primary source flag and the information source (who reported the data);
- the performer (and their function/role), notes, and the reason for vaccination;
- the subpotent flag with its reason, program eligibility (program and participation status), and funding source;
- the reaction (date, manifestation, and whether self-reported);
- the protocol applied - series name, authority organization, target disease, dose number and total doses in the series.

> Use `status = not-done` with a status reason to record an exemption or refusal - do not omit the record. Reserve `entered-in-error` for records created by mistake.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full immunization record with protocol and reaction. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([BCG dose](Immunization-immunization-example-001.html), [measles dose](Immunization-example-measles-immunization.html)).

#### The smallest Immunization you should send

Four elements are mandatory: `status`, `vaccineCode`, `patient`, and an `occurrence`. The vaccine code may be a CVX code or an Australian Immunisation Register (AIR) code; the occurrence is usually a `occurrenceDateTime`. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`. This much already passes validation:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  "status": "completed",
  "vaccineCode": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/cvx",
        "code": "03",
        "display": "measles, mumps and rubella virus vaccine"
      }
    ]
  },
  "patient": { "reference": "Patient/example-emma" },
  "occurrenceDateTime": "2024-01-10"
}
```

`status` is bound `required` to `completed` / `not-done` / `entered-in-error`. `vaccineCode` uses an `extensible` binding to the [vaccine code value set](ValueSet-vaccine-code-vs.html) - CVX (`http://hl7.org/fhir/sid/cvx`) and the Australian Immunisation Register (AIR) are the systems in use. When only an approximate date is known, send `occurrenceString` instead of `occurrenceDateTime`.

#### A realistic administered dose

In practice you record the product detail and the administration: a CVX `vaccineCode`, the `lotNumber` and `expirationDate`, the `encounter` and `location`, the `site` and `route`, the `doseQuantity`, and the `performer` who gave the dose. `vaccineCode` is a plain `CodeableConcept`, but `performer.actor` is a plain `Reference`:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "primarySource": true,
  "lotNumber": "LOT-BCG-2026-01",
  "expirationDate": "2027-01-31",
  "location": { "reference": "Location/example-location-1" },
  "site": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActSite", "code": "LA", "display": "Left arm" }]
  },
  "route": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "36673005", "display": "Intradermal injection" }]
  },
  "doseQuantity": { "value": 0.05, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "performer": [
    {
      "function": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0443", "code": "AP", "display": "Administering Provider" }]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ]
}
```

`patient`, `encounter`, `location`, `basedOn`, `supportingInformation`, `performer.actor` and `protocolApplied.authority` are all plain References (`{ "reference": "Type/id" }`). `administeredProduct`, `informationSource`, `reason` and `reaction.manifestation` are `CodeableReference` types - their reference sits one level deeper (`{ "reference": { "reference": "Type/id" } }`). See [References and CodeableReferences](how-to-read.html#references-and-codeablereferences) for the distinction.

#### Adding protocol, reason and reaction

For a complete record, add the `protocolApplied` (series name, target disease, dose number and total doses), the `reason` for vaccinating, and any `reaction` observed. Note where the CodeableReference shape applies - `reason` and `reaction.manifestation` nest the reference, while `protocolApplied.authority` is a plain Reference:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "administeredProduct": {
    "reference": { "reference": "Medication/medication-imm-001" }
  },
  "reason": [
    { "reference": { "reference": "Condition/condition-tuberculosis-risk-example" } }
  ],
  "reaction": [
    {
      "date": "2026-04-28T12:00:00+05:00",
      "manifestation": {
        "concept": {
          "coding": [{ "system": "http://snomed.info/sct", "code": "260389003", "display": "No reaction" }]
        }
      },
      "reported": false
    }
  ],
  "protocolApplied": [
    {
      "series": "BCG vaccination",
      "authority": { "reference": "Organization/example-immunization-organization" },
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "56717001", "display": "Tuberculosis" }] }
      ],
      "doseNumber": "1",
      "seriesDoses": "1"
    }
  ]
}
```

`reaction.manifestation` carries its coded finding in `concept`; it may instead point at an [Observation](StructureDefinition-uz-core-observation.html) through its nested `reference`. `protocolApplied.targetDisease` is bound `extensible` to SNOMED CT. When the dose came from a [recommendation](StructureDefinition-uz-core-immunization-recommendation.html) or order, add a `basedOn` reference to it.

#### When the dose was not given

Do not omit the record when a vaccine is refused, contraindicated, or otherwise not administered - set `status` to `not-done` and give the `statusReason`. The `occurrence` still records when it would have been (or was scheduled to be):

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "not-done",
  "statusReason": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "IMMUNE", "display": "immunity" }]
  },
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00"
}
```

`statusReason` uses a `required` binding. See [Missing & suppressed data](general-guidance.html#missing-data) for the difference between a not-done event and a missing element.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
