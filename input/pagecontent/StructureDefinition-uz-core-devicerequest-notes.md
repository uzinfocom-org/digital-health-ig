### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a device request by server id, and its earlier versions**

```
GET [base]/DeviceRequest/[id]
GET [base]/DeviceRequest/[id]/_history
```

**Search**

```
GET [base]/DeviceRequest?_lastUpdated=ge2026-11-01
GET [base]/DeviceRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest
GET [base]/DeviceRequest?_id=[id1],[id2]
```

**Create a device request**

```
POST [base]/DeviceRequest
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  ...
}
```

**Update an existing device request** (e.g. set `status` to `completed` once the device is provided)

```
PUT [base]/DeviceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "completed",
  ...
}
```

DeviceRequest is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the search parameters it will support are defined in the [base FHIR specification](https://hl7.org/fhir/R5/devicerequest.html#search).

### Related

- [UZ Core Device](StructureDefinition-uz-core-device.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Device request parameter](ValueSet-device-request-parameter-code-vs.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
