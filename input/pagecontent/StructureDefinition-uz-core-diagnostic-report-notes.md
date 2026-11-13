### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a report by server id, and its earlier versions**

```
GET [base]/DiagnosticReport/[id]
GET [base]/DiagnosticReport/[id]/_history
```

**Search**

```
GET [base]/DiagnosticReport?identifier=https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id%7CDR-2026-0001
GET [base]/DiagnosticReport?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs%7Clab-rep-01
GET [base]/DiagnosticReport?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/v2-0074%7CHM
GET [base]/DiagnosticReport?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/DiagnosticReport?encounter=Encounter/[id]
GET [base]/DiagnosticReport?specimen=Specimen/[id]
GET [base]/DiagnosticReport?performer=Organization/[id]&issued=ge2026-02-01
```

**Create a report**

```
POST [base]/DiagnosticReport
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "preliminary",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "..." } ] },
  "subject": { "reference": "Patient/[id]" },
  "result": [ { "reference": "Observation/[id]" } ],
  ...
}
```

Send the report together with its Observations (and the Specimen, when new) in one transaction Bundle so they arrive atomically - see [Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

**Update an existing report** (e.g. set `status` to `final` once all results are in, or to `amended` after a correction)

```
PUT [base]/DiagnosticReport/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DiagnosticReport",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "status": "final",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#DiagnosticReport1-6) for the full list of supported search parameters.

### Related

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Laboratory order to result](workflow-lab.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
