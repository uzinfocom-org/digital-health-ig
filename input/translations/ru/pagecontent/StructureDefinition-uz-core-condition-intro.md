UZ Core Condition содержит сведения о диагнозе, проблеме или другом клиническом состоянии пациента на Цифровой платформе здравоохранения (DHP, Digital Health Platform). Для кодирования клинических состояний используются ICD-10 или SNOMED CT; применение ICD-11 запланировано. Condition связывается с [Patient](StructureDefinition-uz-core-patient.html) и с посещением, в рамках которого он был зарегистрирован. [Encounter](StructureDefinition-uz-core-encounter.html), в свою очередь, может указывать на Condition как на один из диагнозов; соответствующий код диагноза используется при формировании отчётности.

### Обязательные элементы данных и элементы Must Support

Приведённые ниже элементы должны либо всегда присутствовать (mandatory), либо поддерживаться при наличии данных ([Must Support](must-support.html)). Не все из них являются обязательными, однако система должна заполнять каждый элемент Must Support, если соответствующие данные имеются, и обрабатывать его при получении. Это человекочитаемое резюме; точные кардинальности, типы и терминологические привязки приведены ниже в [формальных представлениях](#profile).

#### Что должен содержать каждый UZ Core Condition (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы унаследованы от базового ресурса: клинический статус (1..1) и `subject` - пациент, к которому относится клиническое состояние.

#### Что должен поддерживать каждый UZ Core Condition (Must Support)



- клинический статус (active, recurrence, remission, resolved и другие), связанный с ValueSet клинических статусов DHP;
- статус подтверждения (provisional, confirmed, refuted, entered-in-error и другие);
- степень тяжести (предпочтительная привязка; если `code` соответствует концепту SNOMED Disability, классификация инвалидности обязательна);
- `code`, идентифицирующий само клиническое состояние (ICD-10 или SNOMED CT; предпочтительная привязка к ValueSet состояний DHP);
- extension `diagnosisType` - например, основной диагноз или диагноз направившей организации (0..1);
- анатомическую локализацию в `bodySite`;
- `subject` и Encounter, в рамках которого клиническое состояние было зарегистрировано;
- время начала `onset[x]`, время прекращения или разрешения `abatement[x]`, а также `recordedDate`;
- `participant` (0..*) - участника, указавшего клиническое состояние, и его функцию;
- текстовые примечания.

> `verificationStatus` не является обязательным, однако вместе с обязательным `clinicalStatus` определяет, будет ли состояние отображаться в последующих представлениях как активная подтверждённая проблема. Если данные известны, следует заполнять оба элемента.

### Пошаговое формирование JSON

В примерах ниже показан переход от минимального экземпляра, принимаемого сервером, к полному кодированному диагнозу. Скопируйте подходящий пример и адаптируйте его: все приведённые значения проходят валидацию по этому профилю. Полные эталонные экземпляры доступны по ссылкам в нижней части страницы ([головная боль](Condition-example-headache.html), [онкологическое заболевание](Condition-example-cancer.html), [инвалидность](Condition-example-disability.html)).

#### Минимальный Condition, который следует отправлять

Обязательные элементы Condition - `subject` ([Patient](StructureDefinition-uz-core-patient.html), к которому относится состояние) и `clinicalStatus` (оба имеют кардинальность 1..1). Condition имеет практический смысл только при наличии `code`, указывающего, какое именно состояние зарегистрировано. Каждый ресурс UZ Core также должен указывать в `meta.profile` профиль, которому он заявляет соответствие, чтобы сервер знал, по каким правилам выполнять валидацию. `code` связан с ValueSet состояний DHP (ICD-10 или SNOMED CT; preferred), `clinicalStatus` имеет тип `CodeableConcept` и связан с ValueSet клинических статусов DHP, а `subject` представляет собой обычный `Reference` на Patient. Приведённого набора уже достаточно для прохождения валидации:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" }
}
```

В настоящее время используются системы кодирования ICD-10 и SNOMED CT; поддержка ICD-11 запланирована. Рекомендации по выбору системы приведены в разделе [Терминология](general-guidance.html#terminology).

#### Реалистичный пример диагноза

На практике передаётся клинический контекст, поддержку которого ожидает платформа: `clinicalStatus` и `verificationStatus` (вместе они определяют, будет ли состояние отображаться как активная подтверждённая проблема), дата начала (`onsetDateTime`) и дата регистрации (`recordedDate`). Свободный текст в `note` содержит клиническое описание специалиста:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" },
  "onsetDateTime": "2025-07-25",
  "recordedDate": "2025-07-29",
  "note": [
    { "text": "Patient reported a mild migraine lasting two days; advised rest, hydration, and analgesia." }
  ]
}
```

`clinicalStatus` (active, recurrence, remission, resolved и другие) и `verificationStatus` (provisional, confirmed, refuted, entered-in-error и другие) связаны с соответствующими ValueSet DHP. Значения следует выбирать из этих привязок; полный перечень приведён ниже в представлении Snapshot.

#### Добавление степени тяжести, анатомической локализации, типа диагноза и участника, указавшего состояние

Более полный ресурс включает элементы Must Support, классифицирующие Condition и указывающие источник сведений: `severity` (SNOMED, preferred), `bodySite` (SNOMED), extension `diagnosisType` (основной диагноз, диагноз направившей организации и другие) и `participant`, указывающий, кто зафиксировал состояние. `participant.actor` представляет собой обычный `Reference` на [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), Patient, RelatedPerson или Device:

```json
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs",
            "code": "gencl-0001-00003",
            "display": "Main diagnosis"
          }
        ]
      }
    }
  ],
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active",
        "display": "Active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed",
        "display": "Confirmed"
      }
    ]
  },
  "severity": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "255604002", "display": "Mild" } ]
  },
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "254837009",
        "display": "Malignant neoplasm of breast"
      }
    ]
  },
  "bodySite": [
    {
      "coding": [
        { "system": "http://snomed.info/sct", "code": "76752008", "display": "Breast structure" }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-emma" },
  "onsetDateTime": "2025-08-15",
  "recordedDate": "2025-09-01",
  "participant": [
    {
      "actor": { "reference": "Practitioner/example-practitioner" },
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code": "author",
            "display": "Author"
          }
        ]
      }
    }
  ]
}
```

Extension `diagnosisType` содержит собственный URL (`https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type`) и кодированное значение из системы DHP `diagnosis-type-cs`. `bodySite` представляет собой список `CodeableConcept`. `participant` имеет кардинальность 0..*: каждый actor и его `function`.

#### Классификация инвалидности

Если `code` соответствует концепту SNOMED *Disability* (`21134002`), профиль требует, чтобы значение `severity` выбиралось из ValueSet инвалидности DHP; обычная шкала тяжести SNOMED в этом случае не применяется. В `severity` необходимо передать группу инвалидности:

```json
{
  "resourceType": "Condition",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "21134002", "display": "Disability" }
    ]
  },
  "severity": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/disability-cs",
        "code": "regis0011.00001",
        "display": "I guruh"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "onsetDateTime": "2020-03-10",
  "recordedDate": "2025-09-17"
}
```

Полный экземпляр приведён в [примере инвалидности](Condition-example-disability.html). Для любого другого клинического состояния `severity` остаётся связанным с предпочтительной шкалой SNOMED (например, Mild), как показано выше.

Примеры вызовов API и образец полезной нагрузки приведены в разделе [Быстрый старт](#quick-start) в нижней части этой страницы.
