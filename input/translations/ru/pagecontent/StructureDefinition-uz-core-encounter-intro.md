> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Encounter представляет собой единичное взаимодействие между пациентом и системой здравоохранения - визит - на Платформе цифрового здравоохранения. Это опорная точка пути пациента: [Observations](StructureDefinition-uz-core-observation.html), [Procedures](StructureDefinition-uz-core-procedure.html), [Conditions](StructureDefinition-uz-core-condition.html), MedicationRequests и клинические документы - все они ссылаются на тот Encounter, к которому относятся. Он фиксирует, где состоялся визит, кто его провёл и какие диагнозы были поставлены в его ходе (каждый из которых указывает на [Condition](StructureDefinition-uz-core-condition.html)), и может быть сгруппирован в рамках [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html).

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все из них являются обязательными, но ваша система должна заполнять каждый Must Support элемент, когда располагает соответствующими данными, и обрабатывать его при получении. Это удобочитаемое резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Encounter должен иметь

Единственными обязательными элементами этого профиля являются статус (planned \| in-progress \| completed \| cancelled ...), унаследованный как обязательный от базового ресурса под required связкой, и - когда указано местоположение - ссылка на это местоположение (location.location 1..1), поскольку нельзя указать запись о местоположении, не сообщив, какое именно это место.

#### Каждый UZ Core Encounter должен поддерживать



- идентификатор (0..1);
- статус, класс, приоритет и тип (каждый под required связкой);
- serviceType (со ссылкой на HealthcareService);
- subject (пациента) и subjectStatus (required связка);
- связи episodeOfCare, basedOn, careTeam и partOf;
- организацию serviceProvider;
- записи participant с их actor, type (extensible связка) и period;
- appointment, по которому был запланирован визит;
- reason - с `use` (preferred связка) и `value`, ссылающимся на Condition, DiagnosticReport, Procedure или Observation;
- детали virtualService (телемедицина);
- actualPeriod, plannedStartDate, plannedEndDate и length;
- список diagnosis, каждый со своим condition (ссылка на Condition) и use;
- account для выставления счетов;
- детали admission - origin, admitSource, reAdmission, destination, dischargeDisposition (каждое кодированное значение под required связкой);
- местоположение, где происходит взаимодействие.

> Encounter не может быть установлен в `completed`, если дата окончания его периода раньше даты начала - проверьте `actualPeriod` перед закрытием визита.

### Построение JSON, шаг за шагом

Приведённые ниже примеры выстраивают единичный визит - экстренное стационарное взаимодействие - от минимально необходимого до полной записи о госпитализации. Полный экземпляр - это [пример Encounter](Encounter-example-encounter.html). Скопируйте этап и адаптируйте его; каждое показанное значение проходит валидацию по этому профилю.

#### Минимальный Encounter, который вам следует отправлять

`status` - единственный строго обязательный элемент, но Encounter полезен только при наличии `class` (как произошёл контакт - стационарный, амбулаторный, экстренный) и `subject`, которого он касается. Обратите внимание, что `class` - это **список** `CodeableConcept`:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "class": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP", "display": "Inpatient encounter" }] }
  ],
  "subject": { "reference": "Patient/example-patient" }
}
```

`status`, `class`, `priority`, `type` и `subjectStatus` - каждый использует required связку - значение должно происходить из связанного набора значений (представление Snapshot ниже перечисляет каждый из них).

#### Реалистичный визит

Заполните, когда это произошло (`actualPeriod`), какого рода была услуга (`type`), состояние пациента в её ходе (`subjectStatus`), кто принимал участие (`participant`, чей `actor` ссылается на практикующего специалиста или [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)), и почему (`reason` - указывающий на Condition, DiagnosticReport, Procedure или Observation):

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "completed",
  "class": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "Inpatient encounter"
        }
      ]
    }
  ],
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "Emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs",
          "code": "mserv-0001-00004",
          "display": "Treatment services"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-patient" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00001",
        "display": "Awake"
      }
    ]
  },
  "actualPeriod": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" },
      "period": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs",
              "code": "mserv-0002-00001",
              "display": "Disease"
            }
          ]
        }
      ],
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ]
}
```

#### Диагноз, госпитализация и местоположение

Для госпитализации добавьте список `diagnosis` (каждый `condition` - это `CodeableReference` на [Condition](StructureDefinition-uz-core-condition.html)), детали `admission` (источник госпитализации, признак повторной госпитализации, исход выписки - все под required связками) и где это произошло. Если вы включаете запись `location`, вы должны указать место - `location.location` является обязательным:

```json
{
  "diagnosis": [
    { "condition": [ { "reference": { "reference": "Condition/example-headache" } } ] }
  ],
  "admission": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "psych",
          "display": "From psychiatric hospital"
        }
      ]
    },
    "reAdmission": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0092",
          "code": "R",
          "display": "Re-admission"
        }
      ]
    },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code": "home",
          "display": "Home"
        }
      ]
    }
  },
  "location": [
    { "location": { "reference": "Location/example-location" }, "status": "completed" }
  ]
}
```

Эти ключи встраиваются в тот же ресурс, что и реалистичный визит выше. Чтобы сгруппировать визит в рамках более продолжительного курса лечения, сошлитесь на [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) через `episodeOfCare`.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) в нижней части этой страницы.
