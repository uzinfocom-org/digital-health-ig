### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

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
{ "resourceType": "Patient", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient" ] }, ... }
```

**Update a patient** (e.g. correct demographics or change the active flag)

```
PUT [base]/Patient/[id]
```

**Other useful searches**

```
GET [base]/Patient?general-practitioner=Practitioner/[id]
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?address-city=22070013
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for all patient identifier system URIs.

### Related

- [Identifier systems](identifiers.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
