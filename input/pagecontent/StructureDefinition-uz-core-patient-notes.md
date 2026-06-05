### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a patient by server id**

```
GET [base]/Patient/[id]
```

**Find a patient before registering (the usual first step)**

```
# by national identifier (PINFL) - the reliable match
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033

# by name + birth date when no identifier is to hand
GET [base]/Patient?family=Usmanov&birthdate=1994-01-27

# by name and gender
GET [base]/Patient?name=Salim&gender=male
```

**Register a new patient** (only after confirming no match exists)

```
POST [base]/Patient
{
  "resourceType": "Patient",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient" ] },
  ...
}
```

**Update a patient** (e.g. correct demographics or change the active flag)

```
PUT [base]/Patient/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

**Other useful searches**

```
GET [base]/Patient?general-practitioner=Practitioner/[id]
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?address-city=22070013
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for all patient identifier system URIs.

### Attaching to a managing organization

A patient is attached to a primary healthcare organization (polyclinic) that serves as their main point of care. This is recorded with two elements:

1. `Patient.managingOrganization` - a reference to the [UZ Core Organization](StructureDefinition-uz-core-organization.html) the patient is attached to.
2. `managingOrganizationAttachment` extension - the date the patient was attached.

A patient can change their managing organization only once per year; the attachment date is used to enforce this.

```jsonc
{
  "resourceType": "Patient",
  "extension": [{
    "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
    "valueDate": "2024-03-15"    // Date when the patient was attached
  }],
  "managingOrganization": {
    "reference": "Organization/example-organization"
  }
  // ... other patient data
}
```

When updating a patient's managing organization:

1. Check the existing `managingOrganizationAttachment` date.
2. Verify at least one year has passed since the last attachment.
3. Update both `managingOrganization` and the extension date together.

### Related

- [Identifier systems](identifiers.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
