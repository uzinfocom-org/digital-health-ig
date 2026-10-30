### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a device by server id**

```
GET [base]/Device/[id]
```

**Find a device before registering it (the usual first step)**

```
GET [base]/Device?serial-number=SN-2023-001456
GET [base]/Device?type=http://snomed.info/sct%7C54953005&organization=Organization/[id]
```

**Other useful searches**

```
GET [base]/Device?organization=Organization/[id]&status=active
GET [base]/Device?location=Location/[id]
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?device-name=SOMATOM
GET [base]/Device?lot-number=CU-2025-0412
GET [base]/Device?expiration-date=le2026-12-31
```

**Register a new device** (only after confirming no match exists)

```
POST [base]/Device
{
  "resourceType": "Device",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  "status": "active",
  "type": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "54953005" } ] } ],
  "serialNumber": "...",
  ...
}
```

**Update an existing device** (e.g. set `availabilityStatus` to `damaged`, or `status` to `inactive` when the device is withdrawn)

```
PUT [base]/Device/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Device",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
