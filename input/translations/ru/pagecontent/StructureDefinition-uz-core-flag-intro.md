> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Flag фиксирует решение о допуске к донации для [пациента UZ Core](StructureDefinition-uz-core-patient.html). Отметка может ссылаться на [посещение](StructureDefinition-uz-core-encounter.html) и автора. Активная отметка может означать как допуск, так и медицинский отвод: статус описывает жизненный цикл отметки.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Flag должен содержать

Статус, код решения о допуске и ссылку на пациента. Эти элементы обязательны в базовом FHIR R5.

#### Каждый UZ Core Flag должен поддерживать

- бизнес-идентификатор вместе с его системой, если он присвоен;
- статус отметки;
- решение о допуске к донации;
- пациента, к которому относится решение.

### Сборка JSON, шаг за шагом

Примеры ниже ведут от минимального решения о донации к отметке о допуске с контекстом и к медицинскому отводу. Каждый пример указывает этот профиль в `meta.profile`.

#### Минимальный Flag для отправки

Минимальный Flag содержит статус, решение о допуске к донации и пациента. Код решения берётся из локальной системы кодов допуска доноров, поэтому его отображаемое название на узбекском языке, а `language` ресурса равен `uz`:

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### Решение о допуске с контекстом

Добавьте категорию отметки HL7, период действия, посещение, в ходе которого принято решение, и его автора. Коды категорий HL7 сохраняют исходную систему:

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
      "code": "admin"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": {
    "start": "2026-11-09T09:00:00+05:00",
    "end": "2026-11-09T18:00:00+05:00"
  },
  "encounter": { "reference": "Encounter/example-encounter" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

#### Медицинский отвод

Для отвода используется код `donation-deferred`. Отметка остаётся `active`, пока отвод действует: статус описывает саму отметку, а не разрешение на донацию.

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-deferred",
      "display": "Tibbiy sabablarga ko‘ra donorlikdan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

Полные FSH-примеры: [минимальная отметка](Flag-example-donation-minimal-flag.html), [отметка о допуске](Flag-example-donation-eligible-flag.html) и [отметка о медицинском отводе](Flag-example-donation-deferred-flag.html).

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
