> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ActivityDefinition описывает одно мероприятие в общем виде, независимо от конкретного пациента: дозу вакцины с препаратом, путём введения и дозой или приглашение пациента на скрининг. Это многоразовый шаблон, который указывает, какой запрос создать и что в него включить. [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) строит из таких мероприятий национальный календарь, и каждое действие календаря ссылается на одно из них через `definitionCanonical` или `definitionUri`. Когда мероприятие применяется к пациенту, приложение создаёт запрос, указанный в `kind`, например [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) или [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), а [CarePlan](StructureDefinition-uz-core-careplan.html) может сослаться на определение в `instantiatesCanonical`. Другие ресурсы ссылаются на ActivityDefinition по его каноническому `url`, поэтому прежде чем публиковать новое определение, найдите существующее по `url`. Календарь и его мероприятия в работе показаны в [рабочем процессе иммунизации](workflow-immunization.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core ActivityDefinition должен содержать

Профиль не добавляет обязательных элементов. Базовый ресурс требует `status` (draft / active / retired / unknown). Элемент `dynamicValue`, если он присутствует, должен содержать и `path`, и `expression`.

#### Каждый UZ Core ActivityDefinition должен поддерживать

- канонический `url`, бизнес-идентификатор `identifier`, `version` и алгоритм сравнения версий (`versionAlgorithm[x]`);
- машиночитаемое имя `name` и узбекское название `title` с его русской и каракалпакской формами в виде переводов;
- статус публикации `status`, `date`, `publisher`, `description` и период действия определения (`effectivePeriod`);
- тип субъекта, для которого предназначено мероприятие (`subject[x]`, обычно Patient);
- вид запроса, который создаёт мероприятие (`kind`), и профиль, которому этот запрос должен соответствовать (`profile`);
- что нужно сделать (`code`), намерение (`intent`: proposal / plan / order и другие), срочность (`priority`) и признак того, что мероприятие выполнять нельзя (`doNotPerform`);
- когда оно должно состояться (`timing[x]`);
- кто в нём участвует (`participant`: его `type`, определение или ссылка на вид участника, его `role` и `function`);
- используемый препарат (`product[x]`: код вакцины или ссылка), количество `quantity` и `dosage`;
- `bodySite`;
- что требуется или создаётся: образцы (`specimenRequirement`), наблюдения (`observationRequirement`) и их результаты (`observationResultRequirement`);
- как запрос строится из определения: StructureMap (`transform`) или отдельные значения (`dynamicValue`: путь `path`, который нужно заполнить, и выражение `expression`, которое его вычисляет).

### Типы ресурсов запросов

`kind` указывает ресурс, который создаётся при применении этого определения, например `ServiceRequest` для лабораторного исследования или `ImmunizationRecommendation` для вакцинации. Допускается любой [тип ресурса запроса FHIR R5](ValueSet-request-resource-types-vs.html); ресурсы событий, такие как Observation или QuestionnaireResponse, не допускаются.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего полезного определения к шаблону приглашения на скрининг. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [мероприятие детской вакцинации](ActivityDefinition-example-activity-definition.html).

#### Наименьший ActivityDefinition, который вам следует отправлять

Обязателен только `status`, а каждый ресурс UZ Core указывает свой профиль в `meta.profile`. Определение полезно только с каноническим `url`, на который могут ссылаться другие, именем `name`, видом создаваемого запроса `kind` и кодом мероприятия `code`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "name": "DiabetesScreeningInvitation",
  "status": "draft",
  "kind": "ServiceRequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  }
}
```

После публикации `url` должен оставаться неизменным, потому что на него ссылаются календари и планы помощи. `name` пишется без пробелов. `code` принимает процедуру SNOMED CT или вмешательство ICHI.

#### Доза вакцины

Доза вакцины против гепатита B при рождении в том виде, в каком на неё ссылалось бы действие национального календаря прививок. `kind` - `ImmunizationRecommendation`, `code` - SNOMED CT `33879002` Administration of vaccine to produce active immunity, а вакцина указывается в `productCodeableConcept`:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-hepatitis-b-birth-dose",
  "version": "1.0.0",
  "versionAlgorithmCoding": { "system": "http://hl7.org/fhir/version-algorithm", "code": "semver" },
  "name": "HepatitisBBirthDose",
  "title": "Gepatit B ga qarshi tug'ruqxonada emlash",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Вакцинация против гепатита B в роддоме" }
        ]
      }
    ]
  },
  "status": "active",
  "subjectCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/fhir-types", "code": "Patient" } ]
  },
  "date": "2026-08-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "First dose of hepatitis B vaccine, given within 24 hours of birth.",
  "effectivePeriod": { "start": "2026-08-01" },
  "kind": "ImmunizationRecommendation",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "33879002",
        "display": "Administration of vaccine to produce active immunity"
      }
    ]
  },
  "intent": "plan",
  "priority": "routine",
  "doNotPerform": false,
  "participant": [ { "type": "practitioner" } ],
  "productCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/sid/cvx", "code": "08" } ]
  },
  "dosage": [
    {
      "route": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "78421000", "display": "Intramuscular route" } ]
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 0.5, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" } }
      ]
    }
  ]
}
```

`title` - на узбекском языке; русское и каракалпакское названия передаются расширениями `translation` в `_title`. Когда `code` равен `33879002`, препарат должен быть из кодов вакцин. Возраст, в котором доза положена, обычно задаётся в действии календаря, которое ссылается на это определение (`PlanDefinition.action.timing[x]`), поэтому одно определение может обслуживать несколько доз. `participant.type` использует обязательную связку (practitioner, patient, related person и другие).

#### Шаблон приглашения на скрининг

Для шаблона приглашения используют существующий профиль с `kind = ServiceRequest`, `intent = plan` и `profile`, указывающим на [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html):

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "version": "1.0.0",
  "name": "DiabetesScreeningInvitation",
  "title": "Diabetes screening invitation",
  "status": "active",
  "date": "2026-09-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "Template for the invitation a patient receives to attend diabetes screening.",
  "kind": "ServiceRequest",
  "profile": "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  },
  "intent": "plan",
  "priority": "routine"
}
```

Приложение заполняет пациента, категорию приглашения, идентификатор программы и версионную ссылку на PlanDefinition при создании запроса пациента. Определения не оценивают результаты и не меняют статус запроса. Примеры скрининга и контракт приложения находятся в Integrations.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
