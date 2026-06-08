Cross-cutting rules that apply across all UZ Core profiles. These answer the questions implementers ask most often - what metadata every resource needs, what to do when you have no value for a field, how to encode units, how to bundle resources, and how the platform reports errors.

### Mandatory resource metadata {#metadata}

Every resource exchanged on the platform must carry, in addition to its [clinical content](artifacts.html#structures-resource-profiles):

- `meta.profile` - the canonical URL (with version) of the UZ Core profile the resource claims to conform to. This is how the server knows which rules to validate against.
- `id` - the logical id of the resource on the server. New resources will have one assigned to them by the server.

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

### Missing & suppressed data {#missing-data}

There is a difference between "I have no value" and "there is no value", and FHIR lets you say which:

- Value simply not present - omit the element. Do not send an empty string or a placeholder. This is allowed for any optional (`0..`) element, including Must Support optional elements.
- Mandatory element, but the value is genuinely unknown - you cannot omit a `1..` element, so use the resource's defined "unknown" mechanism: a `data-absent-reason` extension on the element ([example](Patient-example-unidentified-patient.html)), or an "unknown" code where the bound value set provides one (for example a coded element bound to a value set that includes `unknown`).
- Never invent data to satisfy a constraint. A fake birth date or a dummy identifier is worse than a recorded absence.

Some profiles add an explicit `data-absent-reason` slot - for example [UZ Core Patient](StructureDefinition-uz-core-patient.html) allows a `data-absent-reason` extension on the identifier's `value` for the rare case where even an identifier is unavailable.

See [Must Support](must-support.html) for how this interacts with the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> flag.

### Units and quantities

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

### Addresses {#addresses}

Addresses appear on several resources (Patient, Practitioner, Organization, Location). UZ Core supports both Uzbekistan and international addresses.

#### Uzbekistan address

Use **coded values** from the official registries for administrative divisions. The platform validates that region, district, and city match codes from the Digital Population Management (DPM) system:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "UZ",
    "state": "1727",            // Region code from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (e.g., 1727 for Tashkent Region)
    "district": "1727220",      // District code from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (e.g., 1727220 for Bekobod district)
    "city": "17150085",         // Mahalla code from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (citizens' assembly)
    "line": ["Amir Temur ko'chasi"],
    "text": "Yangi Sergeli mahallasi, Amir Temur ko'chasi, 15-uy, 42-xonadon"
  }]
}
```

#### International address

For non-Uzbekistan addresses, administrative divisions are free text without required value sets, allowing flexible representation of foreign address structures:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "US",
    "state": "California",             // Free text
    "district": "Los Angeles County",  // Free text
    "city": "Los Angeles",             // Free text
    "line": ["123 Main Street", "Apt 4B"],
    "postalCode": "90001"
  }]
}
```

### Terminology and multilingual designations {#terminology}

- Use codes from the bound value set according to the [binding strength](how-to-read.html#terminology-bindings).
- Designations (Uzbek / Russian / English display names) are for presentation only - the `code` is what carries meaning. See [FHIR basics](fhir-basics.html#terminology) for how UZ CodeSystems and HL7 terminology supplements provide these multilingual designations.
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

### Bundles: document vs transaction vs searchset

Choose the `Bundle.type` by what you are doing:

| `Bundle.type` | Use it for |
|---------------|-----------|
| **transaction** | Submitting several interdependent resources as one atomic unit (all succeed or all fail) - e.g. a lab result set (`ServiceRequest` + `Specimen` + `Observation` + `DiagnosticReport`). |
| **batch** | Submitting several independent operations together without atomicity. |
| **document** | A finalized, legally-significant clinical document - a `Composition` as the header followed by the referenced clinical resources. Used for discharge summaries, certificates, signed reports. |
| **searchset** | Returned by the server in response to a search. You consume these; you do not create them. |

When several resources are related, transmit them together in a Bundle rather than as separate uncoordinated calls. See the [Workflows](workflows.html) for concrete transaction and document Bundle examples.

### Creating, updating and deleting

- The platform supports the standard REST interactions: `GET` (read/search), `POST` (create), `PUT` (update), `PATCH` (partial update), and `DELETE`. The exact interactions per resource are declared in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).
- Logical delete, not physical delete. Clinical data is not removed by deleting the resource. To retire a record, change its status: set `entered-in-error`, `inactive`, `revoked` or the equivalent for the resource, depending on the case. For example a withdrawn `Goal` becomes `cancelled`/`completed`, a withdrawn `Consent` is set `inactive`, an erroneous clinical record is set `entered-in-error`. The resource and its history remain queryable.
- Concurrency. Updates use optimistic locking. Keep the `ETag` from your last read and send it back as `If-Match` on the update; if someone else changed the resource since you read it, the version no longer matches and the server responds with `412 Precondition Failed` ("Version is mismatch"). Re-read and retry - see [Concurrency](api-access.html#concurrency).
- Idempotency. For workflow and financial operations that must not be duplicated on retry, use conditional create/update so a retried request does not create a second resource.

### Errors {#errors}

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

Common codes you will see: `required`/`value`/`invariant` (the resource failed profile validation), `code-invalid` (a code is not in the bound value set), `forbidden` (authorization/consent denied the request - see access control guidance), and a `412` with code `invalid` (an `If-Match` version clash - see [Concurrency](api-access.html#concurrency)). Read the `diagnostics` and `expression` to find the offending element.

### Where to go next

- [How to read this guide](how-to-read.html) and [Must Support](must-support.html) - the conventions.
- [Workflows](workflows.html) - end-to-end scenarios with real Bundles.
- [Identifier systems](identifiers.html) - identifier system URIs.
