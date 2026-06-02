# General guidance

Cross-cutting rules that apply across all UZ Core profiles. These answer the questions implementers ask most often - what metadata every resource needs, what to do when you have no value for a field, how to encode units, how to bundle resources, and how the platform reports errors.

## Mandatory resource metadata {#metadata}

Every resource exchanged on the platform must carry, in addition to its clinical content:

- **`meta.profile`** - the canonical URL (with version) of the UZ Core profile the resource claims to conform to. This is how the server knows which rules to validate against.
- **`meta.lastUpdated`** - when this version of the resource was last changed.
- **`id`** - the logical id of the resource on the server.
- **Provenance** - the origin and authorship of the data, recorded as a [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) resource referencing the target. Clinically significant records (documents, signed reports) must be accompanied by Provenance; see [Audit & Provenance](general-guidance.html) guidance and the relevant [workflow](workflows.html).

```json
{
  "resourceType": "Observation",
  "id": "abc-123",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"],
    "lastUpdated": "2026-05-30T09:12:00+05:00"
  }
}
```

Content is exchanged as JSON, UTF-8 encoded.

## Missing & suppressed data {#missing-data}

There is a difference between "I have no value" and "there is no value", and FHIR lets you say which:

- **Value simply not present** - omit the element. Do not send an empty string or a placeholder. This is allowed for any optional (`0..`) element, including Must Support optional elements.
- **Mandatory element, value genuinely unknown** - you cannot omit a `1..` element, so use the resource's defined "unknown" mechanism: a `data-absent-reason` extension on the element, or an "unknown" code where the bound value set provides one (for example a coded element bound to a value set that includes `unknown`).
- **Never invent data** to satisfy a constraint. A fake birth date or a dummy identifier is worse than a recorded absence.

Some profiles add an explicit `data-absent-reason` slot - for example [UZ Core Patient](StructureDefinition-uz-core-patient.html) allows a `data-absent-reason` extension on `identifier` for the rare case where even an identifier is unavailable.

See [Must Support](must-support.html) for how this interacts with the **S** flag.

## Units and quantities

Numeric measurements use UCUM (`http://unitsofmeasure.org`) for the unit code:

```json
{
  "valueQuantity": {
    "value": 7.2,
    "unit": "%",
    "system": "http://unitsofmeasure.org",
    "code": "%"
  }
}
```

- Always populate `system` and `code` with the machine-readable UCUM code, not only the human `unit` string.
- If a result is reported with no unit (a dimensionless count, a titre, a ratio), still send `value`; only omit `code`/`system` when there is genuinely no UCUM unit.
- Reference ranges and interpretation flags (normal / high / low / critical) belong on `Observation.referenceRange` and `Observation.interpretation` respectively.

## Terminology and multilingual designations {#terminology}

- Use codes from the bound value set according to the [binding strength](how-to-read.html#terminology-bindings).
- National concepts are defined as UZ CodeSystems authored in Uzbek, with Russian and English **designations** for display. International HL7 terminology is supplemented with Uzbek/Russian translations. Designations are for presentation only - the `code` is what carries meaning.
- Codes can be checked against the platform terminology server with the standard `$validate-code` operation:

```
POST [base]/ValueSet/$validate-code
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "url", "valueUri": "https://dhp.uz/fhir/core/ValueSet/uz-core-diagnosis" },
    { "name": "system", "valueUri": "http://hl7.org/fhir/sid/icd-10" },
    { "name": "code", "valueCode": "E11" } ] }
```

See [Identifier systems](identifiers.html) for identifier (not terminology) systems.

## Bundles: document vs transaction vs searchset

Choose the `Bundle.type` by what you are doing:

| `Bundle.type` | Use it for |
|---------------|-----------|
| **transaction** | Submitting several interdependent resources as one atomic unit (all succeed or all fail) - e.g. a lab result set (`ServiceRequest` + `Specimen` + `Observation` + `DiagnosticReport`). |
| **batch** | Submitting several independent operations together without atomicity. |
| **document** | A finalized, legally-significant clinical document - a `Composition` as the header followed by the referenced clinical resources. Used for discharge summaries, certificates, signed reports. |
| **searchset** | Returned by the server in response to a search. You consume these; you do not create them. |

When several resources are related, transmit them together in a Bundle rather than as separate uncoordinated calls. See the [Workflows](workflows.html) for concrete transaction and document Bundle examples.

## Creating, updating and deleting

- The platform supports the standard REST interactions: `GET` (read/search), `POST` (create), `PUT` (update), `PATCH` (partial update), and `DELETE`. The exact interactions per resource are declared in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).
- **Logical delete, not physical delete.** Clinical data is not removed by deleting the resource. To retire a record, change its status: set `entered-in-error`, `inactive`, `revoked` or the equivalent for the resource, depending on the case. For example a withdrawn `Goal` becomes `cancelled`/`completed`, a withdrawn `Consent` is set `inactive`, an erroneous clinical record is set `entered-in-error`. The resource and its history remain queryable.
- **Concurrency.** Updates use optimistic concurrency. If the resource was changed by someone else since you read it, the server responds with `409 Conflict`; re-read and retry.
- **Idempotency.** For workflow and financial operations that must not be duplicated on retry, use conditional create/update so a retried request does not create a second resource.

## Errors {#errors}

When a request fails - validation, authorization, conflict - the server returns an `OperationOutcome` with a severity, a code and a human-readable diagnostic:

```json
{
  "resourceType": "OperationOutcome",
  "issue": [{
    "severity": "error",
    "code": "required",
    "diagnostics": "Patient.identifier: minimum required = 1, but only found 0",
    "expression": ["Patient.identifier"]
  }]
}
```

Common codes you will see: `required`/`value`/`invariant` (the resource failed profile validation), `code-invalid` (a code is not in the bound value set), `forbidden` (authorization/consent denied the request - see access control guidance), and `conflict` (a concurrency clash). Read the `diagnostics` and `expression` to find the offending element.

## Where to go next

- [How to read this guide](how-to-read.html) and [Must Support](must-support.html) - the conventions.
- [Workflows](workflows.html) - end-to-end scenarios with real Bundles.
- [Identifier systems](identifiers.html) - identifier system URIs.
