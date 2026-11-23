UZ Core Communication records information conveyed to patients, practitioners or organizations, such as a public health alert that patients see in the Patient Portal. There are two kinds of alert: an alert to the patients who live in a risk zone - a [UZ Core Location](StructureDefinition-uz-core-location.html) to which a manager has assigned a level under the national alert regulation - and an alert that a manager sends to the members of an organization employee group, a [UZ Core Group](StructureDefinition-uz-core-group.html). Each recipient is a [UZ Core Patient](StructureDefinition-uz-core-patient.html): every resident of the zone, or every member of the employee group. The alert points to the zone or the employee group it is about, and can give its reason, such as a confirmed [UZ Core Condition](StructureDefinition-uz-core-condition.html) or a sample test result recorded as a [UZ Core Observation](StructureDefinition-uz-core-observation.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Communication Must Have

Every Communication must carry a `status` (mandatory in base FHIR R5), the time it was `sent`, at least one `recipient` and at least one `payload` with its content. An alert to the residents of a zone must also carry its alert level.

#### Each UZ Core Communication Must Support

- the `status` of the communication (for example, completed once it has been sent);
- the kind of public health alert (to the residents of a zone / to an employee group);
- the alert level (I red / II orange / III yellow / IV blue) at the time the alert was sent - it stays the same if the zone level changes later;
- `about` - what the communication is about, for an alert the zone or the employee group;
- the time it was `sent`, from which a patient sees an alert in the Patient Portal;
- the `recipient` - a patient, practitioner or organization; for an alert, each patient who lives in the zone or each member of the employee group;
- the `reason` - a disease code or a reference to a Condition or Observation;
- the content in `payload`, such as the text of an alert.

### Building the JSON, step by step

The examples below go from a minimal communication to an alert to an employee group and an alert to the residents of a zone. Each example names this profile in `meta.profile`.

#### A minimal communication

The smallest valid Communication carries its `status`, the time it was `sent`, a `recipient` and a `payload`. FHIR R5 has no `contentString`: the text goes in `payload.contentCodeableConcept.text`. This one reminds a patient of an appointment:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "sent": "2026-11-18T09:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Ertaga soat 10:00 da shifokor qabuliga yozilgansiz."
    }
  }]
}
```

#### An alert to an employee group

A manager opens an organization employee group and sends its members an alert. Each member is a `recipient`, and `about` points to the group. The kind of alert comes from the local communication category code system, so its display is in Uzbek and the resource sets `language` to `uz`:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002",
      "display": "Tashkilot xodimlari guruhini ogohlantirish"
    }]
  }],
  "about": [{ "reference": "Group/example-employee-group" }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Tashkilotingizda ichak infeksiyasi aniqlandi. Belgilar bo'lsa, shifokorga boring."
    }
  }]
}
```

#### An alert to the residents of a zone

When a manager assigns a level to a zone, the alert goes to the patients who live there. It carries a second `category` with the alert level from the local alert level code system - an alert to the residents of a zone without it is invalid. `about` points to the zone and `reason` gives the reason. Who created the alert is recorded in the audit log, so `sender` is not used:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00001",
      "display": "Hudud aholisini ogohlantirish"
    }]
  }, {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/alert-level-cs",
      "code": "alrtlv-0001-00002",
      "display": "II - To'q sariq"
    }]
  }],
  "about": [{ "reference": "Location/example-mahalla-zone-location" }],
  "sent": "2026-11-18T10:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "reason": [{
    "concept": { "text": "Ichak infeksiyasi tarqalishi" }
  }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Mahallangizda ichak infeksiyasi aniqlandi. Faqat qaynatilgan suv iching."
    }
  }]
}
```

The complete FSH examples are the [employee group alert](Communication-example-employee-group-alert-communication.html) and the [zone residents alert](Communication-example-zone-alert-communication.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
