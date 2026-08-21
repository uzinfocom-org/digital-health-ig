UZ Core EpisodeOfCare объединяет несколько [Encounter](StructureDefinition-uz-core-encounter.html) в один продолжительный клинический случай, ведение которого осуществляется медицинской организацией на DHP (Digital Health Platform - Цифровой платформе здравоохранения), например в рамках ведения беременности или программы ведения хронического заболевания. EpisodeOfCare связан с [Patient](StructureDefinition-uz-core-patient.html), за его ведение отвечает соответствующая [Organization](StructureDefinition-uz-core-organization.html), и он охватывает одно или несколько [Condition](StructureDefinition-uz-core-condition.html). Решение о создании нового EpisodeOfCare или повторном использовании существующего должно приниматься осознанно: EpisodeOfCare для острого излечимого состояния закрывается после выздоровления пациента, тогда как EpisodeOfCare для хронического состояния, требующего пожизненного наблюдения, может оставаться активным в течение многих лет и передаваться между организациями.

### Обязательные элементы и элементы Must Support

Перечисленные ниже элементы должны либо всегда присутствовать (mandatory), либо поддерживаться при наличии соответствующих данных ([Must Support](must-support.html)). Не все они обязательны, однако система должна заполнять каждый элемент Must Support, если располагает соответствующими данными, и корректно обрабатывать его при получении. Ниже приведено человекочитаемое описание; точные кардинальности, типы и терминологические привязки указаны в [формальных представлениях](#profile) ниже.

#### Обязательные элементы UZ Core EpisodeOfCare (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы унаследованы от базового ресурса: status (planned \| active \| onhold \| finished \| cancelled ...) и patient.

#### Элементы Must Support для UZ Core EpisodeOfCare



- identifier;
- status (обязательная привязка) и statusHistory (каждый предыдущий `status` и соответствующий `period`);
- type, классифицирующий EpisodeOfCare;
- reason с `use` и `value` (Condition, Procedure, Observation или HealthcareService);
- diagnosis с condition (reference на Condition) и use (роль диагноза);
- patient и managingOrganization, ответственную за координацию оказания помощи;
- общий period;
- referralRequest (ServiceRequest);
- careManager (координирующий Practitioner или PractitionerRole) и careTeam.

> Один EpisodeOfCare может объединять несколько Encounter - каждый визит необходимо связать с соответствующим EpisodeOfCare через элемент `Encounter.episodeOfCare` вместо создания отдельного EpisodeOfCare для каждого визита.

### Пошаговое формирование JSON

В приведённых ниже примерах ресурс последовательно расширяется от реалистичного EpisodeOfCare до полного клинического случая. Скопируйте подходящий вариант и адаптируйте его - все приведённые значения проходят валидацию по этому профилю. Полные эталонные экземпляры доступны по ссылкам в нижней части страницы ([профилактический EpisodeOfCare](EpisodeOfCare-UZCoreEpisodeOfCare-Example.html), [EpisodeOfCare для ведения беременности](EpisodeOfCare-UZCoreEpisodeOfCare-Example02.html)).

#### Реалистичный пример EpisodeOfCare

На практике передаются данные, позволяющие платформе вести и находить EpisodeOfCare: бизнес-`identifier`, `type` для классификации EpisodeOfCare, `managingOrganization` для координации оказания помощи, [Patient](StructureDefinition-uz-core-patient.html), к которому относится EpisodeOfCare, и `period` его действия. Элемент `careManager` (координирующий специалист) указывает специалиста, ответственного за координацию медицинской помощи в рамках данного клинического случая:

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

`patient`, `managingOrganization` и `careManager` имеют обычный тип `Reference` - целевой ресурс указывается непосредственно в `reference`. Пока EpisodeOfCare остаётся открытым, `period.end` не указывается; добавьте его только при завершении клинического случая.

#### Добавление причины и диагноза

Клиническое содержание EpisodeOfCare определяется причиной оказания помощи (`reason`) и диагнозами (`diagnosis`), в отношении которых оказывается медицинская помощь. `reason.value` и `diagnosis.condition` имеют тип `CodeableReference`, поэтому reference располагается на один уровень вложенности глубже (`{ "reference": { "reference": "..." } }`) по сравнению с обычными Reference выше. Каждый `diagnosis.use` фиксирует роль соответствующего диагноза (здесь `DD`, основной диагноз):

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

`reason.value` может содержать reference на [Condition](StructureDefinition-uz-core-condition.html), Procedure, Observation или HealthcareService; `diagnosis.condition` должен содержать [Condition](StructureDefinition-uz-core-condition.html).

#### Фиксация изменений статуса во времени

Продолжительный EpisodeOfCare может последовательно менять несколько статусов: сначала `planned`, затем `active`, затем `finished`. Текущее значение указывается в `status`; каждый предыдущий статус фиксируется в `statusHistory`, где для каждой записи указываются предыдущий `status` и соответствующий `period`:

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

Каждый `statusHistory.status` выбирается из того же ValueSet, что и `status`. Используйте это для сохранения истории изменений статуса, например когда EpisodeOfCare для хронического заболевания переводится в `onhold` и затем возобновляется.

Примеры API-запросов и пример payload приведены в разделе [Быстрый старт](#quick-start) в нижней части страницы.
