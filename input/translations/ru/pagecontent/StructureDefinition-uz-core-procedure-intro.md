> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Procedure фиксирует действие, выполненное над пациентом или для него на Цифровой платформе здравоохранения - хирургическую операцию, сеанс терапии, диагностическое вмешательство и тому подобное. Procedure привязана к своему [Patient](StructureDefinition-uz-core-patient.html) и к [Encounter](StructureDefinition-uz-core-encounter.html), в рамках которого она произошла. Когда процедура была назначена, она ссылается обратно на исходный ServiceRequest (или CarePlan) и может ссылаться на [Condition](StructureDefinition-uz-core-condition.html) или находку, которая её обосновала.

### Обязательные и поддерживаемые элементы данных

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемое для человека резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и привязки к терминологиям.

#### Каждая UZ Core Procedure должна иметь (Must Have)

Этот профиль не добавляет собственной обязательной кардинальности. Обязательные элементы наследуются от базового ресурса: статус (preparation \| in-progress \| completed \| not-done ...) и субъект (пациент или иной объект, над которым была выполнена процедура).

#### Каждая UZ Core Procedure должна поддерживать (Must Support)



- идентификатор, basedOn (CarePlan или ServiceRequest) и partOf (родительская процедура, наблюдение или введение лекарственного средства);
- статус (привязка required) и категорию;
- код, идентифицирующий процедуру (привязка required к набору значений кодов процедур DHP);
- субъект и случай обслуживания (encounter), в котором она произошла;
- время выполнения occurrence[x], дату записи и регистратора (recorder);
- исполнителя (performer) и его субъекта (actor);
- местоположение, причину (состояние, наблюдение, процедура, отчёт или документ) и анатомическую область bodySite (привязка required);
- исход (outcome) (привязка extensible) и свободнотекстовое примечание;
- объекты, использованные в процедуре.

> Установите `status` в `not-done` (а не опускайте Procedure), когда назначенная процедура была умышленно не выполнена, чтобы это решение осталось в записи.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полной записи о процедуре. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - это [пример Procedure](Procedure-example-procedure.html).

#### Наименьшая Procedure, которую следует отправить

Обязательные элементы Procedure - это `status` (привязка required: `preparation` \| `in-progress` \| `completed` \| `not-done` ...) и `subject` (обычная ссылка на [Patient](StructureDefinition-uz-core-patient.html), над которым она была выполнена), но она полезна только тогда, когда также указывает, *что* было сделано. Добавьте `code` (привязка required к набору значений кодов процедур DHP, здесь - код SNOMED CT) и, на практике, `encounter`, в рамках которого она произошла, и когда это произошло (`occurrence[x]`). Каждый ресурс UZ Core также должен указывать профиль в `meta.profile`:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" }
}
```

`subject` и `encounter` - это обычные ссылки (`{ "reference": "Type/id" }`). Время выполнения - это элемент-выбор (choice): используйте `occurrencePeriod` для процедуры с началом и окончанием либо `occurrenceDateTime` для отдельного момента времени.

#### Реалистичная процедура

Заполните элементы, поддержку которых ожидает платформа: `identifier`, `category`, которая группирует процедуру, кто её выполнил (`performer.actor`, ссылающийся на [Practitioner](StructureDefinition-uz-core-practitioner.html) или [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)), где она произошла (`location`, [Location](StructureDefinition-uz-core-location.html)), а также аудиторский след того, когда она была зафиксирована (`recorded`) и кем (`recorder`):

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "identifier": [
    { "system": "https://mis.dmed.uz", "value": "proc-0001" }
  ],
  "status": "completed",
  "category": [
    { "text": "Physical therapy procedure" }
  ],
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "encounter": { "reference": "Encounter/example-encounter", "display": "Outpatient Visit" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" },
  "recorded": "2025-05-19T09:30:00Z",
  "recorder": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner", "display": "Paul Ivanov, PT" } }
  ],
  "location": { "reference": "Location/example-location", "display": "Toshkent shahar 1-sonli shifoxona" }
}
```

`recorder`, `performer.actor` и `location` - все они являются обычными ссылками. Момент `recorded` - это время, когда запись была внесена, которое не обязано совпадать со временем `occurrence[x]`, когда процедура фактически произошла.

#### Добавление заказа, причины, анатомической области и исхода

Чтобы замкнуть клинический цикл, сошлитесь обратно на заказ, инициировавший процедуру (`basedOn`, CarePlan или ServiceRequest), укажите, зачем она была выполнена (`reason`), на каком участке тела (`bodySite`, привязка required), как она завершилась (`outcome`, привязка extensible), а также любое свободнотекстовое `note` или использованные объекты `used`. Обратите внимание, что `reason` и `used` относятся к типам `CodeableReference` - ссылка располагается на один уровень глубже, чем обычная ссылка, - тогда как `bodySite` и `outcome` являются кодированными `CodeableConcept`:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "basedOn": [
    { "reference": "CarePlan/example-careplan", "display": "CarePlan #1" }
  ],
  "reason": [
    { "reference": { "reference": "Condition/example-disability", "display": "Aching right foot" } }
  ],
  "bodySite": [
    { "coding": [{ "system": "http://snomed.info/sct", "code": "7769000", "display": "Right foot" }] }
  ],
  "outcome": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "385669000", "display": "Successful" }]
  },
  "note": [
    { "text": "Therapeutic massage of the right foot completed according to the care plan. No adverse reactions noted." }
  ],
  "used": [
    { "reference": { "reference": "Medication/example-medication" } }
  ]
}
```

`basedOn` - это обычная ссылка, но `reason` и `used` - это `CodeableReference`: цель вкладывается как `{ "reference": { "reference": "Type/id" } }`. `bodySite` - это список, поскольку процедура может затрагивать несколько участков. Кодированные привязки см. в разделе [Терминология](general-guidance.html#terminology).

#### Когда процедура не была выполнена

Когда назначенная процедура была умышленно не выполнена, не удаляйте Procedure - зафиксируйте её со `status`, установленным в `not-done`, чтобы это решение осталось в карте. Зафиксируйте причину, по которой она была пропущена, в `note` (или в базовом `statusReason`):

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "not-done",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "note": [
    { "text": "Procedure cancelled - patient declined." }
  ]
}
```

О выборе между статусом not-done и другими механизмами отсутствия данных см. [Отсутствующие и подавленные данные](general-guidance.html#missing-data).

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
