UZ Core DiagnosticReport is the report a laboratory or other diagnostic service issues for a patient: a complete blood count, a coagulation panel, a urinalysis. It closes the [laboratory order to result](workflow-lab.html) chain. The report points back to the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) it answers (`basedOn`), lists the [Observation](StructureDefinition-uz-core-observation.html) results it summarises (`result`) and the [Specimen](StructureDefinition-uz-core-specimen.html) they were measured on, and can carry the issued report as a PDF. The individual values live in the Observations; the report groups them and records who issued them and when. An [Encounter](StructureDefinition-uz-core-encounter.html) and a [DeviceUsage](StructureDefinition-uz-core-deviceusage.html) can point to a report as their reason.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core DiagnosticReport Must Have

The profile adds no mandatory elements. The base resource requires a `status` and a `code` saying what kind of report it is.

#### Each UZ Core DiagnosticReport Must Support

- the report identifier assigned by the issuing system;
- the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) the report answers (`basedOn`);
- the `status` of the report (registered / partial / preliminary / final / amended / corrected / cancelled / entered-in-error);
- the service `category` (hematology / chemistry / microbiology ...);
- the report type (`code`);
- who or what the report is about (`subject`), usually the [patient](StructureDefinition-uz-core-patient.html);
- the [encounter](StructureDefinition-uz-core-encounter.html) in which the test was ordered;
- the clinically relevant time (`effective[x]`), usually when the specimen was collected;
- the `performer`: the practitioner, role or organization responsible for the report;
- the [specimens](StructureDefinition-uz-core-specimen.html) the report is based on;
- the [Observation](StructureDefinition-uz-core-observation.html) results (`result`);
- images or other data linked to the report (`media`), each with a `link` and an optional `comment`;
- the whole report as issued (`presentedForm`), for example a PDF.

### Building the JSON, step by step

The examples below go from the smallest valid report to a full laboratory report with its order, specimen and results. Each one validates against this profile. The complete reference instances are the [CBC report](DiagnosticReport-uz-core-diagnostic-report-example.html), the [external report with its own code](DiagnosticReport-example-external-lab-report-coded.html) and the [external report with text only](DiagnosticReport-example-external-lab-report-text-only.html).

#### The smallest DiagnosticReport you should send

A report needs a `status` and a `code`. Every UZ Core resource also names its profile in `meta.profile`, and a report is only useful with the patient it is about:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` comes from the national [laboratory report types](CodeSystem-lab-report-types-cs.html), here `lab-rep-01` (complete blood count). `status` uses HL7 codes, whose Uzbek and Russian displays come from DHP supplements, so you can leave `display` out.

#### A laboratory report for an order

The usual report answers an order and summarises its results. `basedOn` points to the [ServiceRequest](ServiceRequest-example-cbc-order.html), `specimen` to the sample, and `result` to the Observations. Here `result` is a single CBC panel Observation whose analytes are its components:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "language": "uz",
  "identifier": [
    { "system": "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id", "value": "DR-2026-0001" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-cbc-order" } ],
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "HM" } ] }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs",
        "code": "lab-rep-01",
        "display": "Umumiy qon tahlili"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "issued": "2026-02-06T11:00:00+05:00",
  "performer": [ { "reference": "Organization/tashkent-hospital" } ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "result": [ { "reference": "Observation/cbc-panel-example" } ]
}
```

The laboratory report types code system is in Uzbek, so a `display` you send must be the Uzbek one and the resource must say `"language": "uz"`. `category` takes a code from the national service category value set (HL7 v2 table 0074); codes from other systems may sit beside it. `effective[x]` is when the result is clinically relevant, usually the collection time; `issued` is when the report was released. Use the [diagnostic report identifier](NamingSystem-diagnostic-report-id.html) system for the report number.

#### Attaching the issued report and images

`presentedForm` carries the report as the patient or clinician sees it, usually a PDF. Give its `contentType`, and either the content inline in `data` (base64) or a `url` to a Binary. `media` links images or other documents that belong to the report, each through a `link` to a DocumentReference with an optional `comment`:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "result": [ { "reference": "Observation/cbc-panel-example" } ],
  "media": [
    {
      "comment": "Blood smear, x1000",
      "link": { "reference": "DocumentReference/example-blood-smear-image" }
    }
  ],
  "presentedForm": [
    {
      "contentType": "application/pdf",
      "title": "Complete Blood Count report",
      "url": "Binary/example-cbc-report-pdf"
    }
  ]
}
```

The PDF does not replace the coded results: send the Observations in `result` as well, so other systems can read the values.

#### A report type that is not in the national list

The `code` binding is extensible. When a laboratory issues a report that has no national code, send the laboratory information system's own code with its own `system`, and the report name in `text`:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "LAB" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://lis.aurora-lab.uz/fhir/CodeSystem/report-type", "code": "AUR-0142" } ],
    "text": "Special immunology assay reported by Aurora LIS"
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "performer": [ { "reference": "Practitioner/example-practitioner" } ]
}
```

The code system URL above is only an example; use the one your laboratory system publishes. When the source system has no code at all, send `code` with `text` only, as in the [text-only example](DiagnosticReport-example-external-lab-report-text-only.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
