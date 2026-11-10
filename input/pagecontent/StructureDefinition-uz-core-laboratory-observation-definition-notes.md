### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a definition by server id, and its earlier versions**

```
GET [base]/ObservationDefinition/[id]
GET [base]/ObservationDefinition/[id]/_history
```

**Search**

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
GET [base]/ObservationDefinition?category=laboratory&status=active
GET [base]/ObservationDefinition?method=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs%7Clab-method-6
GET [base]/ObservationDefinition?title=Gemoglobin
GET [base]/ObservationDefinition?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition
```

The last query returns only laboratory definitions, since every one of them declares this profile.

**Create a definition**

```
POST [base]/ObservationDefinition
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "url": "[canonical-url]",
  "status": "draft",
  "useContext": [ { "code": { ... "focus" }, "valueCodeableConcept": { ... "108252007" } } ],
  "code": { "coding": [ { "system": "http://loinc.org", "code": "..." } ] },
  ...
}
```

**Update an existing definition** (e.g. set `status` to `active` once it is reviewed, or `retired` when the test is withdrawn)

```
PUT [base]/ObservationDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ObservationDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "status": "active",
  ...
}
```

Keep the `url` unchanged on update: HealthcareService entries point to the definition by it.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Laboratory order to result](workflow-lab.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
