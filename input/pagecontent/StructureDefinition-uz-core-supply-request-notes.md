### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a request by server id, and its earlier versions**

```
GET [base]/SupplyRequest/[id]
GET [base]/SupplyRequest/[id]/_history
```

**Search**

```
GET [base]/SupplyRequest?_lastUpdated=ge2026-10-01
GET [base]/SupplyRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request
GET [base]/SupplyRequest?_id=[id1],[id2]
```

**Create a request**

```
POST [base]/SupplyRequest
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "..." } ],
  "status": "active",
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006" } ] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "supplier": [ { "reference": "Organization/[id]" } ],
  ...
}
```

**Update an existing request** (e.g. set `status` to `completed` once the supplies are delivered, or `cancelled` when they are no longer needed)

```
PUT [base]/SupplyRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
