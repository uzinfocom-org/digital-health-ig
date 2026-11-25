UZ Core Slot represents a period of time in a schedule that can be booked for an appointment, or that is already busy or blocked, such as a 30-minute visit to a general practitioner offered for online booking. Each slot belongs to a Schedule, which says whose time it is - for example a [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), a [UZ Core Location](StructureDefinition-uz-core-location.html) or a [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). An Appointment books one or more slots through `Appointment.slot`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Slot Must Have

Every Slot must carry the `schedule` it belongs to, its `status`, and its `start` and `end` (all mandatory in base FHIR R5). The slot must end after it starts.

#### Each UZ Core Slot Must Support

- the broad category of the service that can be booked in `serviceCategory` (for example, consultation, diagnostics or laboratory);
- the medical `specialty` needed for the service (for example, general practice or cardiology);
- the `appointmentType` (routine / walk-in / check-up / follow-up / emergency);
- the `schedule` the slot belongs to;
- the `status` (free / busy / busy-unavailable / busy-tentative / entered-in-error);
- the `start` and `end` of the slot, with the time zone offset;
- `overbooked` - whether more appointments are booked into the slot than it allows;
- a free-text `comment`.

### Building the JSON, step by step

The examples below go from a minimal slot to a free slot open for booking and a slot that has been booked. Each example names this profile in `meta.profile`.

#### A minimal slot

The smallest valid Slot names its `schedule`, its `status` and when it starts and ends. `start` and `end` are `instant`s, so they always carry seconds and a time zone offset, `+05:00` in Uzbekistan:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

#### A free slot open for booking

A slot offered for booking tells a patient what can be booked in it: the `serviceCategory` from the local appointment service category code system, the `specialty` from the profession specializations code system and the HL7 v2 `appointmentType`. The displays of the local codes are in Uzbek, so the resource sets `language` to `uz`:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "language": "uz",
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
      "code": "394814009",
      "display": "Umumiy amaliyot"
    }]
  }],
  "appointmentType": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code": "ROUTINE"
    }]
  }],
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

#### A booked slot

Once an appointment is booked into the slot, its `status` becomes `busy`. `overbooked` says whether the slot holds more appointments than it allows, and `comment` carries a note about the slot:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "language": "uz",
  "serviceCategory": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs",
      "code": "270",
      "display": "Konsultatsiya"
    }]
  }],
  "appointmentType": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code": "FOLLOWUP"
    }]
  }],
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "busy",
  "start": "2026-11-02T09:30:00+05:00",
  "end": "2026-11-02T10:00:00+05:00",
  "overbooked": false,
  "comment": "Oldindan yozilish bo'yicha qabul"
}
```

The complete FSH examples are the [free slot](Slot-example-slot-free.html) and the [booked slot](Slot-example-slot-busy.html), both in the [general practitioner's schedule](Schedule-example-schedule.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
