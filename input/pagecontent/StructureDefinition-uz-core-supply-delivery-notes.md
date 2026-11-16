### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a delivery by server id, and its earlier versions**

```
GET [base]/SupplyDelivery/[id]
GET [base]/SupplyDelivery/[id]/_history
```

**Search**

```
GET [base]/SupplyDelivery?_lastUpdated=ge2026-10-01
GET [base]/SupplyDelivery?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery
GET [base]/SupplyDelivery?_id=[id1],[id2]
```

**Record a delivery**

```
POST [base]/SupplyDelivery
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/[id]" }
    }
  ],
  "status": "in-progress",
  "type": { "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ] },
  "suppliedItem": [ ... ],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  ...
}
```

**Update an existing delivery** (e.g. set `status` to `completed` once the items are handed over)

```
PUT [base]/SupplyDelivery/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyDelivery",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#SupplyDelivery1-61) for the full list of supported search parameters.

### Related

- [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
