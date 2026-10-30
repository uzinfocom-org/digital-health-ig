> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core CarePlan описывает, как медицинские работники намерены оказывать помощь [пациенту](StructureDefinition-uz-core-patient.html) или [группе](StructureDefinition-uz-core-group.html) в течение некоторого периода. Это общий профиль для любого плана на Платформе цифрового здравоохранения: патронажных визитов медсестры на дом, курса физиотерапии, случая листка нетрудоспособности. Руководство для конкретного сценария наследует от него и добавляет свои идентификаторы, категории и расширения. План объединяет запросы на то, что нужно сделать ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), [SupplyRequest](StructureDefinition-uz-core-supply-request.html) и другие), и связывает события, фиксирующие выполненное, например [Procedure](StructureDefinition-uz-core-procedure.html). Procedure, [Observation](StructureDefinition-uz-core-observation.html) или [Immunization](StructureDefinition-uz-core-immunization.html), выполненные по плану, ссылаются на него через `basedOn`.

### Обязательные элементы и Must Support

Элементы ниже должны присутствовать всегда (mandatory) или поддерживаться, когда данные доступны ([Must Support](must-support.html)). Системы должны заполнять Must Support элементы при наличии данных и обрабатывать их при получении. Точные типы, кардинальности и связки приведены в [формальном представлении профиля](#profile).

#### Обязательные элементы UZ Core CarePlan

Профиль не добавляет новых обязательных кардинальностей. Соблюдайте требования базового FHIR: `status`, `intent` и `subject`.

#### Must Support для UZ Core CarePlan

- бизнес-идентификаторы (`identifier`);
- определение, по которому составлен план (`instantiatesCanonical`: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html), [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) или [Questionnaire](StructureDefinition-uz-core-questionnaire.html), либо `instantiatesUri`);
- ссылки `basedOn`, `replaces` и `partOf` на другие планы;
- `status` (связан со [статусами запроса](ValueSet-service-request-status-vs.html)) и `intent` (связан с [намерениями CarePlan](ValueSet-careplan-intent-vs.html));
- `category`, `title` и `description`;
- `subject` ([Patient](StructureDefinition-uz-core-patient.html) или [Group](StructureDefinition-uz-core-group.html)) и [Encounter](StructureDefinition-uz-core-encounter.html), в котором создан план;
- `period` и `created`;
- `custodian`, `contributor` и `careTeam`;
- `addresses` ([Condition](StructureDefinition-uz-core-condition.html)), `supportingInfo` и `goal` ([Goal](StructureDefinition-uz-core-goal.html));
- `activity`: `plannedActivityReference` для запроса, `performedActivity` для события и `progress`;
- `note`.

### Пошаговое построение JSON

**1. Минимальный план.** Обязательны только три базовых элемента. `intent` принимает один из пяти кодов: `plan` для плана, которому намерен следовать медицинский работник, и `order` для плана, который санкционирует свои мероприятия.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/example-jasur" }
}
```

**2. Описание плана.** `category` указывает вид плана кодом SNOMED CT, потомком `734163000` Care plan, здесь `773130005` Nursing care plan. `custodian` - ответственный за план, `period` - срок его действия.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "language": "uz",
  "status": "active",
  "intent": "plan",
  "category": [{
    "coding": [{ "system": "http://snomed.info/sct", "code": "773130005", "display": "Nursing care plan" }]
  }],
  "title": "Yangi tug'ilgan chaqaloq patronaji",
  "subject": { "reference": "Patient/example-jasur" },
  "period": { "start": "2015-06-20", "end": "2015-07-20" },
  "created": "2015-06-22T09:00:00+05:00",
  "custodian": { "reference": "PractitionerRole/example-patronage-nurse-role" }
}
```

**3. Мероприятия.** Каждое `activity` либо запланировано, либо выполнено. Запланированное мероприятие - это запрос, на который ссылается `plannedActivityReference`. Выполненное мероприятие - событие, которое его фиксирует, в `performedActivity`; это `CodeableReference`, поэтому ссылка находится на уровень глубже, в `reference`.

```json
"activity": [
  {
    "plannedActivityReference": { "reference": "ServiceRequest/example-nursing-newborn-home-visit-request" }
  },
  {
    "performedActivity": [{ "reference": { "reference": "Procedure/example-procedure" } }]
  }
]
```

Полные примеры: [план патронажа новорождённого](CarePlan-example-newborn-patronage-careplan.html) и [курс лечебного массажа](CarePlan-example-massage-careplan.html).

API-запросы приведены в разделе [Быстрый старт](#quick-start).
