UZ Core PractitionerRole is the join that places a [Practitioner](StructureDefinition-uz-core-practitioner.html) inside an [Organization](StructureDefinition-uz-core-organization.html) - and optionally at a [Location](StructureDefinition-uz-core-location.html) or offering a [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) - with a stated role and specialty. This is the context that clinical resources point to as the performer or requester: it answers "in what capacity, and on whose behalf, did this professional act". Roles and specialties are coded from the Tibtoifa-derived national value sets.

> When a clinical resource records who acted, point it at the PractitionerRole, not the bare [Practitioner](StructureDefinition-uz-core-practitioner.html): the same practitioner may hold several roles, and only the role captures the capacity - and the organization - they acted on behalf of.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core PractitionerRole Must Have

The base FHIR PractitionerRole has no mandatory elements, and this profile does not add any. In practice you will populate the practitioner and organization references together (see Must Support below).

#### Each UZ Core PractitionerRole Must Support



- an identifier for the role;
- the active flag;
- the practitioner reference (who is acting);
- the organization reference (the employer or hosting organization);
- a role code (`code`) - the position/profession, from the national role value set;
- a specialty - the clinical specialization, from the national profession-specialization value set;
- a location reference (where the role is exercised);
- a healthcareService reference (the service the role delivers).

> Role and specialty are sliced to the DHP national code systems, but free text (`code.text`) is allowed where a coded value is not available.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a fully coded role. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([coded role](PractitionerRole-example-practitionerrole.html), [free-text role](PractitionerRole-example-practitionerrole-freetext.html)).

#### The smallest PractitionerRole you should send

The base resource has no mandatory elements and this profile adds none, but a PractitionerRole is only useful once it actually joins someone to somewhere. In practice the minimum you send is the `practitioner` (who is acting) and the `organization` (on whose behalf), both plain references, plus the `active` flag. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" }
}
```

`practitioner` and `organization` are plain `Reference` values - the target sits directly under `reference` as `Type/id`. They point at a [Practitioner](StructureDefinition-uz-core-practitioner.html) and an [Organization](StructureDefinition-uz-core-organization.html) respectively.

#### A realistic, coded role

In practice you state the capacity: the `code` (the position/profession) and the `specialty` (the clinical specialization), and where the role is delivered through `healthcareService`. Both `code` and `specialty` are **lists of `CodeableConcept`** (not CodeableReference), and each is sliced to a national DHP code system - so the `system` URI must match exactly. `healthcareService` is a list of plain references:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
          "code": "2212.14",
          "display": "Vrach ginekolog"
        }
      ]
    }
  ],
  "specialty": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs",
          "code": "394585009",
          "display": "Akusherlik va ginekologiya"
        }
      ]
    }
  ],
  "healthcareService": [ { "reference": "HealthcareService/example-healthcareservice" } ]
}
```

The role `code` is drawn from the national `position-and-profession-cs` system and the `specialty` from `profession-specialization-cs`. These are the two sliced systems on this profile; using any other `system` simply leaves the slice unmatched. See [Terminology](general-guidance.html#terminology) for how the DHP code systems are sourced.

#### Recording where the role is exercised

The role can also point at the [Location](StructureDefinition-uz-core-location.html) where it is carried out. `location` (like `healthcareService`) is a list of plain references; both slot into the same resource as the coded role above:

```json
{
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ],
  "location": [
    { "reference": "Location/example-location" }
  ]
}
```

#### When there is no coded role {#free-text-role}

If the position is not yet in the national value set, do not invent a code - use the free-text `code.text` instead of a `coding`. The role still joins a practitioner to an organization, it just describes the capacity in words (full instance: [free-text role](PractitionerRole-example-practitionerrole-freetext.html)):

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    { "text": "Surgeon at Republican Specialized Scientific Center of Surgery, inpatient care" }
  ],
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ]
}
```

`code.text` carries the human-readable role; you can supply `text` alongside a `coding`, or on its own when no national code applies. See [Missing & suppressed data](general-guidance.html#missing-data) for when to reach for free text over a code.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
