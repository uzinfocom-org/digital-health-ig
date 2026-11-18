UZ Core ServiceRequest is a request for a service to be done for a patient: a laboratory test or panel, an imaging study, a referral to a specialist or for planned hospitalization, a nursing home visit, or a transfusion. It says what is requested, for whom, by whom, how urgently, why, and how it is paid for. A ServiceRequest records the request only, not what was done. The events that carry it out point back to it: a [Specimen](StructureDefinition-uz-core-specimen.html) from `request`, an [Observation](StructureDefinition-uz-core-observation.html), [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) or [Procedure](StructureDefinition-uz-core-procedure.html) from `basedOn`. A [CarePlan](StructureDefinition-uz-core-careplan.html) lists it as a planned activity, a [SupplyRequest](StructureDefinition-uz-core-supply-request.html) for blood components is based on a transfusion order, and an [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) or [Claim](StructureDefinition-uz-core-claim.html) points to the referral behind it. For a state-funded referral, the platform tracks each approval step as a [Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) that focuses on the ServiceRequest. See the [laboratory](workflow-lab.html) and [referral](workflow-referral.html) workflows for the full sequence.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core ServiceRequest Must Have

This profile adds no mandatory elements. The base resource requires a `status`, an `intent` and a `subject`.

#### Each UZ Core ServiceRequest Must Support

- the business identifier of the order or referral (`identifier`), and a shared identifier that groups requests made together, such as all tests on one specimen (`requisition`);
- the status of the request (draft / active / on-hold / revoked / completed / entered-in-error / unknown) and its intent (proposal / plan / order and its subtypes);
- the kind of service (`category`), with at most one national category such as a laboratory section or hospital admission;
- the urgency (`priority`: routine / urgent / asap / stat) and whether the service must not be done (`doNotPerform`);
- the service requested (`code`);
- the [Patient](StructureDefinition-uz-core-patient.html) or [Location](StructureDefinition-uz-core-location.html) the request is for (`subject`) and the [Encounter](StructureDefinition-uz-core-encounter.html) in which it was made;
- when the service should happen (`occurrence[x]`) and when the request was issued (`authoredOn`);
- who issued it (`requester`: a practitioner, practitioner role, organization, patient or related person);
- why the service is needed (`reason`), coded in ICD-10 or SNOMED CT or as a reference to a [Condition](StructureDefinition-uz-core-condition.html);
- how the service is paid for (the [payment type](StructureDefinition-payment-type.html) extension: free / paid / insurance / state tariff / other) and the insurance coverage (`insurance`);
- other information that supports the request (`supportingInfo`) and the [Specimen](StructureDefinition-uz-core-specimen.html) to be analysed (`specimen`);
- instructions for the patient, such as how to prepare (`patientInstruction`).

### Building the JSON, step by step

The examples below go from the smallest useful instance to a state-funded referral. Each one validates against this profile. The complete reference instances are the [laboratory order](ServiceRequest-UZCoreServiceRequest-Example01.html), the [transfusion order](ServiceRequest-transfusion-order-01.html) and the [nursing home visit](ServiceRequest-example-nursing-newborn-home-visit-request.html).

#### The smallest ServiceRequest you should send

The base resource requires `status`, `intent` and `subject`, and every UZ Core resource names its profile in `meta.profile`. A request is only useful with the service in `code`, so send it too. This much passes validation:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` is a `CodeableReference`, so the coding sits under `concept`. Use `intent` `order` for a request that authorises the service. The national lab panel codes have Uzbek displays, so the resource sets `language` to `uz`; leave out `display` on HL7 codes such as `status` and `intent`.

#### A laboratory order

A family doctor orders an urgent complete blood count during a visit. The order number from the clinic's system goes in `identifier`, and `requisition` carries the number shared by all tests ordered on the same blood sample. The national category comes from the laboratory sections, the reason is an ICD-10 code, and `specimen` points to the sample once it is collected:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0001",
            "display": "Bepul"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "LAB-2026-004512" } ],
  "requisition": { "system": "https://mis.dmed.uz", "value": "REQ-2026-001877" },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-02",
          "display": "Gematologiya"
        }
      ]
    }
  ],
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-01-16T09:30:00+05:00",
  "authoredOn": "2026-01-16T09:10:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D50.9" } ]
      }
    }
  ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "patientInstruction": [ { "instructionMarkdown": "Tahlilni och qoringa topshiring." } ]
}
```

`category` and `reason` are both sliced by value. `category` holds at most one code from the [national ServiceRequest categories](ValueSet-service-request-categories-vs.html) (laboratory sections and SNOMED CT service kinds), and other categories may sit beside it. `reason` takes ICD-10 or SNOMED CT codes from the national condition codes; to point to a recorded diagnosis instead, use `"reference": { "reference": "Condition/[id]" }` in place of `concept`. `patientInstruction` repeats, and each entry is markdown text or a reference to a document.

#### A state-funded referral for hospitalization

A family doctor refers a patient for planned hospitalization under the state tariff. The service is SNOMED CT `306206005` Referral to service, the category `32485007` Admission to hospital, and `performer` names the [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) the patient is referred to:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0004",
            "display": "Davlat tarifi"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "REF-2026-000318" } ],
  "status": "active",
  "intent": "order",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "32485007" } ] }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "306206005" } ] }
  },
  "subject": { "reference": "Patient/example-nodira" },
  "occurrencePeriod": { "start": "2026-03-10", "end": "2026-03-31" },
  "authoredOn": "2026-03-05T13:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [ { "reference": "HealthcareService/example-healthcareservice" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "K80.2" } ]
      }
    }
  ]
}
```

The payment type decides what happens next. With the state tariff, the platform starts the chain of [approval Tasks](StructureDefinition-uz-core-referral-approval-task.html) and keeps the ServiceRequest `status` in step with them; with any other payment type the referral goes straight to the performer. `occurrencePeriod` is the window in which the service should happen; use `occurrenceDateTime` for a fixed time.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
