UZ Core Composition is the header of a medical document or digital form: a patient's medical record, a register, a certificate, a signed report. It says what kind of document it is (`type`, from the national list of medical document forms), whom it is about, who wrote it, who attested it and which organization keeps it, and it organises the content into titled `section`s. Each section has a human-readable `text` and references the resources that hold the data, such as a [Condition](StructureDefinition-uz-core-condition.html), an [Observation](StructureDefinition-uz-core-observation.html) or a [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html); the Composition points to them rather than copying them. A finalised document is sent as a document Bundle with the Composition as its first entry and signed through a [Provenance](StructureDefinition-uz-core-provenance.html); how documents are assembled and signed is specified in the [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/). Store ongoing clinical facts as their own resources, and use a Composition only when you need a finalised document.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Composition Must Have

- a `status` (preliminary / final / amended / entered-in-error ...);
- the document `type`;
- the `date` the document was last edited;
- at least one `author`;
- a `title`.

These all come from the base resource. Each `attester` must have a `mode`, and each section `text`, when present, must have a `status` and a `div`.

#### Each UZ Core Composition Must Support

- the `status` and the document `type` (the form from the national list of medical documents);
- the document `category` (medical record / register / form);
- whom the document is about (`subject`), usually the [patient](StructureDefinition-uz-core-patient.html);
- the `date`, the `author`s (practitioner, role, organization, related person, patient or device) and the `title`;
- the `attester`s: how they attested (personal / professional / legal / official) and who they are (`party`);
- the [organization](StructureDefinition-uz-core-organization.html) that keeps the document (`custodian`);
- the `section`s, each with its `title`, `code`, `author`, narrative `text`, the order of its entries (`orderedBy`), the `entry` references, and why it is empty (`emptyReason`).

### Building the JSON, step by step

The examples below go from the smallest valid Composition to one with sections. Each one validates against this profile. The complete reference instance is the [medical record composition](Composition-example-medical-composition.html).

#### The smallest Composition you should send

A Composition needs a `status`, a `type`, a `date`, an `author` and a `title`:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi"
}
```

`type` must come from the national [medical document types](CodeSystem-composition-type-cs.html), here `emdoc-0010-0003` (patient medical record). That code system is in Uzbek, so a `display` you send must be the Uzbek one and the resource must say `"language": "uz"`; or leave `display` out. `date` changes whenever the document is edited; `author` repeats when several people or systems wrote it.

#### Subject, attester and custodian

A medical record is about a patient, is attested by the clinician responsible for it, and is kept by a health facility:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs",
          "code": "Comp-001-0001",
          "display": "Tibbiy karta"
        }
      ]
    }
  ],
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "attester": [
    {
      "mode": { "coding": [ { "system": "http://hl7.org/fhir/composition-attestation-mode", "code": "legal" } ] },
      "time": "2026-03-05T10:15:00+05:00",
      "party": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "custodian": { "reference": "Organization/tashkent-hospital" }
}
```

`category` takes a code from the national [document categories](CodeSystem-composition-category-cs.html) (medical record / register / form); codes from other systems may sit beside it. `attester.mode` is required whenever an attester is given. The attestation is a statement in the document; the digital signature that gives it legal force is a separate [Provenance](StructureDefinition-uz-core-provenance.html).

#### Adding sections

Each `section` has a `title`, a `code` saying what it contains, a narrative `text`, and `entry` references to the resources behind it. A section with nothing to report keeps its `text` and gives an `emptyReason` instead of entries:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "emdoc-0010-0003" }
    ]
  },
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "section": [
    {
      "title": "Anamnez",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "10164-2" } ] },
      "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bosh og'rig'i, 3 kundan beri.</div>"
      },
      "orderedBy": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-order", "code": "event-date" } ] },
      "entry": [ { "reference": "Condition/example-headache" } ]
    },
    {
      "title": "Allergiyalar",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "48765-2" } ] },
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ma'lum allergiyalar yo'q.</div>"
      },
      "emptyReason": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-empty-reason", "code": "nilknown" } ]
      }
    }
  ]
}
```

A section must have at least one of `text`, `entry` or nested `section`, and `emptyReason` is only allowed when the section has no entries. Section `code`s are usually LOINC document section codes, here 10164-2 (history of present illness) and 48765-2 (allergies). `text.status` is `generated` when the narrative is produced from the entries, `additional` when it says more than they do. `orderedBy` tells the reader how the entries are sorted, here by event date. Section `author` is only needed when it differs from the document author.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
