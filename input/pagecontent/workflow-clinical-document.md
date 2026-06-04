This workflow shows how a finalized, legally-significant clinical document - a discharge summary, an extract from the medical record, a signed report - is assembled and signed. The discrete resources of a visit ([Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html), [Procedure](StructureDefinition-uz-core-procedure.html)) are the *record*; a document is a *snapshot* of some of them, fixed in time and signed.

> Profile status: the Composition profile and the national document-type catalogue are in development. This page describes the intended modelling so systems can build against it now; until the Composition profile publishes, use the base FHIR R5 resource with `meta.profile` omitted. [Provenance](StructureDefinition-uz-core-provenance.html) and the clinical resources referenced in the body are profiled.

Actors: the document author (a clinician, or a third-party MIS); the national signing service (MyID or E-imzo/EDS); the platform (DHP); the patient who later reads it.

<div>{% include clinical-document-sequence.svg %}</div><br clear="all"/>

### 1. Decide: document or discrete resources?

Store ongoing clinical facts as discrete resources - that is what the [other workflows](workflows.html) produce. Assemble a document only when you need a finalized, legally-significant artifact that must be reproduced exactly as signed. A document never replaces the discrete resources; it references them. See [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

### 2. Assemble the document Bundle

A clinical document is a `Bundle` with `type = document`. Its first entry is a `Composition` - the header that indexes the content; the remaining entries are the resources the Composition references. The Composition does not copy clinical data, it points at it.

```
POST [base]/Bundle
{
  "resourceType": "Bundle",
  "type": "document",
  "identifier": { "system": "https://dhp.uz/fhir/document-id", "value": "..." },
  "entry": [
    { "resource": { "resourceType": "Composition", "status": "final",
        "category": [{ "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/document-category-cs", "code": "..." }] }],
        "subject": { "reference": "Patient/[id]" },
        "author": [{ "reference": "PractitionerRole/[id]" }],
        "section": [{ "entry": [{ "reference": "Condition/[id]" }, { "reference": "Observation/[id]" }] }] } },
    { "resource": { "resourceType": "Condition", "id": "[id]" } },
    { "resource": { "resourceType": "Observation", "id": "[id]" } }
  ]
}
```

`Composition.category` carries the national document type (Form 066 discharge card, Form 027 extract, and so on), bound to the document-category code system. The Composition's `subject`, `author` and `custodian` say who the document is about, who wrote it, and who keeps it.

### 3. Identification and versioning

Two identifiers do two different jobs, and keeping them straight is what makes a re-issued document traceable:

| Identifier | Scope | Changes on re-issue? |
|-----------|-------|----------------------|
| `Bundle.identifier` | this exact instance/version of the document | yes - a new value per version |
| `Composition.identifier` | the document's stable content identity | no - constant across versions |

So a corrected discharge summary is a new `Bundle.identifier` carrying the same `Composition.identifier` as the original.

### 4. Sign the document

A clinical document has legal force only once signed. The author sends it to the national signing service, which authenticates the signer (MyID biometric, or E-imzo/EDS), verifies the signer against their [Practitioner](StructureDefinition-uz-core-practitioner.html)/[PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) record, and returns a signature. The signature is recorded as a [Provenance](StructureDefinition-uz-core-provenance.html) referencing the document:

```
POST [base]/Provenance
{
  "resourceType": "Provenance",
  "target": [{ "reference": "Bundle/[document-id]" }],
  "recorded": "2026-05-30T10:00:00Z",
  "agent": [{ "who": { "reference": "PractitionerRole/[id]" } }],
  "signature": [{
    "type": [{ "system": "urn:iso-astm:E1762-95:2013", "code": "1.2.840.10065.1.12.1.1" }],
    "when": "2026-05-30T10:00:00Z",
    "who": { "reference": "PractitionerRole/[id]" },
    "targetFormat": "application/fhir+json",
    "sigFormat": "application/pkcs7-signature",
    "data": "..." }]
}
```

`Provenance.signature.data` carries the signed payload (and may embed the signed PDF). The platform verifies the signature before persisting the document.

> Only signed, legally-authenticated documents of a catalogued type are exposed to the patient. A draft or unsigned Composition is working data, not a document.

### 5. Read it back

The patient (or an authorized clinician) retrieves the finalized document from their records:

```
GET [base]/Bundle?type=document&composition.subject=Patient/[id]
GET [base]/Composition?subject=Patient/[id]&category=[document-type]&_sort=-date
```

A read is subject to the patient's [Consent](StructureDefinition-uz-core-consent.html) and is logged to [AuditEvent](StructureDefinition-uz-core-auditevent.html), like every access.

### Related

- Profiles: [Provenance](StructureDefinition-uz-core-provenance.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Procedure](StructureDefinition-uz-core-procedure.html)
- [Workflows overview](workflows.html) &middot; [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset)
