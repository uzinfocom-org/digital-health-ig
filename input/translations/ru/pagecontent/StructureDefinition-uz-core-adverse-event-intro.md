> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core AdverseEvent фиксирует нежелательное явление, такое как реакция после иммунизации, на Платформе цифрового здравоохранения. Он ссылается на предполагаемую сущность, которая могла его вызвать - для реакции на вакцину это [Immunization](StructureDefinition-uz-core-immunization.html) - и может сопровождаться [Observation](StructureDefinition-uz-core-observation.html) или [Condition](StructureDefinition-uz-core-condition.html), описывающими саму реакцию. Он определяет затронутого [Patient](StructureDefinition-uz-core-patient.html) и [Practitioner](StructureDefinition-uz-core-practitioner.html), который его зарегистрировал. Явление может быть фактическим вредом или предотвращённым инцидентом (near-miss).

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это резюме в удобочитаемом виде; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core AdverseEvent должен содержать (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы унаследованы от базового ресурса: статус записи (1..1), фактичность - фактический вред в сравнении с потенциальным предотвращённым инцидентом (1..1) - и субъект, с которым произошло явление (1..1). На практике вы также всегда будете заполнять предполагаемую сущность (см. Must Support ниже).

#### Каждый UZ Core AdverseEvent должен поддерживать (Must Support)



- идентификатор, статус записи и фактичность (фактический вред в сравнении с потенциальным предотвращённым инцидентом);
- субъект, с которым произошло явление, обращение (encounter) и наступление (дата/время, период или расписание);
- когда явление было обнаружено и дату его регистрации;
- результирующий эффект - [Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html), вызванные явлением, - и местоположение;
- серьёзность и исход;
- регистратора и участника (его функцию и действующее лицо);
- предполагаемую сущность - экземпляр, заподозренный в причинении явления, которым для реакции после иммунизации является [Immunization](StructureDefinition-uz-core-immunization.html);
- примечания.

> Для реакции после иммунизации укажите в предполагаемой сущности ссылку на [Immunization](StructureDefinition-uz-core-immunization.html) и используйте результирующий эффект для привязки Condition или Observation, описывающих реакцию.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который сервер примет, до полной записи о нежелательном явлении. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([фатальная анафилаксия](AdverseEvent-example-fatal-anaphylaxis.html), [предотвращённая медикаментозная ошибка](AdverseEvent-example-averted-medication-error.html)).

#### Наименьший AdverseEvent, который следует отправлять

Базовый ресурс требует `status` записи, `actuality` (был ли это фактический вред или потенциальный предотвращённый инцидент?) и `subject`, с которым это произошло; нежелательное явление имеет смысл только тогда, когда вы также добавляете `suspectEntity`, которая, как предполагается, его вызвала. Обратите внимание, что `status` и `actuality` - это простые коды, а не `CodeableConcept` - отправляйте чистую строку. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет о своём соответствии, в `meta.profile`:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event"] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "suspectEntity": [
    { "instanceReference": { "reference": "Medication/example-prednisone" } }
  ]
}
```

`status` (registered, in-progress, completed ...) и `actuality` (`actual` / `potential`) каждый использует required-связку - значение должно происходить из связанного набора значений. `suspectEntity.instance[x]` - это экземпляр, заподозренный в причинении явления; здесь Medication, но для реакции после иммунизации это [Immunization](StructureDefinition-uz-core-immunization.html), а также это может быть Procedure, Substance, Device или MedicationAdministration. Это простой `Reference`, поэтому `instanceReference` содержит `{ "reference": "Type/id" }` напрямую.

#### Реалистичное фактическое нежелательное явление

Для реального явления, которое достигло пациента, заполните, когда оно произошло (`occurrenceDateTime`), когда оно было обнаружено (`detected`), дату регистрации (`recordedDate`), обращение (`encounter`) и местоположение (`location`), результирующий эффект (`resultingEffect`) ([Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html), вызванные явлением), серьёзность (`seriousness`) и исход (`outcome`), регистратора (`recorder`) и участника (`participant`), который о нём сообщил:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "completed",
  "actuality": "actual",
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:45:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "resultingEffect": [ { "reference": "Condition/example-anaphylaxis" } ],
  "location": { "reference": "Location/example-location" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "outcome": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "405535005",
          "display": "Adverse incident resulting in death"
        }
      ]
    }
  ],
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "participant": [
    {
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "AUT",
            "display": "author (originator)"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-amoxicillin" } } ],
  "note": [
    {
      "text": "Patient developed anaphylaxis shortly after amoxicillin administration and died despite resuscitation efforts."
    }
  ]
}
```

В отличие от `seriousness` и `outcome`, которые являются `CodeableConcept` (здесь `outcome` использует SNOMED CT, а `seriousness` - код-систему серьёзности HL7), `resultingEffect`, `subject`, `encounter`, `location`, `recorder` и `participant.actor` - все простые `References` - `{ "reference": "Type/id" }`, без дополнительной вложенности. `participant.function` несёт информацию о том, почему данное лицо было задействовано (здесь `AUT`, автор, который это зарегистрировал).

#### Когда это предотвращённый инцидент, а не фактический вред

Перехваченное явление, которое так и не достигло пациента, регистрируется тем же способом, но с `actuality`, установленным в `potential`. Отсутствует `resultingEffect` (с пациентом ничего не произошло), а `outcome` опускается; используйте `note`, чтобы объяснить, как оно было перехвачено. `suspectEntity` по-прежнему указывает на то, что причинило бы вред:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:35:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "location": { "reference": "Location/example-location-1" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-prednisone" } } ],
  "note": [
    {
      "text": "Prednisone ordered despite a documented contraindication; pharmacy intercepted it before it reached the patient."
    }
  ]
}
```

Предотвращённый инцидент всё равно стоит регистрировать: `seriousness` отражает, насколько тяжёлым он мог бы быть, а `detected` фиксирует, когда система безопасности его перехватила. См. [Отсутствующие и скрытые данные](general-guidance.html#missing-data) о том, когда следует опускать элемент, а когда помечать его как отсутствующий.

Примеры вызовов API и пример полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
