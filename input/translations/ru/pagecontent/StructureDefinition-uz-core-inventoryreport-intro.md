> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core InventoryReport фиксирует подсчёт запасов в одном или нескольких местах хранения, например в больничной аптеке, в шкафу с лекарствами отделения, на складе или на полке банка крови. Отчёт-снимок (snapshot) показывает, сколько каждой позиции имеется в наличии на момент подсчёта. Отчёт об изменениях (difference) показывает, сколько поступило или выбыло и почему: новое поступление, перемещение, списание просроченного. Каждая подсчитанная позиция ссылается на то, что подсчитано, - [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [InventoryItem](StructureDefinition-uz-core-inventoryitem.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) или NutritionProduct, а каждый перечень ссылается на [Location](StructureDefinition-uz-core-location.html), где проводился подсчёт.

### Обязательные элементы и Must Support

Элементы ниже должны присутствовать всегда (mandatory) или поддерживаться, когда данные доступны ([Must Support](must-support.html)). Системы должны заполнять Must Support элементы при наличии данных и обрабатывать их при получении. Точные типы, кардинальности и связки приведены в [формальном представлении профиля](#profile).

#### Обязательные элементы UZ Core InventoryReport

Профиль не добавляет новых обязательных кардинальностей. Соблюдайте требования базового FHIR: `status`, `countType` и `reportedDateTime`. Каждой подсчитанной позиции, если она указана, также нужны `quantity` и `item`, на который она ссылается.

#### Must Support для UZ Core InventoryReport

- бизнес-идентификатор - номер отчёта из системы управляющей организации (см. [срезы идентификаторов](#identifier-slices));
- статус (draft / requested / active / entered-in-error) и тип подсчёта (snapshot или difference);
- для отчёта об изменениях - тип операции (поступление, выбытие или без изменений) и её причина, например новое поступление, перемещение или списание;
- когда составлен отчёт, кто его составил (медицинский работник, пациент или его представитель) и за какой период;
- каждый перечень: место подсчёта, статус запасов в нём (в наличии, на карантине, просрочено и т. д.) и время подсчёта;
- каждая подсчитанная позиция: её категория (лекарственное средство, вакцина, медицинское изделие, компонент крови и т. д.), количество с единицей - единицей SNOMED CT, например коробка или флакон, или национальной, например пачка, - и что подсчитано;
- примечания.

### Пошаговое построение JSON

#### Наименьший InventoryReport, который вам следует отправлять

Обязательны только три базовых элемента. `countType` - `snapshot` для имеющихся запасов или `difference` для изменения запасов.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00"
}
```

#### Подсчёт имеющихся запасов

Каждый `inventoryListing` - это одно место в один момент времени, а каждый его элемент `item` - один подсчитанный товар. `quantity` берёт единицу из [единиц учёта запасов](ValueSet-inventory-unit-vs.html): в основном единицы SNOMED CT, например `418445004` Box или `733026001` Vial, и национальные единицы, например пачку, там, где в SNOMED CT их нет. `item.item` имеет тип `CodeableReference`, поэтому ссылка находится на уровень глубже, в `reference`. Отображаемые названия национальных кодов даны на узбекском языке в соответствии с `language` ресурса.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "itemStatus": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
        "code": "available",
        "display": "Mavjud"
      }]
    },
    "countingDateTime": "2026-10-27T09:30:00+05:00",
    "item": [{
      "category": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-item-category-cs",
          "code": "invct-0001-00001",
          "display": "Dori vositasi"
        }]
      },
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Отчёт об изменении запасов

Отчёт об изменениях указывает в `operationType`, поступили запасы или выбыли, а в `operationTypeReason` - почему. Здесь в течение октября новым поступлением пришло 20 коробок. `operationType` описывает изменение, поэтому в отчётах-снимках его не указывают. `identifier` содержит номер, который отчёту присвоила информационная система управляющей организации, а сама организация указывается в `assigner`.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-report",
    "value": "INV-2026-000451",
    "assigner": { "reference": "Organization/tashkent-diseases-hospital" }
  }],
  "status": "active",
  "countType": "difference",
  "operationType": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-type-cs",
      "code": "invop-0001-00001",
      "display": "Kirim"
    }]
  },
  "operationTypeReason": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-reason-cs",
      "code": "invrs-0001-00004",
      "display": "Yangi kirim"
    }]
  },
  "reportedDateTime": "2026-11-01T09:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "reportingPeriod": { "start": "2026-10-01", "end": "2026-10-31" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "item": [{
      "quantity": {
        "value": 20,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Срезы идентификаторов {#identifier-slices}

| Срез | `system` | Что идентифицирует |
|---|---|---|
| `inventoryReport` | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-report` | Номер отчёта, присвоенный информационной системой управляющей организации ([NamingSystem](NamingSystem-uzb-inventory-report-identifier.html)) |

Полный пример: [отчёт о поступлении лекарственного средства](InventoryReport-example-inventory-report-medication-receipt.html).

API-запросы приведены в разделе [Быстрый старт](#quick-start).
