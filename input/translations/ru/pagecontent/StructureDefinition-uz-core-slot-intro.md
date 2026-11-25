> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Slot представляет интервал времени в расписании, доступный для записи на приём либо уже занятый или заблокированный, например 30-минутный приём у врача общей практики, открытый для онлайн-записи. Каждый слот принадлежит расписанию (Schedule), которое указывает, чьё это время, - например [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [UZ Core Location](StructureDefinition-uz-core-location.html) или [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Запись на приём (Appointment) занимает один или несколько слотов через `Appointment.slot`.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Slot должен содержать

Каждый Slot содержит расписание `schedule`, к которому он относится, `status`, а также `start` и `end` (все обязательны в базовом FHIR R5). Слот должен заканчиваться позже, чем начинается.

#### Каждый UZ Core Slot должен поддерживать

- широкую категорию услуги, на которую можно записаться, в `serviceCategory` (например, консультация, диагностика или лаборатория);
- медицинскую специальность `specialty`, необходимую для услуги (например, общая практика или кардиология);
- тип приёма `appointmentType` (плановый / без предварительной записи / профилактический осмотр / повторный / экстренный);
- расписание `schedule`, к которому относится слот;
- `status` (free / busy / busy-unavailable / busy-tentative / entered-in-error);
- начало `start` и окончание `end` слота с часовым смещением;
- `overbooked` - записано ли в слот больше приёмов, чем он допускает;
- текстовый комментарий `comment`.

### Построение JSON шаг за шагом

Примеры ниже идут от минимального слота к свободному слоту, открытому для записи, и к занятому слоту. В каждом примере этот профиль указан в `meta.profile`.

#### Минимальный слот

Наименьший валидный Slot указывает расписание `schedule`, `status`, а также время начала и окончания. `start` и `end` имеют тип `instant`, поэтому всегда содержат секунды и часовое смещение, в Узбекистане `+05:00`:

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

#### Свободный слот, открытый для записи

Слот, предлагаемый для записи, сообщает пациенту, на что можно записаться: категорию услуги `serviceCategory` из локальной системы кодов категорий услуг для записи, специальность `specialty` из системы кодов специализаций профессий и тип приёма HL7 v2 `appointmentType`. Отображаемые названия локальных кодов - на узбекском языке, поэтому в ресурсе `language` равно `uz`:

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

#### Занятый слот

Когда в слот записан приём, его `status` становится `busy`. `overbooked` показывает, записано ли в слот больше приёмов, чем он допускает, а `comment` содержит примечание к слоту:

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

Полные примеры FSH: [свободный слот](Slot-example-slot-free.html) и [занятый слот](Slot-example-slot-busy.html), оба в [расписании врача общей практики](Schedule-example-schedule.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу страницы.
