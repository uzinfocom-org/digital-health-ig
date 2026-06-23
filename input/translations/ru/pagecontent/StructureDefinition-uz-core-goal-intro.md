> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Goal фиксирует медицинскую цель пациента на Цифровой платформе здравоохранения - целевой показатель, к которому стремится пациент, например целевой вес, целевой HbA1c, целевое артериальное давление или целевой уровень физической активности. Цели часто задаются самим пациентом в портале. Цель может относиться к состоянию ([Condition](StructureDefinition-uz-core-condition.html)), а её результат может измеряться наблюдением ([Observation](StructureDefinition-uz-core-observation.html)).

### Обязательные и поддерживаемые (Must Support) элементы данных

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда располагает соответствующими данными, и обрабатывать его при получении. Это сводка для чтения человеком; точные кардинальности, типы и терминологические связки приведены в [формальных представлениях](#profile) ниже.

#### Каждый UZ Core Goal должен иметь (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы наследуются от базового ресурса: статус жизненного цикла, описание цели и субъект (пациент, для которого она задана).

#### Каждый UZ Core Goal должен поддерживать (Must Support)



- идентификатор (например, номер из системы страховой компании или другой клиники);
- lifecycleStatus (proposed, planned, accepted, active, on-hold, completed, cancelled, entered-in-error, rejected) - связан с набором значений DHP goal-status;
- achievementStatus (in-progress, improving, worsening, no-change, achieved, sustaining, not-achieved, no-progress, not-attainable) - связан с набором значений DHP goal-achievement;
- category, группирующий цель по типу (например, treatment, dietary, behavioural, nursing);
- флаг continuous - true, когда усилия должны продолжаться и после достижения цели (например, пожизненная диета);
- priority (high, medium, low);
- description того, в чём заключается цель (текст или код);
- subject, для которого задана цель - [Patient](StructureDefinition-uz-core-patient.html), Group или [Organization](StructureDefinition-uz-core-organization.html);
- start[x] (когда начинается работа над целью);
- target - измеряемый параметр (`target.measure`), показатель или состояние, которого нужно достичь (`target.detail[x]`), и крайний срок (`target.due[x]`);
- statusDate и statusReason для текущего статуса;
- source - кто задал цель (CareTeam, [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) или RelatedPerson);
- медицинские проблемы, на которые направлена цель ([Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html), Socioeconomic Observation, лекарство, назначение питания, запрос на услугу, оценка риска или [Procedure](StructureDefinition-uz-core-procedure.html));
- свободные текстовые заметки;
- outcome - наблюдение [Observation](StructureDefinition-uz-core-observation.html), фиксирующее достигнутый результат.

> Цель никогда не удаляется физически. Чтобы отозвать её, измените `lifecycleStatus` (например, на `cancelled` или `completed`), а не вызывайте `DELETE`.

### Сборка JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полной цели с целевым показателем и измеренным результатом. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - [пример Goal](Goal-example-goal.html).

#### Наименьший Goal, который вам следует отправлять

Строго обязательны три элемента: `lifecycleStatus`, указывающий, на каком этапе планирования находится цель (proposed, planned, accepted, active, on-hold, completed ...), `description` того, в чём состоит цель, и `subject`, для которого она задана (простая ссылка на [Patient](StructureDefinition-uz-core-patient.html)). Описание может быть кодом SNOMED CT или свободным текстом. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет соответствие, в `meta.profile`. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`lifecycleStatus` использует required-связку, поэтому значение должно браться из связанного набора значений. Чтобы описать цель, для которой нет подходящего кода, отправляйте `description.text` вместо `coding`.

#### Реалистичная цель

На практике цель отправляется в контексте: для кого она (`subject`, обычно [Patient](StructureDefinition-uz-core-patient.html)), как продвигается её достижение (`achievementStatus`), как она сгруппирована (`category`), насколько важна (`priority`), когда началась работа (`start[x]`) и кто её задал (`source`). Флаг `continuous` равен true, когда усилия должны продолжаться и после достижения цели, например при пожизненной диете:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "achievementStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-achievement", "code": "in-progress", "display": "In progress" }]
  },
  "category": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-category", "code": "dietary", "display": "Dietary" }] }
  ],
  "continuous": true,
  "priority": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-priority", "code": "high-priority", "display": "High priority" }]
  },
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "startDate": "2024-01-01",
  "statusDate": "2024-01-15",
  "statusReason": "The patient started taking medications.",
  "source": { "reference": "Practitioner/example-practitioner" },
  "note": [
    { "text": "Weekly blood pressure monitoring." }
  ]
}
```

`achievementStatus`, `priority` и `lifecycleStatus` используют required-связку; `category` и `description` связаны как `example`, поэтому при необходимости вы можете использовать другие коды. `subject` и `source` - это простые значения `Reference` (`{ "reference": "Type/id" }`).

#### Добавление измеримого целевого показателя

Большинство целей содержат `target` - отслеживаемый параметр (`target.measure`), показатель или состояние, которого нужно достичь (`target.detail[x]`), и крайний срок (`target.due[x]`). Крайний срок может быть фиксированной датой (`dueDate`) либо периодом после начала (`dueDuration`). Если вы заполняете `target.detail[x]`, вы также обязаны отправить `target.measure`:

```json
"target": [
  {
    "measure": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
    },
    "detailQuantity": { "value": 120, "unit": "mmHg", "system": "http://unitsofmeasure.org", "code": "mm[Hg]" },
    "dueDate": "2024-06-01"
  }
]
```

Этот массив `target` встраивается в тот же ресурс, что и реалистичная цель выше. См. [Единицы и величины](general-guidance.html#units-and-quantities) для правил UCUM по `detailQuantity`.

#### Связывание проблемы и результата

Цель обычно существует для решения зафиксированной проблемы, и впоследствии её оценивают по измерению. Направьте `addresses` на [Condition](StructureDefinition-uz-core-condition.html) (либо [Observation](StructureDefinition-uz-core-observation.html), [Procedure](StructureDefinition-uz-core-procedure.html), лекарство или запрос на услугу), для которого задана цель, а `outcome` - на наблюдение [Observation](StructureDefinition-uz-core-observation.html), фиксирующее результат. Обратите внимание на различие в структуре: `addresses` - это простая `Reference`, тогда как `outcome` - это `CodeableReference`, поэтому его ссылка находится на один уровень глубже:

```json
{
  "addresses": [
    { "reference": "Condition/example-headache" }
  ],
  "outcome": [
    { "reference": { "reference": "Observation/blood-pressure-example" } }
  ]
}
```

Эти ключи встраиваются в тот же ресурс, что и реалистичная цель выше. Чтобы отозвать цель, а не удалять её, установите `lifecycleStatus` в `cancelled` или `completed` и зафиксируйте причину в `statusReason`.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
