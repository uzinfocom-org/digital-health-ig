> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core SupplyRequest фиксирует запрос на доставку предметов снабжения: просьбу больницы к службе крови выдать эритроциты для конкретного пациента, заказ на пополнение запаса компонента крови в больнице или передачу предметов снабжения между учреждениями. Ресурс указывает, что нужно и в каком количестве, насколько срочно, для кого, кто запросил, какая организация должна поставить и куда доставить. Именной запрос обычно основан на назначении трансфузии врачом, [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), и может быть основан на другом SupplyRequest. [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html), выполняющий запрос, ссылается на него в `basedOn`, а [CarePlan](StructureDefinition-uz-core-careplan.html) может ссылаться на него как на запланированное мероприятие.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core SupplyRequest должен содержать

- запрашиваемый предмет (`item`);
- запрашиваемое количество (`quantity`).

Оба элемента обязательны в базовом ресурсе SupplyRequest; этот профиль не добавляет других обязательных элементов. Номер запроса или договора должен содержать свой `system`, а каждый параметр группы крови должен содержать и код, и значение.

#### Каждый UZ Core SupplyRequest должен поддерживать

- номер запроса, присвоенный запрашивающей больницей, и номер договора о поставке, к которому он относится, каждый вместе с `system` (см. [срезы идентификаторов](#identifier-slices));
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) или другой SupplyRequest, на котором основан запрос (`basedOn`);
- статус запроса `status` (draft / active / suspended / cancelled / completed / entered-in-error / unknown);
- категорию запроса `category` (пополнение запаса / именной, для одного пациента / между учреждениями);
- приоритет `priority` (routine / urgent / asap / stat);
- пациента, для которого предназначены предметы (`deliverFor`), для именного запроса;
- запрашиваемый предмет и его количество `quantity`;
- группу крови по системе ABO и резус-принадлежность RhD, которым должен соответствовать компонент крови (`parameter`);
- когда нужны предметы (`occurrence[x]`) и когда составлен запрос (`authoredOn`);
- кто сделал запрос (`requester`) и какая организация или служба должна выполнить поставку (`supplier`);
- причину запроса в виде кода или ссылки на [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) или [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) (`reason`);
- куда нужно доставить предметы (`deliverTo`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего экземпляра, который примет сервер, к именному запросу для пациента и пополнению запаса. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [запрос эритроцитов](SupplyRequest-example-supply-request.html).

#### Наименьший SupplyRequest, который вам следует отправлять

`item` и `quantity` - единственные обязательные элементы. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, по которому сервер понимает, по каким правилам проводить валидацию, а запрос можно выполнить, только если у него есть `status`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "status": "active",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" }
}
```

`item` имеет тип `CodeableReference`. Компонент крови запрашивается по его типу, поэтому его код SNOMED CT помещается в `concept`, из набора значений [тип продукта крови](ValueSet-blood-product-type-snomed-vs.html); эта связка `extensible`, поэтому для других предметов снабжения допустимы другие коды. Чтобы запросить конкретный зарегистрированный предмет, вместо этого поместите ссылку в `reference`. `status` использует коды HL7, узбекские и русские отображаемые названия которых берутся из дополнения DHP, поэтому `display` можно не указывать.

#### Именной запрос для пациента

Больница просит Андижанскую станцию переливания крови выдать две единицы эритроцитов для конкретного пациента в рамках своего договора о поставке. Запрос основан на [назначении трансфузии](ServiceRequest-transfusion-order-01.html) врачом, `deliverFor` указывает пациента, а две записи `parameter` задают группу крови, которой должны соответствовать единицы:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" },
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-contract", "value": "AGR-2025-017" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }
    ]
  },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/example-salim" },
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    }
  ],
  "occurrenceDateTime": "2025-09-01T09:00:00+05:00",
  "authoredOn": "2025-08-31T14:20:00+05:00",
  "requester": { "reference": "Practitioner/example-practitioner" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "87522002", "display": "Iron deficiency anemia" } ]
      }
    }
  ],
  "deliverTo": { "reference": "Organization/tashkent-hospital" }
}
```

`parameter` нарезан по `code`: SNOMED CT `63915006` (система групп крови ABO) содержит группу ABO из набора значений [группа крови](ValueSet-blood-group-vs.html), а `115678000` (система групп крови Rh) содержит резус-принадлежность RhD из набора значений [резус-принадлежность RhD](ValueSet-blood-rh-vs.html). Обе связки значений `required`. Система кодирования `category` основана на узбекском языке, с русскими и английскими обозначениями; указывайте `display`, только если он соответствует `language` ресурса. `supplier` повторяется, `deliverTo` - нет. `reason` имеет тип `CodeableReference`: код в `concept` или ссылка на диагноз или результат исследования в `reference`.

#### Номера запроса и договора {#identifier-slices}

`identifier` нарезан по URI `system`, поэтому система должна совпадать точно:

| Идентификатор | `system` | Кем присваивается |
|---|---|---|
| [Номер запроса на поставку](NamingSystem-uzb-supply-request-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-request` | Запрашивающей больницей |
| [Номер договора о поставке](NamingSystem-uzb-supply-contract-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-contract` | Стороной, оформившей договор о поставке между больницей и службой крови |

Номер запроса позволяет службе крови и больнице сопоставить запрос с поставкой, которая на него отвечает; у поставки свой [номер поставки](StructureDefinition-uz-core-supply-delivery.html#identifier-slices).

#### Пополнение запаса

Больница заказывает десять единиц свежезамороженной плазмы для своего запаса с доставкой на центральный склад в течение следующей недели. У запроса на запас нет `deliverFor` и `basedOn`, а запрашивающей стороной является сама больница:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0002" }
  ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0001" }
    ]
  },
  "priority": "routine",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "346447007" } ]
    }
  },
  "quantity": { "value": 10, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "occurrencePeriod": { "start": "2025-09-08", "end": "2025-09-12" },
  "authoredOn": "2025-09-01T10:00:00+05:00",
  "requester": { "reference": "Organization/tashkent-diseases-hospital" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "deliverTo": { "reference": "Location/example-central-warehouse" }
}
```

`occurrence[x]` - это `dateTime` для одного момента, `Period` для окна доставки или `Timing` для повторяющихся поставок. `deliverTo` ссылается на [Organization](StructureDefinition-uz-core-organization.html), [Location](StructureDefinition-uz-core-location.html), например склад, [Patient](StructureDefinition-uz-core-patient.html) или [RelatedPerson](StructureDefinition-uz-core-relatedperson.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
