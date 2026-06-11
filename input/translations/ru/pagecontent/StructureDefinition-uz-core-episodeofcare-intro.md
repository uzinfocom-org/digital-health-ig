> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core EpisodeOfCare объединяет серию [Encounters](StructureDefinition-uz-core-encounter.html) в один непрерывный случай оказания помощи, управляемый организацией на Платформе цифрового здравоохранения - например, маршрут ведения беременности или программу управления хроническим заболеванием. Он привязан к своему [Patient](StructureDefinition-uz-core-patient.html), принадлежит управляющей [Organization](StructureDefinition-uz-core-organization.html) и охватывает одно или несколько [Conditions](StructureDefinition-uz-core-condition.html). Осознанно решайте, открывать ли новый эпизод или повторно использовать существующий: эпизод острого, излечимого состояния закрывается после выздоровления пациента, тогда как эпизод пожизненного хронического состояния остаётся активным в течение многих лет и может передаваться между организациями.

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны всегда присутствовать (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все из них являются обязательными, но ваша система должна заполнять каждый элемент Must Support при наличии соответствующих данных и обрабатывать его при получении. Это удобочитаемое для человека резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core EpisodeOfCare должен иметь

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы унаследованы от базового ресурса: статус (planned \| active \| onhold \| finished \| cancelled ...) и пациент.

#### Каждый UZ Core EpisodeOfCare должен поддерживать



- идентификатор;
- статус (required binding) и statusHistory (каждый прошлый `status` и его `period`);
- type, классифицирующий эпизод;
- reason, с `use` и `value` (Condition, Procedure, Observation или HealthcareService);
- diagnosis, с его condition (ссылка на Condition) и его use (роль диагноза);
- пациента и managingOrganization, ответственную за координацию помощи;
- общий период;
- referralRequest (ServiceRequest);
- careManager (координирующий практик или роль) и careTeam.

> Один EpisodeOfCare охватывает множество Encounters - связывайте каждый визит обратно с эпизодом через `episodeOfCare` в Encounter, вместо того чтобы открывать новый эпизод на каждый визит.

### Построение JSON, шаг за шагом

Приведённые ниже примеры строятся от реалистичного эпизода к полному случаю оказания помощи. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([профилактический эпизод](EpisodeOfCare-UZCoreEpisodeOfCare-Example.html), [эпизод беременности](EpisodeOfCare-UZCoreEpisodeOfCare-Example02.html)).

#### Реалистичный эпизод

На практике вы отправляете то, что позволяет платформе управлять эпизодом и находить его: бизнес-`identifier`, `type`, классифицирующий эпизод, `managingOrganization`, координирующую помощь, [Patient](StructureDefinition-uz-core-patient.html), которого он касается, и `period`, в течение которого он длится. `careManager` (координирующий практик) - это лицо, к которому следует обращаться по поводу данного случая:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "identifier": [
    {
      "system": "http://dhp.uz/ids/episode-of-care",
      "value": "EOC-2025-0001"
    }
  ],
  "status": "active",
  "type": [
    {
      "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs", "code": "mserv-0001-00001" }],
      "text": "Preventive services"
    }
  ],
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "careManager": { "reference": "Practitioner/example-practitioner" },
  "period": { "start": "2025-08-01" }
}
```

`patient`, `managingOrganization` и `careManager` - это простые типы `Reference`, целевой объект находится прямо в `reference`. Не указывайте `period.end`, пока эпизод ещё открыт; добавляйте его только при закрытии случая.

#### Добавление reason и diagnosis

Клиническое содержание эпизода - это его `reason` (почему оказывается помощь) и его `diagnosis` (рассматриваемые состояния). И `reason.value`, и `diagnosis.condition` являются типами `CodeableReference`, поэтому ссылка находится на один уровень глубже (`{ "reference": { "reference": "..." } }`), чем простые ссылки выше. Каждый `diagnosis.use` фиксирует роль данного диагноза (здесь `DD`, основной диагноз):

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "reason": [
    {
      "use": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-reason-use-cs",
            "code": "mserv-0002-00002"
          }
        ],
        "text": "Preventive visit"
      },
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ],
  "diagnosis": [
    {
      "condition": [ { "reference": { "reference": "Condition/example-headache" } } ],
      "use": {
        "coding": [
          { "system": "http://terminology.hl7.org/CodeSystem/diagnosis-role", "code": "DD" }
        ],
        "text": "Primary diagnosis"
      }
    }
  ]
}
```

`reason.value` может указывать на [Condition](StructureDefinition-uz-core-condition.html), Procedure, Observation или HealthcareService; `diagnosis.condition` должен быть [Condition](StructureDefinition-uz-core-condition.html).

#### Фиксация изменения статуса с течением времени

Длительный эпизод проходит через несколько статусов - он может быть `planned`, затем `active`, затем `finished`. Установите текущее значение в `status`; зафиксируйте каждое предыдущее состояние в `statusHistory`, где каждая запись содержит прошлый `status` и `period`, который он охватывал:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "status": "planned",
  "patient": { "reference": "Patient/example-emma" },
  "statusHistory": [
    {
      "status": "active",
      "period": { "start": "2025-08-16", "end": "2025-09-01" }
    }
  ]
}
```

Каждый `statusHistory.status` берётся из того же набора значений, что и `status`. Используйте это для ведения журнала аудита, когда, например, эпизод хронического заболевания переводится в `onhold` и позже возобновляется.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
