UZ Core Schedule represents the availability of practitioners, rooms, devices or services over a planning horizon, such as the schedule of a general practitioner's office offered for online booking. The schedule says whose time it is - its `actor`, for example a [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), a room as a [UZ Core Location](StructureDefinition-uz-core-location.html), a [UZ Core Device](StructureDefinition-uz-core-device.html) or a [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). The schedule itself holds no times: each period that can be booked, or is busy or blocked, is a Slot that points to the schedule through `Slot.schedule`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Schedule Must Have

Every Schedule must carry at least one `actor` (mandatory in base FHIR R5) - whose availability it holds.

#### Each UZ Core Schedule Must Support

- `active` - whether the schedule is in use (false when it is no longer used);
- the broad category of the services offered in `serviceCategory` (for example, consultation, diagnostics or laboratory);
- the medical `specialty` needed for the services (for example, general medical practice or cardiology);
- the `name` of the schedule shown to users;
- the `actor` - a patient, practitioner, practitioner role, care team, related person, device, healthcare service or room (Location);
- the `planningHorizon` - the period the schedule gives availability for;
- a free-text `comment`.

### Building the JSON, step by step

The examples below go from a minimal schedule to the schedule of a general practitioner's office. Each example names this profile in `meta.profile`.

#### A minimal schedule

The smallest valid Schedule names its `actor`, here a practitioner role:

```json
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "actor": [{ "reference": "PractitionerRole/example-practitionerrole" }]
}
```

#### The schedule of a general practitioner's office

A schedule offered for booking tells a patient what can be booked in it: the `serviceCategory` from the local appointment service category code system and the `specialty` from the profession specializations code system. It can hold more than one `actor` - here the practitioner role and the room. `planningHorizon` gives the period the schedule covers; the bookable periods within it are Slots. The displays of the local codes and the `name` are in Uzbek, so the resource sets `language` to `uz`:

```json
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "language": "uz",
  "active": true,
  "serviceCategory": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs",
      "code": "270",
      "display": "Konsultatsiya"
    }]
  }],
  "specialty": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs",
      "code": "408443003",
      "display": "Umumiy tibbiy amaliyot"
    }]
  }],
  "name": "Umumiy amaliyot kabineti jadvali",
  "actor": [
    { "reference": "PractitionerRole/example-practitionerrole" },
    { "reference": "Location/example-location" }
  ],
  "planningHorizon": {
    "start": "2026-11-02T08:00:00+05:00",
    "end": "2026-11-02T18:00:00+05:00"
  },
  "comment": "Oldindan yozilish bo'yicha qabul"
}
```

The complete FSH example is the [general practitioner's office schedule](Schedule-example-gp-schedule.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
