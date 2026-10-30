### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/DeviceUsage/[id]
```

**Find a patient's devices**

```
GET [base]/DeviceUsage?patient=Patient/[id]
GET [base]/DeviceUsage?patient=Patient/[id]&status=active
GET [base]/DeviceUsage?patient=Patient/[id]&device=http://snomed.info/sct%7C69805005
```

`device` matches the coded concept in `device.concept`. DeviceUsage is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above are the standard FHIR R5 DeviceUsage search parameters (`patient`, `status`, `device`, `identifier`).

**Create**

```
POST [base]/DeviceUsage
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "device": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "69805005" } ] } },
  ...
}
```

**Update** (e.g. the patient stops using the device) - PUT the full resource back with `status` set to `completed` or `stopped` and an `end` on `timingPeriod`:

```
PUT [base]/DeviceUsage/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceUsage",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  ...
}
```

A statement recorded by mistake is not deleted: set its `status` to `entered-in-error`.

### Related

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Condition](StructureDefinition-uz-core-condition.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
