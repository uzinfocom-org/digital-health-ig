> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Condition фиксирует диагноз, проблему или иное клиническое состояние пациента на Платформе цифрового здравоохранения. Состояния кодируются с помощью ICD-10 или SNOMED CT (планируется ICD-11). Состояние привязано к своему [Пациенту](StructureDefinition-uz-core-patient.html) и к визиту, в рамках которого оно было зафиксировано; [Encounter](StructureDefinition-uz-core-encounter.html), в свою очередь, ссылается обратно на это состояние как на один из своих диагнозов, и именно этот код диагноза попадает в отчётность.

### Обязательные элементы и элементы Must Support

Приведённые ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все из них являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже задают точные кардинальности, типы и привязки к терминологиям.

#### Каждый UZ Core Condition должен иметь

Этот профиль не добавляет собственной обязательной кардинальности. Обязательные элементы наследуются от базового ресурса: клинический статус (1..1) и субъект (пациент, которому принадлежит состояние).

#### Каждый UZ Core Condition должен поддерживать



- клинический статус (active, recurrence, remission, resolved ...), привязанный к набору значений DHP clinical-status;
- статус верификации (provisional, confirmed, refuted, entered-in-error ...);
- тяжесть (preferred-привязка; классификация инвалидности обязательна, когда кодом является концепт SNOMED *Disability*);
- код, идентифицирующий само состояние (ICD-10 или SNOMED CT; preferred-привязка к набору значений DHP condition);
- расширение типа диагноза (diagnosis-type) (например, основной диагноз, диагноз направившего учреждения), 0..1;
- участок тела (body site);
- субъект и визит, в рамках которого состояние было зафиксировано;
- сроки onset[x] и abatement[x], а также recordedDate;
- участника (0..1) - лицо, утвердившее состояние, и его функцию;
- свободнотекстовые примечания.

> `verificationStatus` не является обязательным, но вместе с обязательным `clinicalStatus` он определяет, рассматривают ли нижестоящие представления состояние как активную подтверждённую проблему - заполняйте оба, когда данные известны.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полностью кодированного диагноза. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([головная боль](Condition-example-headache.html), [рак](Condition-example-cancer.html), [инвалидность](Condition-example-disability.html)).

#### Наименьший Condition, который следует отправлять

Обязательными элементами Condition являются `subject` (пациент, которому он принадлежит) и `clinicalStatus` (оба 1..1), а сам Condition полезен только при наличии `code`, указывающего, что это за состояние. Каждый ресурс UZ Core должен также называть в `meta.profile` профиль, которому он заявляет соответствие, чтобы сервер знал, по каким правилам проводить валидацию. `code` привязан к набору значений DHP condition (ICD-10 или SNOMED CT; preferred); `clinicalStatus` - это `CodeableConcept`, привязанный к набору значений DHP clinical-status, а `subject` - это простая `Reference` на [Пациента](StructureDefinition-uz-core-patient.html). Уже этого достаточно для прохождения валидации:

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

ICD-10 и SNOMED CT - это системы кодирования, используемые сегодня (планируется ICD-11). См. [Терминология](general-guidance.html#terminology), какую систему использовать.

#### Реалистичный диагноз

На практике вы отправляете клинический контекст, который платформа ожидает от вас поддерживать: `clinicalStatus` и `verificationStatus` (вместе они определяют, отображается ли состояние как активная подтверждённая проблема), когда оно началось (`onsetDateTime`) и когда было зафиксировано (`recordedDate`). Свободнотекстовое `note` несёт описание врача:

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

`clinicalStatus` (active, recurrence, remission, resolved ...) и `verificationStatus` (provisional, confirmed, refuted, entered-in-error ...) каждый привязан к набору значений DHP - берите значения из этих привязок (представление Snapshot ниже перечисляет их).

#### Добавление тяжести, участка тела, типа диагноза и того, кто утвердил состояние

Более полная запись добавляет элементы Must Support, которые классифицируют и атрибутируют состояние: `severity` (SNOMED, preferred), `bodySite` (SNOMED), расширение `diagnosisType` (основной диагноз, диагноз направившего учреждения ...) и `participant`, называющий того, кто его утвердил. `actor` участника - это простая `Reference` на [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), Patient, RelatedPerson или Device:

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

Расширение `diagnosisType` несёт собственный URL (`https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type`) и кодированное значение из системы DHP `diagnosis-type-cs`. `bodySite` - это список `CodeableConcept`. `participant` имеет кардинальность 0..1 - один actor со своей `function`.

#### Классификация инвалидности

Когда `code` является концептом SNOMED *Disability* (`21134002`), профиль **требует**, чтобы `severity` была взята из набора значений DHP disability - шкала тяжести SNOMED не применяется. Отправляйте группу инвалидности в качестве `severity`:

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

Полный экземпляр - это [пример инвалидности](Condition-example-disability.html). Для любого другого состояния оставляйте `severity` привязанной к предпочитаемой шкале SNOMED (`Mild` и так далее), как показано выше.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
