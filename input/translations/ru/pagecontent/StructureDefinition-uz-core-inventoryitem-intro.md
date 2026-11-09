> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core InventoryItem фиксирует предмет, находящийся на хранении, и его состояние: единицу эритроцитов на полке холодильного хранилища станции переливания крови или партию таблеток на центральном складе больницы. Ресурс указывает, что это за предмет, какая организация за него отвечает, где он хранится, сколько его и на каком этапе складского учёта он находится (принят, на карантине, зарезервирован, выдан, истёк срок годности и так далее). Сам продукт описывается собственным ресурсом, на который складская позиция ссылается в `productReference`: [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) для компонента крови, [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html) или NutritionProduct. [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) может указать складскую позицию как поставленный предмет.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core InventoryItem должен содержать

- статус записи `status` (active / inactive / entered-in-error / unknown).

`status` обязателен в базовом ресурсе InventoryItem; этот профиль не добавляет других обязательных элементов. Номер складской позиции должен содержать свой `system`, `name` должен содержать тип наименования, язык и текст, а ответственная организация должна содержать свою роль.

#### Каждый UZ Core InventoryItem должен поддерживать

- номер складской позиции, присвоенный управляющей организацией, всегда вместе с `system` (см. [срезы идентификаторов](#identifier-slices));
- статус записи `status`;
- категорию предмета `category`, включая тип продукта крови, если предмет является продуктом крови;
- продукт, запас которого представляет позиция (`productReference`);
- наименования предмета (`name`), каждое с типом (торговое / альтернативное / оригинальное / предпочтительное), языком и текстом;
- организации, ответственные за предмет, и их роль, например производитель, дистрибьютор или поставщик (`responsibleOrganization`);
- национальный складской статус предмета (`inventoryStatus`), например принят, на карантине, доступен, зарезервирован, выдан или истёк срок годности;
- единицу учёта предмета (`baseUnit`) и количество в одной единице (`netContent`);
- физический экземпляр (`instance`): его идентификатор, номер серии и срок годности, пациента или организацию, для которых он хранится, и [Location](StructureDefinition-uz-core-location.html), где он хранится.

### Два статуса

У складской позиции два элемента статуса, которые отвечают на разные вопросы:

| Элемент | Отвечает на вопрос | Значения |
|---|---|---|
| [`status`](#k-InventoryItem.status) | Используется ли эта запись? | active / inactive / entered-in-error / unknown |
| [`inventoryStatus`](#k-InventoryItem.inventoryStatus) | На каком этапе складского учёта находится предмет? | национальный список [складских статусов](ValueSet-inventoryitem-inventory-status-vs.html), например принят, на карантине, доступен, зарезервирован, выдан, истёк срок годности или утилизирован |

У единицы с истёкшим сроком годности `status` остаётся `active` (запись по-прежнему действительна), а `inventoryStatus` переходит в `expired`. Устанавливайте `status` в `inactive`, только когда сама запись больше не используется. Собственный [`productStatus`](StructureDefinition-uz-core-biologically-derived-product.html) продукта говорит лишь о том, доступен ли компонент крови вообще; его складское состояние фиксируется здесь.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего экземпляра, который примет сервер, к единице крови, зарезервированной для пациента, и партии таблеток на складе. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [складская позиция эритроцитов](InventoryItem-example-inventory-item-rbc.html).

#### Наименьший InventoryItem, который вам следует отправлять

`status` - единственный обязательный элемент. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, по которому сервер понимает, по каким правилам проводить валидацию. Складская позиция полезна, только если она говорит, что это за предмет, поэтому добавьте её `category` и продукт, запас которого она представляет. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

`category` повторяется. Код из набора значений [тип продукта крови](ValueSet-blood-product-type-snomed-vs.html) заполняет срез типа продукта крови, связка которого `required`; рядом с ним допустимы другие категории. `status` использует коды HL7, узбекские и русские отображаемые названия которых берутся из дополнения DHP, поэтому `display` можно не указывать.

#### Единица крови, зарезервированная для пациента

Станция переливания крови хранит единицу эритроцитов на полке холодильного хранилища и резервирует её для конкретного пациента. `instance` описывает физическую единицу: её номер, срок годности, пациента, для которого она хранится, и место хранения. `baseUnit` говорит, что предмет учитывается в единицах крови, а `netContent` задаёт объём одной единицы:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "BB-INV-2025-004821" }
  ],
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "alias" },
      "language": "en",
      "name": "Red Blood Cells, Leukocytes Reduced"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "manufacturer"
          }
        ]
      },
      "organization": { "reference": "Organization/andijan-station" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "reserved"
        }
      ]
    }
  ],
  "baseUnit": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "258768008", "display": "Units of blood" } ]
  },
  "netContent": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "instance": {
    "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
    "expiry": "2026-10-15",
    "subject": { "reference": "Patient/example-salim" },
    "location": { "reference": "Location/example-cold-storage-shelf" }
  },
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

Системы кодирования роли ответственной организации и складского статуса основаны на узбекском языке, с русскими и английскими обозначениями; указывайте `display`, только если он соответствует `language` ресурса. `name.nameType` использует коды HL7. Номер единицы в `instance.identifier` - тот же [номер единицы крови](NamingSystem-uzb-blood-unit-number.html), что и у [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html#identifier-slices). `instance` встречается не более одного раза, поэтому каждая физическая единица или партия, которую нужно учитывать отдельно, - это отдельная складская позиция.

#### Номер складской позиции {#identifier-slices}

`identifier` нарезан по URI `system`, поэтому система должна совпадать точно:

| Идентификатор | `system` | Кем присваивается |
|---|---|---|
| [Номер складской позиции](NamingSystem-uzb-inventory-item-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-item` | Организацией, управляющей запасом |

Этот номер идентифицирует складскую запись. Идентификаторы физической единицы, например номер единицы крови, помещаются в `instance.identifier`.

#### Партия таблеток на складе

Больница хранит на центральном складе 1200 таблеток парацетамола одной серии. Позиция представляет запас [Medication](StructureDefinition-uz-core-medication.html), `instance.subject` - больница, которая его хранит, а партия идентифицируется номером серии:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }
  ],
  "status": "active",
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "trade-name" },
      "language": "en",
      "name": "Paracetamol 500 mg tablets"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "supplier"
          }
        ]
      },
      "organization": { "reference": "Organization/example-organization" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "available"
        }
      ]
    }
  ],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": {
    "lotNumber": "LOT20241201",
    "expiry": "2027-12-01",
    "subject": { "reference": "Organization/tashkent-diseases-hospital" },
    "location": { "reference": "Location/example-central-warehouse" }
  },
  "productReference": { "reference": "Medication/example-medication" }
}
```

У лекарственного препарата нет типа продукта крови, поэтому здесь нет `category`. `productReference` ссылается на [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), NutritionProduct или [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html). Когда запас перемещается в другое место, [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) фиксирует перемещение, а `instance.location` обновляется.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
