### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Slot/[id]
```

**Search slots**

```
GET [base]/Slot?schedule=Schedule/[id]&status=free&start=ge2026-11-02&start=lt2026-11-03
GET [base]/Slot?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C394814009&status=free
GET [base]/Slot?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Slot?identifier=[system]%7C[value]
```

The first query lists the free slots of one schedule on one day; the second finds free slots with a general practitioner.

**Create**

```
POST [base]/Slot
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "schedule": { "reference": "Schedule/[id]" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

**Update** (for example, to mark a slot as booked): send the complete resource with `PUT [base]/Slot/[id]`, set `status` to `busy`, and add an `If-Match` header carrying the version you read, so two patients cannot book the same slot at once.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Slot1-36) for the full list of supported search parameters.

### Related

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
