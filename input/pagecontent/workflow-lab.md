This workflow shows how a laboratory test is ordered and how the result comes back. It is the canonical FHIR diagnostic chain, with the reference wiring made explicit - a profile table tells you `Observation.specimen` *exists*, but this page tells you it must point at the specimen produced from this order.

Actors: an ordering clinician; the laboratory (LIS); the platform (DHP).

The sequence of interactions:

<div>{% include lab-sequence.svg %}</div><br clear="all"/>

The chain and its references:

<div>{% include lab-references.svg %}</div><br clear="all"/>

> Profile status: all four resources are profiled in UZ Core - [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) (laboratory-specific) and [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Set `meta.profile` to the matching profile on each resource and follow the wiring below.

### 1. Order the test

The clinician creates a [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) with `intent = order`, the test or panel in `code`, the patient in `subject`, the requester, and a `reasonCode`/`reasonReference` (the Condition being investigated). The orderable tests are published as [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) entries; `priority` is `routine`, `urgent` or `asap`.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory"] },
  "status": "active", "intent": "order",
  "code": { "coding": [{ "system": "http://loinc.org", "code": "58410-2" }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "priority": "routine" }
```

A repeat of an earlier test sets `ServiceRequest.basedOn` to the original order.

### 2. Collect the specimen

The lab records a [Specimen](StructureDefinition-uz-core-specimen.html) with its `type`, collection date/time and identifier, the patient in `subject`, and crucially `Specimen.request` pointing back at the ServiceRequest.

```
POST [base]/Specimen
{ "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "subject": { "reference": "Patient/[id]" },
  "request": [{ "reference": "ServiceRequest/[id]" }],
  "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }] } }
```

### 3. Return the results

Each analyte is an [Observation](StructureDefinition-uz-core-observation.html) with a LOINC `code`, a `value[x]`, an `interpretation` (normal / high / low / critical) and a `referenceRange`. Each Observation sets `basedOn` to the ServiceRequest and `specimen` to the Specimen. The set is summarised by a [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) whose `basedOn` is the ServiceRequest and whose `result` lists the Observations.

```
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/Observation?patient=Patient/[id]&category=laboratory&_sort=-date
```

The whole set is best returned as one transaction Bundle so the order, specimen, observations and report arrive atomically. A finalized, signed report is assembled as a document Bundle (`Composition` header referencing the results, signed via [Provenance](StructureDefinition-uz-core-provenance.html)) - the `Composition` references the resources rather than duplicating them. See [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

### Status and concurrency

The `ServiceRequest.status` follows the order lifecycle (draft &rarr; active &rarr; completed, or revoked); `entered-in-error`/`unknown` are reserved for corrections. A cancellation moves an active order to `revoked` (with a note), and a completed order cannot be modified. Concurrent edits use optimistic concurrency - send the `ETag` from your last read as `If-Match`; a stale version is rejected with `412 Precondition Failed`. Re-read and retry - see [Concurrency](api-access.html#concurrency).

### Related

- Profiles: [Specimen](StructureDefinition-uz-core-specimen.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html) &middot; [Vital signs](vital-signs.html)
