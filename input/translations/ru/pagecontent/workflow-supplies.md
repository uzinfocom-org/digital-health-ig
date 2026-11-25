Этот процесс показывает, как медицинская организация запрашивает предметы снабжения, как поставщик фиксирует поставку и как поступившие запасы хранятся и учитываются. Процесс представлен четырьмя ресурсами: [SupplyRequest](StructureDefinition-uz-core-supply-request.html) указывает, *что* нужно, в каком количестве и для кого; [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) фиксирует, *что было передано*; [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) - это позиция на хранении и этап складского учёта, на котором она находится; [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) - это подсчёт запасов в месте хранения.

Участники: запрашивающая больница (отделение, аптека или склад); поставщик (служба крови, центральный склад самой больницы или дистрибьютор); платформа DHP (Digital Health Platform - Цифровая платформа здравоохранения); органы управления здравоохранением, которые используют данные для аналитики.

Компоненты крови проходят по той же схеме. Сторона службы крови, от донации до трансфузии, описана в процессе [Служба крови](https://dhp.uz/fhir/integrations/ru/blood-service.html) в DHP Integrations IG: см. разделы [Учёт запасов](https://dhp.uz/fhir/integrations/ru/blood-service.html#stock) и [Запрос и поставка компонентов](https://dhp.uz/fhir/integrations/ru/blood-service.html#supplying).

<div>{% include supplies-sequence.svg %}</div><br clear="all"/>

### 1. Запрос предметов снабжения

Больница создаёт `SupplyRequest`: предмет указывается в `item`, количество - в `quantity`, организация, которая должна его поставить, - в `supplier`, место доставки - в `deliverTo`. Собственный номер запроса больницы указывается в `identifier` с системой `https://dhp.uz/fhir/core/sid/doc/uz/supply-request`. `category` указывает вид запроса по кодовой системе [тип запроса](CodeSystem-request-type-cs.html):

| Код `category` | Значение | Типичное содержание |
|---|---|---|
| `req-type-0001-0001` | Запас | без `deliverFor`, `requester` - сама больница, `deliverTo` - склад ([Location](StructureDefinition-uz-core-location.html)) |
| `req-type-0001-0002` | Именная | `deliverFor` - пациент, `basedOn` - назначение врача ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html)) |
| `req-type-0001-0003` | Между учреждениями | передача предметов снабжения из одного учреждения в другое |

Именной запрос эритроцитов:

```
POST [base]/SupplyRequest
{ "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" }],
  "basedOn": [{ "reference": "ServiceRequest/[id]" }],
  "status": "active",
  "category": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }] },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" }] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "requester": { "reference": "Practitioner/[id]" },
  "supplier": [{ "reference": "Organization/[id]" }],
  "deliverTo": { "reference": "Organization/[id]" } }
```

Для компонента крови два элемента `parameter` задают группу крови, которой должны соответствовать единицы: код `63915006` (ABO blood group system - система групп крови AB0) со значением, например, `112144000` (Blood group A - группа крови A), и код `115678000` (Rh blood group system - система резус) со значением, например, `165747007` (RhD positive - RhD положительный). `priority` принимает значения `routine`, `urgent`, `asap` или `stat`. На [странице профиля](StructureDefinition-uz-core-supply-request.html) пошагово собраны полный именной запрос и запрос на пополнение запаса; полный пример - [запрос эритроцитов](SupplyRequest-example-supply-request.html).

### 2. Группировка запросов, отправленных вместе

SupplyRequest содержит один предмет. Если больнице нужно несколько предметов одновременно, например эритроциты и `346447007` (Fresh frozen plasma - свежезамороженная плазма) для одной операции, она отправляет по одному запросу на каждый предмет и присваивает им всем один номер группы в расширении [идентификатор группы](StructureDefinition-supplyrequest-group-identifier.html), рядом с собственным номером каждого запроса:

```
"extension": [{
  "url": "https://dhp.uz/fhir/core/StructureDefinition/supplyrequest-group-identifier",
  "valueIdentifier": { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-group", "value": "GR-0001",
                       "assigner": { "reference": "Organization/[id]" } } }]
```

- Для каждого нового набора используйте новый номер группы и никогда не используйте номер повторно. После отправки запросов группа закрыта: дополнительный предмет позже оформляется новым запросом с новым номером группы.
- Каждый запрос сохраняет собственный статус. Отмена плазмы не отменяет эритроциты.
- Чтобы прочитать, обновить один запрос или сослаться на него, используйте номер запроса, а не номер группы.

См. сгруппированные примеры [эритроцитов](SupplyRequest-example-supply-request-group-red-cells.html) и [свежезамороженной плазмы](SupplyRequest-example-supply-request-group-plasma.html).

> Руководство определяет параметр поиска [`group-identifier`](SearchParameter-uz-core-supplyrequest-group-identifier.html) для поиска всей группы, но ни тестовый, ни промышленный сервер пока не указывают его в своём CapabilityStatement. До тех пор ищите запросы по номеру запроса, `patient` или `supplier`.

### 3. Получение запросов

Поставщик периодически запрашивает адресованные ему открытые запросы:

```
GET [base]/SupplyRequest?supplier=Organization/[id]&status=active
GET [base]/SupplyRequest?supplier=Organization/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs|req-type-0001-0002
```

Сервер также поддерживает `patient`, `requester`, `date` (дата создания запроса) и `identifier`. Символ `|` кодируется как `%7C`.

### 4. Поставка

Поставщик фиксирует поставку в `SupplyDelivery` с собственным номером поставки (система `https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery`) и reference на выполняемый запрос в `basedOn`. Если одна поставка выполняет несколько запросов, например сгруппированный набор, в `basedOn` перечисляются все они. `supplier` и `receiver` указывают, кто отправил и кто принял предметы; расширение [deliver-from](StructureDefinition-supplydelivery-deliver-from.html) и `destination` указывают, из какого места хранения ([Location](StructureDefinition-uz-core-location.html)) и в какое.

```
POST [base]/SupplyDelivery
{ "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
                  "valueReference": { "reference": "Location/[id]" } }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }],
  "basedOn": [{ "reference": "SupplyRequest/[id]" }],
  "status": "in-progress",
  "patient": { "reference": "Patient/[id]" },
  "type": { "coding": [{ "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct", "display": "Biologically Derived Product" }] },
  "suppliedItem": [{ "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
                     "itemReference": { "reference": "BiologicallyDerivedProduct/[id]" } }],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  "receiver": [{ "reference": "Organization/[id]" }] }
```

`type` принимает значения `medication` (Медикамент), `device` (Устройство) или `biologicallyderivedproduct` (Биологически полученный продукт). `suppliedItem.itemReference` может также содержать reference на `InventoryItem`. После передачи предметов поставщик переводит поставку в `completed`, а больница переводит запрос в `completed` (или в `cancelled`, если он больше не нужен). Обновление выполняется полным `PUT` с `ETag` последнего чтения в заголовке `If-Match`; устаревшая версия отклоняется с `412 Precondition Failed`. См. [Параллельный доступ](api-access.html#concurrency).

Перемещение между двумя складами одной больницы также оформляется как SupplyDelivery: `supplier` и `receiver` - одна и та же организация, и различаются только места хранения в расширении deliver-from и в `destination`. Если перемещение никто не запрашивал, `basedOn` не указывается. См. пример [перемещения между складами](SupplyDelivery-example-warehouse-transfer-supply-delivery.html).

| Ресурс | Изменение статуса |
|----------|-------------|
| `SupplyRequest` | `draft` &rarr; `active` &rarr; `completed`; `suspended` на время приостановки; `cancelled`, если запрос больше не нужен |
| `SupplyDelivery` | `in-progress` &rarr; `completed`; `abandoned`, если поставка не состоялась |

Для записей, созданных по ошибке, оба ресурса используют `entered-in-error`.

### 5. Учёт запасов

Каждая единица или партия на хранении - это `InventoryItem`: продукт указывается в `productReference` ([Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) или NutritionProduct), инвентарный номер организации, управляющей запасом, - в `identifier` (система `https://dhp.uz/fhir/core/sid/doc/uz/inventory-item`), а физическая единица - в `instance`: номер партии, срок годности, пациент или организация, для которых она хранится, и место хранения (`Location`).

```
POST [base]/InventoryItem
{ "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }],
  "status": "active",
  "inventoryStatus": [{ "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs", "code": "available" }] }],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": { "lotNumber": "LOT20241201", "expiry": "2027-12-01",
                "subject": { "reference": "Organization/[id]" },
                "location": { "reference": "Location/[id]" } },
  "productReference": { "reference": "Medication/[id]" } }
```

У складской позиции два статуса. `status` показывает, используется ли запись (`active`, `inactive`, `entered-in-error`, `unknown`). `inventoryStatus` показывает этап складского учёта по национальному перечню [статусов складского учёта](ValueSet-inventoryitem-inventory-status-vs.html). Частые значения:

| Код `inventoryStatus` | Значение |
|---|---|
| `accepted` | Принят |
| `quarantine` / `awaiting-tests` | На карантине / Ожидает анализов |
| `available` | Доступен |
| `reserved` | Зарезервирован, например единица крови, отложенная для пациента, указанного в `instance.subject` |
| `issued` | Выдан |
| `expired` &rarr; `discarded` | Истёк срок годности &rarr; Утилизирован |

Единица с истёкшим сроком годности сохраняет `status = active`, а `inventoryStatus` переводится в `expired`. При перемещении запаса в другое место хранения SupplyDelivery фиксирует перемещение, а `instance.location` обновляется. Чтобы сохранить поставку и изменение запаса вместе, отправьте их одним Bundle типа transaction. См. [Общие рекомендации &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

> Руководство пока не определяет, создаёт ли получатель после поставки между двумя организациями собственный InventoryItem или обновляется запись поставщика. Согласуйте это с командой DHP, прежде чем полагаться на один из вариантов.

### 6. Подсчёт запасов (планируется)

Подсчёт запасов в месте хранения - это `InventoryReport`. `countType = snapshot` показывает количество в наличии; `countType = difference` показывает, сколько поступило или выбыло, с `operationType`, например `invop-0001-00001` (Приход), и причиной в `operationTypeReason`, например `invrs-0001-00004` (Поступление) или `invrs-0001-00010` (Списание: истёк срок годности). Каждый `inventoryListing` указывает подсчитанное место хранения в `location`.

> Профиль InventoryReport опубликован, но ни тестовый, ни промышленный сервер пока не принимают InventoryReport: его нет в их CapabilityStatement. До тех пор текущие запасы считываются из InventoryItem.

### 7. Получение данных

```
GET [base]/SupplyRequest?patient=Patient/[id]
GET [base]/SupplyRequest?requester=Organization/[id]&date=ge2026-11-01
GET [base]/SupplyDelivery?receiver=Organization/[id]&status=in-progress
GET [base]/SupplyDelivery?patient=Patient/[id]
GET [base]/InventoryItem?subject=Patient/[id]
GET [base]/InventoryItem?identifier=https://dhp.uz/fhir/core/sid/doc/uz/inventory-item|TDH-WH-2026-0315
```

На серверах нет параметров поиска по `basedOn` поставки, по `inventoryStatus` позиции или по месту её хранения. Ищите по `receiver`, `patient` или `subject` и фильтруйте по этим элементам в своём клиенте. Органы управления здравоохранением читают те же ресурсы, чтобы строить картину доступности ресурсов в разрезе регионов и организаций.

### Оборудование

Медицинское оборудование - это [Device](StructureDefinition-uz-core-device.html): `owner` - организация, которой оно принадлежит, `location` - где оно находится, `availabilityStatus` - можно ли им пользоваться сейчас: `available` (Доступен), `damaged` (Повреждён), `lost` (Утерян) или `destroyed` (Уничтожен). Неисправное оборудование - это Device с `availabilityStatus = damaged`. Профиль Device опубликован, но Device пока нет в CapabilityStatement серверов.

Консолидация других критически важных запасов (реанимационные койки, доступные врачи по специальностям) и перечень лекарственных средств и медицинских изделий, предоставляемых государством бесплатно или на льготных условиях, входят в компонент [Поставки](components.html#supplies), но процесса для них в этом руководстве пока нет.

### Связанные материалы

- Профили: [SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) &middot; [Device](StructureDefinition-uz-core-device.html) &middot; [Location](StructureDefinition-uz-core-location.html)
- Компонент: [Поставки](components.html#supplies)
- DHP Integrations IG: [Служба крови](https://dhp.uz/fhir/integrations/ru/blood-service.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
