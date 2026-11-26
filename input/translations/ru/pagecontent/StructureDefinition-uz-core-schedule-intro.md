> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Schedule представляет доступность медицинских работников, помещений, оборудования или услуг на горизонте планирования, например расписание кабинета врача общей практики, открытое для онлайн-записи. Расписание указывает, чьё это время, - свой `actor`, например [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), помещение как [UZ Core Location](StructureDefinition-uz-core-location.html), [UZ Core Device](StructureDefinition-uz-core-device.html) или [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Само расписание не содержит времени: каждый интервал, доступный для записи, занятый или заблокированный, - это Slot, который ссылается на расписание через `Slot.schedule`.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Schedule должен содержать

Каждый Schedule содержит хотя бы один `actor` (обязателен в базовом FHIR R5) - того, чью доступность он описывает.

#### Каждый UZ Core Schedule должен поддерживать

- `active` - используется ли расписание (false, если оно больше не используется);
- широкую категорию предлагаемых услуг в `serviceCategory` (например, консультация, диагностика или лаборатория);
- медицинскую специальность `specialty`, необходимую для услуг (например, общая врачебная практика или кардиология);
- название расписания `name`, отображаемое пользователям;
- `actor` - пациент, медицинский работник, роль медицинского работника, команда лечения, родственник, изделие, медицинская услуга или помещение (Location);
- `planningHorizon` - период, на который расписание задаёт доступность;
- текстовый комментарий `comment`.

### Построение JSON шаг за шагом

Примеры ниже идут от минимального расписания к расписанию кабинета врача общей практики. В каждом примере этот профиль указан в `meta.profile`.

#### Минимальное расписание

Наименьший валидный Schedule указывает свой `actor`, здесь - роль медицинского работника:

```json
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "actor": [{ "reference": "PractitionerRole/example-practitionerrole" }]
}
```

#### Расписание кабинета врача общей практики

Расписание, открытое для записи, сообщает пациенту, на что можно записаться: категорию услуг `serviceCategory` из локальной системы кодов категорий услуг для записи и специальность `specialty` из системы кодов специализаций профессий. Оно может содержать несколько `actor` - здесь роль медицинского работника и кабинет. `planningHorizon` задаёт период, который охватывает расписание; интервалы для записи внутри него - это Slot. Отображаемые названия локальных кодов и `name` - на узбекском языке, поэтому в ресурсе `language` равно `uz`:

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

Полный пример FSH: [расписание кабинета врача общей практики](Schedule-example-gp-schedule.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу страницы.
