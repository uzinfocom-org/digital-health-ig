> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Immunization PlanDefinition содержит национальный календарь иммунизации Узбекистана, выраженный в виде вычислимой логики - каждую рекомендованную дозу, её сроки, минимальные интервалы между дозами и правила соответствия, которые определяют, к кому она применяется. Это ресурс, который считывает механизм рекомендаций для построения [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) каждого пациента. Для данной области применения или юрисдикции одновременно может быть активна только одна версия календаря.

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый Must Support элемент, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемое резюме; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Immunization PlanDefinition должен иметь

Каждый PlanDefinition должен содержать url (канонический идентификатор данного календаря), машиночитаемое name, status (draft, active, retired, unknown), унаследованный как обязательный от базового ресурса, и description того, что охватывает календарь.

#### Каждый UZ Core Immunization PlanDefinition должен поддерживать



- идентификатор, версию и алгоритм версионирования, человекочитаемый заголовок и статус (draft, active, retired);
- субъекта, к которому применяется календарь (кодированное понятие или ссылку);
- дату, издателя, контекст использования, дату утверждения и период действия;
- действия, составляющие календарь, каждое с linkId, title, description и code;
- для каждого действия: условие (соответствие - его вид и FHIRPath-выражение), связанное действие (целевое действие, отношение и смещение в виде длительности или диапазона для минимальных интервалов), сроки (возраст или расписание), участника (его идентификатор актора и тип) и определение (каноническую ссылку на ActivityDefinition или другое определение, либо uri).

> Календарь должен удовлетворять правилам валидации календаря: отсутствие пропусков в последовательности доз, отсутствие невозможных временных окон и отсутствие двух активных перекрывающихся версий для одной и той же области применения.

### Построение JSON, шаг за шагом

PlanDefinition в основном создаётся один раз и считывается механизмом рекомендаций, поэтому примеры ниже короткие. Они идут от наименьшего экземпляра, который примет сервер, до календаря, несущего свои действия. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - это [пример PlanDefinition](PlanDefinition-example-uz-core-immunization-plan-definition.html).

#### Наименьший PlanDefinition, который вам следует отправлять

`url`, `name` и `description` являются обязательными элементами, а `status` обязателен в базовом ресурсе (draft \| active \| retired \| unknown - required связка). `url` - это канонический идентификатор, на который ссылаются другие ресурсы, поэтому он должен быть стабильным. Каждый UZ Core ресурс также указывает профиль, которому он заявляет о своём соответствии, в `meta.profile`. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "PlanDefinition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition"]
  },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "status": "draft",
  "description": "Example PlanDefinition demonstrating actions and relationships."
}
```

`name` - это машиночитаемое имя (без пробелов); добавьте человекочитаемый `title`, когда он у вас есть. См. [Метаданные](general-guidance.html#metadata) для полей издателя, даты и версии, которые также должен нести опубликованный календарь.

#### Календарь с его действиями

На практике календарь - это список `action`. Каждая доза является одним действием с `linkId`, `title`, `description` и `code`. Добавьте `condition` для соответствия (его `kind` и FHIRPath-`expression`), `participant` (кто выполняет - `actorId` и `type`) и `definitionUri` (или `definitionCanonical`), указывающий на активность, несущую сведения о вакцине. Более поздняя доза использует `relatedAction`, чтобы сослаться обратно на более раннюю по `targetId`, с минимальным интервалом в `offsetDuration`:

```json
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "title": "Example Vaccination Follow-up Plan",
  "status": "draft",
  "date": "2026-08-10",
  "publisher": "DHP Uzbekistan",
  "description": "Example PlanDefinition demonstrating actions and relationships.",
  "approvalDate": "2026-08-01",
  "effectivePeriod": { "start": "2026-08-01", "end": "2027-08-01" },
  "action": [
    {
      "id": "action-1",
      "linkId": "action-1",
      "title": "Initial vaccination",
      "description": "Administer first vaccine dose.",
      "code": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/action-code",
            "code": "recommend-immunization",
            "display": "Recommend an immunization"
          }
        ]
      },
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Patient must be 18 years or older",
            "language": "text/fhirpath",
            "expression": "Patient.birthDate <= today() - 18 years"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    },
    {
      "id": "action-2",
      "linkId": "action-2",
      "title": "Follow-up vaccination",
      "description": "Administer second vaccine dose.",
      "relatedAction": [
        {
          "targetId": "action-1",
          "relationship": "after-end",
          "offsetDuration": {
            "value": 30,
            "unit": "days",
            "system": "http://unitsofmeasure.org",
            "code": "d"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    }
  ]
}
```

`condition.kind`, `relatedAction.relationship` и `participant.type` каждый используют required связку - берите значение из связанного набора значений (представление Snapshot ниже перечисляет каждый из них). `relatedAction.targetId` должен совпадать с `linkId` действия, уже имеющегося в том же календаре.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
