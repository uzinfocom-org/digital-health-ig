### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a system from a value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/BiologicallyDerivedProductDispense/[id]
```

**Find dispenses**

```
GET [base]/BiologicallyDerivedProductDispense?_lastUpdated=ge2026-01-01
GET [base]/BiologicallyDerivedProductDispense?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense
GET [base]/BiologicallyDerivedProductDispense?_id=[id1],[id2]
```

**Record a dispense**

```
POST [base]/BiologicallyDerivedProductDispense
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense" ] },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/[id]" },
  "patient": { "reference": "Patient/[id]" },
  "performer": [ { "actor": { "reference": "Practitioner/[id]" } } ],
  "whenHandedOver": "2026-11-09T10:30:00+05:00"
}
```

**Update** (for example, to set `status` to `returned` when the unit comes back) - PUT the full resource with the new values:

```
PUT [base]/BiologicallyDerivedProductDispense/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

BiologicallyDerivedProductDispense is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above use standard FHIR R5 search parameters.

### Related

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
