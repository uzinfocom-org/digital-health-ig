> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core SupplyDelivery фиксирует передачу предметов снабжения: компонент крови, отправленный станцией переливания крови в больницу для пациента, партию лекарств или медицинских изделий, доставленную в медицинское учреждение, или запасы, перемещённые с одного склада на другой внутри одной организации. Ресурс указывает, что и в каком количестве поставлено, кто отправил и из какого места, куда доставлено и кто принял, а также когда. Поставка обычно выполняет [SupplyRequest](StructureDefinition-uz-core-supply-request.html) и может быть частью более крупной поставки или договора. Поставляемый предмет задаётся кодом или ссылкой на [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html), Substance, NutritionProduct или InventoryItem. [CarePlan](StructureDefinition-uz-core-careplan.html) ссылается на поставку в `activity.performedActivity`, когда поставка выполняет запланированное мероприятие.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core SupplyDelivery должно содержать

В базовом ресурсе SupplyDelivery нет обязательных элементов, и этот профиль их не добавляет. Номер поставки всегда передаётся со своим `system`, а расширение deliver-from всегда содержит место.

#### Каждое UZ Core SupplyDelivery должно поддерживать

- номер поставки, присвоенный поставщиком, всегда вместе с `system` (см. [срезы идентификаторов](#identifier-slices));
- [SupplyRequest](StructureDefinition-uz-core-supply-request.html), который выполняет поставка (`basedOn`), и более крупную поставку или договор, частью которых она является (`partOf`);
- статус поставки `status` (in-progress / completed / abandoned / entered-in-error);
- пациента `patient`, для которого предназначены предметы, если они предназначены одному пациенту;
- тип поставляемого предмета `type` (лекарство / медицинское изделие / продукт биологического происхождения);
- поставляемый предмет и его количество `quantity`;
- время поставки (`occurrence[x]`);
- поставщика `supplier`, место, откуда отправлены предметы (расширение deliver-from), место назначения `destination` и получателя `receiver`.

### Кто отправил, откуда, кто принял и где

У каждой стороны поставки, отправляющей и принимающей, есть свой элемент для «кто» и свой для «где»:

| | Кто | Где |
|---|---|---|
| Сторона отправки | [`supplier`](#k-SupplyDelivery.supplier): организация, медицинский работник или его роль, отвечающие за поставку | расширение [deliver-from](StructureDefinition-supplydelivery-deliver-from.html): [Location](StructureDefinition-uz-core-location.html), откуда отправлены предметы, например склад-отправитель |
| Сторона получения | [`receiver`](#k-SupplyDelivery.receiver): организация или человек, принявшие предметы | [`destination`](#k-SupplyDelivery.destination): [Location](StructureDefinition-uz-core-location.html), куда доставлены предметы |

В базовом ресурсе FHIR SupplyDelivery нет элемента для места отправки, поэтому UZ Core добавляет расширение deliver-from. Оно соответствует `SupplyRequest.deliverFrom` на стороне поставки: запрос указывает, откуда предметы должны поступить, а поставка - откуда они поступили на самом деле. При перемещении между двумя складами одной больницы `supplier` и `receiver` - одна и та же организация, и поставки различаются только двумя местами.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего полезного экземпляра к перемещению между складами. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [поставка компонента крови](SupplyDelivery-example-blood-product-supply-delivery.html) и [перемещение между складами](SupplyDelivery-example-warehouse-transfer-supply-delivery.html).

#### Наименьший SupplyDelivery, который вам следует отправлять

Профиль ничего не делает обязательным, но каждый ресурс UZ Core указывает свой профиль в `meta.profile`, чтобы сервер знал, по каким правилам его проверять. Поставка полезна только со статусом `status`, типом предмета `type` и тем, что поставлено. Такой экземпляр проходит валидацию:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ]
}
```

`status` и `type` используют коды HL7. Их английские отображаемые имена берутся из базовых систем кодов, а узбекские и русские - из supplement DHP, поэтому `display` можно не указывать. `suppliedItem.item[x]` - это либо `itemCodeableConcept`, либо `itemReference`; используйте ссылку, когда предмет записан как отдельный ресурс.

#### Компонент крови, доставленный для пациента

Станция переливания крови доставляет в больницу единицу эритроцитов для конкретного пациента. Номер поставки от станции указывается в `identifier`, `basedOn` ссылается на [запрос](SupplyRequest-example-supply-request.html) больницы, а `occurrencePeriod` охватывает время от отправки до передачи:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }
  ],
  "basedOn": [ { "reference": "SupplyRequest/example-supply-request" } ],
  "status": "completed",
  "patient": { "reference": "Patient/example-salim" },
  "type": {
    "coding": [
      { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct" }
    ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
      "itemReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
    }
  ],
  "occurrencePeriod": { "start": "2026-09-15T09:00:00+05:00", "end": "2026-09-15T10:00:00+05:00" },
  "supplier": { "reference": "Organization/andijan-station" },
  "destination": { "reference": "Location/example-location" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

`receiver` повторяется, а `destination` - нет. `occurrence[x]` - это `dateTime` для одного момента, `Period` для поставки, занимающей время, или `Timing`.

#### Номер поставки {#identifier-slices}

`identifier` разделён на срезы по URI `system`, поэтому система должна совпадать точно:

| Идентификатор | `system` | Кем присваивается |
|---|---|---|
| [Номер поставки](NamingSystem-uzb-supply-delivery-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery` | Поставщиком, например станцией переливания крови, выдающей компоненты крови |

#### Перемещение между складами

Больница перемещает парацетамол со своего центрального склада в кладовую хирургического отделения. Больница является и `supplier`, и `receiver`, поэтому склад-отправитель указывается в расширении deliver-from, а кладовая - в `destination`:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/example-central-warehouse" }
    }
  ],
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "TR-2026-0042" }
  ],
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ],
  "occurrenceDateTime": "2026-10-28T11:30:00+05:00",
  "supplier": { "reference": "Organization/tashkent-diseases-hospital" },
  "destination": { "reference": "Location/example-surgery-storeroom" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

Значение расширения - `Reference` на [UZ Core Location](StructureDefinition-uz-core-location.html), и оно встречается не более одного раза. У перемещения нет `patient`. Не указывайте `basedOn`, если запроса на перемещение не было.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
