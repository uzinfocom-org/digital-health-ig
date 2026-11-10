> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core BiologicallyDerivedProduct описывает материал человеческого происхождения, предназначенный для трансфузии или трансплантации: единицу донорской цельной крови, приготовленный из неё компонент (эритроциты, плазму или тромбоциты), а также ткани и клетки. Ресурс фиксирует, что это за продукт, номер его единицы и донацию, из которой он получен, продукт, из которого он приготовлен, службу крови, которая его обработала, время заготовки, срок годности, условия хранения, а также группу крови, объём и гематокрит. [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) ссылается на продукт при его доставке в больницу, [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) - при его хранении на складе, [SupplyRequest](StructureDefinition-uz-core-supply-request.html) может его запрашивать, а [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) может указать его как предполагаемую причину трансфузионной реакции. Каждая единица идентифицируется номером единицы, поэтому перед созданием нового продукта следует [найти существующий](#finding).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core BiologicallyDerivedProduct должен содержать

В базовом ресурсе BiologicallyDerivedProduct нет обязательных элементов, и этот профиль их не добавляет. Номер единицы и номер донации должны содержать свои `system` и `value`, а каждый `property` должен содержать тип и значение.

#### Каждый UZ Core BiologicallyDerivedProduct должен поддерживать

- номер единицы, присвоенный службой крови, заготовившей или обработавшей продукт, всегда вместе с `system` и `value` (см. [срезы идентификаторов](#identifier-slices));
- номер донации, из которой получен продукт (`biologicalSourceEvent`), с `system` и `value`;
- общую категорию `productCategory` (орган / ткань / жидкость / клетки / биологический агент) и `productCode`, тип продукта крови;
- продукт или продукты, из которых он приготовлен (`parent`), для обработанного или пулированного компонента;
- статус `productStatus` (available / unavailable);
- срок годности `expirationDate`;
- заготовку: донора или организацию-источник (`collection.source`), медицинского работника, который заготовил продукт (`collection.collector`), и время заготовки (`collection.collected[x]`);
- службу крови, обработавшую продукт (`processingFacility`);
- номер порции или дозы, например 2/3, если один продукт разделён (`division`);
- диапазон температуры хранения (`storageTempRequirements`);
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), для которого продукт получен или выдан (`request`);
- свойства продукта: группу ABO, резус-принадлежность RhD, объём и гематокрит (`property`).

### Поиск существующего BiologicallyDerivedProduct {#finding}

Единицу крови один раз создаёт служба крови, а затем на неё ссылаются все поставки, складские записи и трансфузии, поэтому найдите её перед созданием. `|` отделяет систему от значения и кодируется в URL как `%7C`:

```
# by unit number - the reliable match
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# every product from one donation, the whole blood unit and its components
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231

# by product type and availability
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|126251004&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=cells

# products issued for a transfusion order
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
```

Обработанный компонент сохраняет номер донации исходного продукта, поэтому поиск по номеру донации возвращает единицу цельной крови и каждый приготовленный из неё компонент. Остальные параметры поиска перечислены в разделе [Быстрый старт](#quick-start) внизу страницы.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего полезного экземпляра к донации цельной крови и приготовленному из неё компоненту. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [донация цельной крови](BiologicallyDerivedProduct-example-blood-donation-product.html) и [компонент эритроцитов](BiologicallyDerivedProduct-example-blood-component-product.html).

#### Наименьший BiologicallyDerivedProduct, который вам следует отправлять

Профиль ничего не делает обязательным, но каждый ресурс UZ Core указывает свой профиль в `meta.profile`, по которому сервер понимает, по каким правилам проводить валидацию. Продукт полезен, только если он говорит, что это такое и доступен ли он. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" }
}
```

`productCategory` и `productStatus` используют коды HL7. Их английские отображаемые названия берутся из базовых систем кодирования, а узбекские и русские - из дополнений DHP, поэтому `display` можно не указывать. `productCode` принимает код SNOMED CT из набора значений [тип продукта крови](ValueSet-blood-product-type-snomed-vs.html); связка `extensible`, поэтому для тканей и клеток допустимы другие коды.

#### Донация цельной крови

Станция переливания крови заготавливает единицу цельной крови. Единица получает собственный номер единицы, донация - номер донации, а свойства фиксируют группу крови, объём и гематокрит. У прямой донации нет `parent`:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-DON-2026-00123" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-20T08:00:00+05:00",
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2026-09-15T08:00:00+05:00"
  },
  "storageTempRequirements": {
    "low": { "value": 2, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" },
    "high": { "value": 6, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" }
  },
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 450, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 40, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

`property` нарезан по `type`:

| Свойство | `type` | Значение |
|---|---|---|
| Группа ABO | SNOMED CT `63915006` (система групп крови ABO) | `valueCodeableConcept` из набора значений [группа крови](ValueSet-blood-group-vs.html) |
| Резус-принадлежность RhD | SNOMED CT `115678000` (система групп крови Rh) | `valueCodeableConcept` из набора значений [резус-принадлежность RhD](ValueSet-blood-rh-vs.html) |
| Объём | SNOMED CT `118565006` (объём) | `valueQuantity` в UCUM, например `mL` |
| Гематокрит | LOINC `4544-3` (гематокрит) | `valueQuantity` в `%` |

Связки значений группы крови и резус-принадлежности `required`. `collection.source` указывает донора ([Patient](StructureDefinition-uz-core-patient.html)) или [Organization](StructureDefinition-uz-core-organization.html), от которой получен материал; не указывайте его, если донор не зарегистрирован на платформе. Никогда не помещайте идентификатор донора в `biologicalSourceEvent`.

#### Номера единицы и донации {#identifier-slices}

Оба номера сопоставляются по URI `system`, поэтому система должна совпадать точно:

| Номер | Элемент | `system` | Кем присваивается |
|---|---|---|---|
| [Номер единицы крови](NamingSystem-uzb-blood-unit-number.html) | `identifier` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit` | Службой крови, заготовившей или обработавшей продукт |
| [Номер донации крови](NamingSystem-uzb-blood-donation-number.html) | `biologicalSourceEvent` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` | Службой крови, заготовившей продукт |

Каждый продукт, включая каждый компонент, получает собственный номер единицы и сохраняет его на протяжении всей жизни. Компонент, приготовленный из донации, сохраняет номер донации своего источника, который связывает все продукты одной донации.

#### Компонент, приготовленный из донации

Станция переливания крови готовит из единицы цельной крови эритроциты с уменьшенным содержанием лейкоцитов по назначению трансфузии для пациента. У компонента собственный номер единицы, он сохраняет номер донации и ссылается на единицу цельной крови в `parent`:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "126251004", "display": "Leukocyte reduced red blood cells, human" }
    ]
  },
  "parent": [ { "reference": "BiologicallyDerivedProduct/example-blood-donation-product" } ],
  "request": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-15T23:59:00+05:00",
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 60, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

У прямых донаций, включая аферезную плазму и тромбоциты, нет `parent`. Пулированный продукт перечисляет каждую единицу пула, а криопреципитат ссылается на исходную плазму. Если один компонент разделён на порции, `division` задаёт номер порции, например `2/3`. `productStatus` говорит лишь о том, доступен ли продукт; его подробное складское состояние, например карантин, резерв или выдача, фиксируется в [InventoryItem](StructureDefinition-uz-core-inventoryitem.html), который его содержит.

Примеры вызовов API и порядок поиска перед созданием приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
