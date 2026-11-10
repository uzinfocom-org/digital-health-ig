> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Flag фиксирует предупреждение или уведомление о [пациенте UZ Core](StructureDefinition-uz-core-patient.html), о котором пользователи Платформы цифрового здравоохранения должны знать при работе с этим пациентом. Сейчас код отметки охватывает допуск к донации крови: допущен ли пациент к донации крови или имеет медицинский отвод. Отметка может ссылаться на [посещение](StructureDefinition-uz-core-encounter.html), в ходе которого она создана, и на автора.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Flag должен содержать

Каждый Flag содержит `status`, `code`, указывающий, о чём отметка, и `subject` (пациента) - все три элемента обязательны в базовом FHIR R5.

#### Каждый UZ Core Flag должен поддерживать

- бизнес-`identifier` с его `system`, если исходная система его присваивает;
- `status` отметки (active / inactive / entered-in-error) - он описывает саму отметку, а не то, что она фиксирует, поэтому действующий медицинский отвод - это отметка со статусом `active`;
- `code` - о чём отметка (допуск к донации крови / медицинский отвод);
- `subject` - пациент, к которому относится отметка.

`category` (административная, клиническая и т. д.), `period` действия отметки, [посещение](StructureDefinition-uz-core-encounter.html), в ходе которого она создана, и её `author` ([Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Organization](StructureDefinition-uz-core-organization.html), [Device](StructureDefinition-uz-core-device.html), [Patient](StructureDefinition-uz-core-patient.html) или [RelatedPerson](StructureDefinition-uz-core-relatedperson.html)) необязательны; передавайте их, если они известны.

### Сборка JSON, шаг за шагом

Примеры ниже ведут от минимального решения о донации крови к более ранней отметке пациента о допуске и к сменившему её медицинскому отводу. Каждый пример указывает этот профиль в `meta.profile`.

#### Минимальный Flag для отправки

Минимальный Flag содержит статус, решение о допуске к донации крови и пациента. Код решения берётся из локальной системы кодов допуска доноров крови, поэтому его отображаемое название на узбекском языке, а `language` ресурса равен `uz`:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-nodira" }
}
```

#### Более раннее решение о допуске

Добавьте категорию отметки HL7, период и автора. Коды категорий HL7 сохраняют исходную систему. Эта отметка `inactive`: она перестала действовать, когда был записан отвод ниже, и `period.end` содержит это время. У действующей отметки `period.end` не заполняется:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "inactive",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "admin"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": {
    "start": "2026-10-12T10:00:00+05:00",
    "end": "2026-11-09T09:00:00+05:00"
  },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

#### Медицинский отвод

Для отвода используется код `blood-donation-deferred`; отметка остаётся `active` без `period.end`, пока отвод действует:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "clinical"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-deferred",
      "display": "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

Полные FSH-примеры: [минимальная отметка](Flag-example-donation-minimal-flag.html), [отметка о допуске](Flag-example-donation-eligible-flag.html) и [отметка о медицинском отводе](Flag-example-donation-deferred-flag.html).

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
