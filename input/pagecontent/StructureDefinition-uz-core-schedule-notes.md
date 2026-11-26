### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Schedule/[id]
```

**Search schedules**

```
GET [base]/Schedule?actor=PractitionerRole/[id]&active=true
GET [base]/Schedule?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C408443003
GET [base]/Schedule?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Schedule?date=2026-11-02
GET [base]/Schedule?identifier=[system]%7C[value]
```

The first query finds the schedules in use of one practitioner role; the fourth finds the schedules whose planning horizon covers a given day.

**Create**

```
POST [base]/Schedule
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "active": true,
  "actor": [{ "reference": "PractitionerRole/[id]" }],
  "planningHorizon": {
    "start": "2026-11-02T08:00:00+05:00",
    "end": "2026-11-02T18:00:00+05:00"
  }
}
```

**Update** (for example, to stop using a schedule): send the complete resource with `PUT [base]/Schedule/[id]`, set `active` to `false`, and add an `If-Match` header carrying the version you read, so a concurrent change is not overwritten.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Schedule1-35) for the full list of supported search parameters.

### Related

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
