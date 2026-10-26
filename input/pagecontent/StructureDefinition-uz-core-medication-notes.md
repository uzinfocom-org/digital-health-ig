### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a medication by server id**

```
GET [base]/Medication/[id]
```

**Find a medication before registering (the usual first step)**

```
# by national identifier - any of the five identifier slices
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ
GET [base]/Medication?identifier=https://uzpharminfo.uz/icps|02804001001000000

# by code - INN (substance) or ATC (classification)
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03
```

**Other useful searches**

```
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?expiration-date=le2026-12-31
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?ingredient-code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

**Register a new medication** (only after confirming no match exists)

```
POST [base]/Medication
{
  "resourceType": "Medication",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  "identifier": [ { "use": "official", "system": "https://uzpharminfo.uz/registration_number", "value": "..." } ],
  "code": { ... },
  "status": "active",
  ...
}
```

**Update an existing medication** (e.g. set `status` to `inactive` when the registration lapses, or record a new batch)

```
PUT [base]/Medication/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Medication",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and the [identifier slices](#identifier-slices) table above for the medication identifier system URIs.

### Related

- [e-Prescription and dispensing](workflow-prescription.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
