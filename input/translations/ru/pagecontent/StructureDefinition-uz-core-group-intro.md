> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Group описывает набор людей или других сущностей, которые рассматриваются вместе: целевую группу программы скрининга, вакцинации или донации и когорты, которые из неё получаются, например пациентов, которые были приглашены, прошли скрининг, вакцинированы или исключены, или доноров, которые сдали или не сдали кровь. Группа либо определяет своих членов по общим характеристикам (например, взрослые с индексом массы тела 25 и выше), либо перечисляет их поимённо. [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) указывает группу, для которой предназначена программа, в `subjectReference`, а у [CarePlan](StructureDefinition-uz-core-careplan.html) или [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) группа может быть субъектом `subject`. Членами обычно являются [пациенты](StructureDefinition-uz-core-patient.html), но ими также могут быть медицинские работники, организации, места, устройства, образцы или другие группы.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Group должно содержать

Профиль не добавляет собственных обязательных элементов; обязательные элементы приходят из базового ресурса: тип членов `type` и основание членства `membership`. Каждая характеристика `characteristic`, если она передаётся, должна содержать свой `code`, значение и флаг `exclude`, а каждый член `member` - сущность `entity`, на которую он ссылается.

#### Каждое UZ Core Group должно поддерживать

- бизнес-идентификатор группы (`identifier`) и признак того, используется ли группа (`active`);
- тип членов `type` (person / practitioner / organization / location / device / specimen и другие);
- как определяется членство (`membership`: definitional / enumerated);
- назначение или вид группы (`code`), например целевая группа скрининга или когорта вакцинированных;
- название `name`, описание `description` и число членов (`quantity`);
- организацию или лицо, управляющее группой (`managingEntity`);
- характеристики, которые включают или исключают членов (`characteristic`, с её `code`, значением, флагом `exclude` и периодом `period`);
- перечисленных членов (`member`, с сущностью `entity`, периодом членства `period` и флагом `inactive`).

### Определяемые и перечисляемые группы

Программе обычно нужны оба вида:

| `membership` | Члены группы | Типичное применение |
|---|---|---|
| `definitional` | все, кто соответствует записям `characteristic`; списка `member` нет | Целевая группа программы скрининга, вакцинации или донации |
| `enumerated` | сущности, перечисленные в `member` | Когорта результатов: приглашённые, прошедшие скрининг, вакцинированные или исключённые пациенты, доноры, сдавшие кровь |

Это отдельные ресурсы Group с разными значениями `code`. Определяемая группа может указывать оценочное число подходящих людей в `quantity`.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного экземпляра к определяемой целевой группе и перечисляемой когорте. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [целевая группа скрининга на диабет 2 типа](Group-example-diabetes-screening-target-group.html) и [когорта вакцинированных против кори](Group-example-measles-vaccinated-group.html).

#### Наименьший Group, который вам следует отправлять

Обязательные элементы приходят из базового ресурса. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, чтобы сервер знал, по каким правилам его проверять. Такой экземпляр проходит валидацию:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "type": "person",
  "membership": "enumerated"
}
```

`type` и `membership` - простые коды, поэтому передавайте само значение. Группа пациентов имеет `type` `person`.

#### Целевая группа скрининга, определяемая характеристиками

Целевая группа программы скрининга на диабет 2 типа включает взрослых с индексом массы тела 25 кг/м2 и выше и исключает пациентов, у которых этот диагноз уже установлен:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "definitional",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00001" }
    ],
    "text": "Screening target group"
  },
  "name": "Type 2 diabetes screening target group",
  "description": "Adults with a BMI of 25 kg/m2 or higher, excluding patients already diagnosed with type 2 diabetes",
  "quantity": 1875,
  "managingEntity": { "reference": "Organization/example-organization" },
  "characteristic": [
    {
      "code": { "coding": [ { "system": "http://loinc.org", "code": "39156-5" } ], "text": "Body mass index (BMI)" },
      "valueRange": {
        "low": { "value": 25, "unit": "kg/m2", "system": "http://unitsofmeasure.org", "code": "kg/m2" }
      },
      "exclude": false
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-characteristic-kind-local-cs",
            "code": "diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "E11" } ] },
      "exclude": true
    }
  ]
}
```

`characteristic.code` указывает, что проверяется: код LOINC для измерения или оценки, например возраста или индекса массы тела, или локальный код для признака, который LOINC не покрывает, например региона проживания, медицинской организации, диагноза или ранее пройденного скрининга. Значение задаётся как `valueRange`, `valueQuantity`, `valueCodeableConcept`, `valueBoolean` или `valueReference`; для диагнозов используйте коды МКБ-10. `exclude: true` превращает характеристику в исключение. Все характеристики применяются одновременно. У `code` группы и локальных кодов характеристик основные отображаемые названия узбекские, поэтому либо не указывайте `display` и используйте `text`, как здесь, либо установите `language` ресурса в соответствии с передаваемым `display`.

#### Перечисляемая когорта

Пациенты, получившие вакцину, содержащую коревой компонент, в поликлинике в первом квартале 2026 года, перечислены поимённо. `member.period.start` - дата, когда каждый пациент вошёл в когорту:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00008" }
    ],
    "text": "Vaccinated patients"
  },
  "name": "Measles-vaccinated patients cohort",
  "quantity": 2,
  "managingEntity": { "reference": "Organization/example-organization" },
  "member": [
    {
      "entity": { "reference": "Patient/example-salim" },
      "period": { "start": "2026-01-15" },
      "inactive": false
    },
    {
      "entity": { "reference": "Patient/example-emma" },
      "period": { "start": "2026-02-03" },
      "inactive": false
    }
  ]
}
```

Чтобы вывести человека из когорты, не теряя истории, установите `inactive` в `true` и закройте его `period`, а не удаляйте запись. Поддерживайте `quantity` равным числу активных членов. `managingEntity` - это Organization, Practitioner, PractitionerRole или RelatedPerson, ответственные за группу.

Получение данных всех членов одним запросом через [экспорт Group](https://hl7.org/fhir/uv/bulkdata/en/export.html#endpoint---group-of-patients) из Bulk Data Access (`GET [base]/Group/[id]/$export`) запланировано, но пока недоступно.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
