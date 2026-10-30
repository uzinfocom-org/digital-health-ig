> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Device описывает одно физическое медицинское изделие: единицу больничного оборудования, например компьютерный томограф, или отдельное изделие, например внутриматочную спираль. Профиль фиксирует, что это за изделие (тип по SNOMED CT и категория), кто и когда его изготовил, номера модели, серийный номер и номер серии, которые отличают эту единицу от других, активно ли оно и доступно ли для использования, а также организацию и место, к которым оно относится. Другие ресурсы ссылаются на него, когда изделие участвует в оказании помощи. [Observation](StructureDefinition-uz-core-observation.html) указывает в `device` изделие, которым выполнено измерение, [Procedure](StructureDefinition-uz-core-procedure.html) - исполнителя или субъекта, [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) - предполагаемую причину, [DeviceUsage](StructureDefinition-uz-core-deviceusage.html) - изделие, которым пользуется пациент, а [SupplyRequest](StructureDefinition-uz-core-supply-request.html), [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) и [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) - поставляемый или хранящийся на складе предмет. Device - это общая запись о реальной единице, поэтому прежде чем создавать новую, [найдите существующий Device](#finding) по серийному номеру или идентификатору.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Device должно содержать

В базовом ресурсе Device нет обязательных элементов, и этот профиль их не добавляет. Внутри необязательного `name` обязательны и `value`, и `type`.

#### Каждое UZ Core Device должно поддерживать

- идентификатор, всегда передаваемый вместе со своей `system` (см. [Идентификаторы](identifiers.html));
- статус записи `status` (active / inactive / entered-in-error) из набора значений [статус изделия](ValueSet-device-status-vs.html) с обязательной связкой и статус доступности `availabilityStatus` (available / lost / damaged / destroyed) из набора значений [статус доступности](ValueSet-device-availability-status-vs.html) с расширяемой связкой;
- `displayName` и каждое `name` с его `value`, типом `type` из [набора значений типов наименования](ValueSet-device-name-type-vs.html) (зарегистрированное, удобное для пользователя или указанное пациентом наименование) и признаком `display`;
- тип `type`, закодированный по SNOMED CT из [набора значений типов изделий](ValueSet-device-type-vs.html), и категорию `category` из [набора значений категорий изделий](ValueSet-device-category-vs.html);
- `manufacturer`, `modelNumber` и `partNumber`;
- `serialNumber`, `lotNumber`, `manufactureDate` и `expirationDate`;
- владельца `owner` - ссылку на [Organization](StructureDefinition-uz-core-organization.html) - и место `location` - ссылку на [Location](StructureDefinition-uz-core-location.html);
- контактные данные `contact` для изделия и текстовые примечания `note`.

### Поиск существующего Device {#finding}

Прежде чем регистрировать изделие, найдите его, чтобы одна и та же единица не была записана дважды (`|` отделяет систему от значения и URL-кодируется как `%7C`):

```
# by serial number - the reliable match for one unit
GET [base]/Device?serial-number=SN-2023-001456

# by type, within one organization
GET [base]/Device?type=http://snomed.info/sct|54953005&organization=Organization/[id]

# by manufacturer and model, or by batch
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?lot-number=CU-2025-0412
```

Поиск по `type` совпадает с любым кодированием в `type`. Остальные запросы перечислены в разделе [Быстрый старт](#quick-start) внизу страницы.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего полезного экземпляра к полностью описанной единице. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [пример компьютерного томографа](Device-example-ct-scanner.html).

#### Наименьший Device, который вам следует отправлять

Профиль ничего не делает обязательным, но каждый ресурс UZ Core указывает свой профиль в `meta.profile` - так сервер знает, по каким правилам проводить валидацию. Запись об изделии полезна только с `type`, который говорит, что это за изделие, и со `status`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ]
}
```

`type` - это список `CodeableConcept`, закодированных по SNOMED CT из иерархии физических изделий (`49062001 |Device|` и ниже). `status` - статус записи: `active`, пока изделие используется, `inactive` после его вывода из эксплуатации и `entered-in-error` для записи, созданной по ошибке.

#### Оборудование в больнице

Больничное оборудование обычно описывают так, как оно было зарегистрировано: производитель, модель и серийный номер, зарегистрированное наименование `name`, а также `owner` и `location`, которые показывают, какой организации принадлежит изделие и где оно находится. `availabilityStatus` говорит, можно ли использовать изделие прямо сейчас, независимо от `status`:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "displayName": "SOMATOM Edge CT scanner",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Siemens Healthineers",
  "manufactureDate": "2023-05-15",
  "serialNumber": "SN-2023-001456",
  "name": [
    { "value": "SOMATOM Edge", "type": "registered-name", "display": true }
  ],
  "modelNumber": "SOMATOM Edge",
  "category": [
    {
      "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "dme" } ]
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/tashkent-diseases-hospital" },
  "location": { "reference": "Location/example-location" }
}
```

`name.type` - это простой `code` (`registered-name`, `user-friendly-name` или `patient-reported-name`), а не `CodeableConcept`. Установите `display` в `true` для наименования, которое должно отображаться по умолчанию. `displayName` - это подпись, которую показывает пользовательский интерфейс. `availabilityStatus` и `category` используют коды HL7. Их английские отображаемые наименования берутся из базовых систем кодирования, а узбекские и русские - из дополнений (supplements) DHP, поэтому `display` можно не указывать - сервер заполнит его сам. `owner` и `location` - обычные `Reference`.

#### Одноразовое изделие с серией

Имплант или одноразовое изделие отслеживается по серии, а не как долгосрочный актив: передавайте `lotNumber` и `expirationDate` с упаковки и коды `category`, которые говорят, как изделие используется. `category` повторяется, поэтому одно изделие может быть одновременно `implantable` и `single-use`:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Pregna International",
  "manufactureDate": "2025-04-10",
  "expirationDate": "2030-03-31",
  "lotNumber": "CU-2025-0412",
  "name": [
    { "value": "Copper T 380A", "type": "registered-name", "display": true }
  ],
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "implantable" } ] },
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "single-use" } ] }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "268460000",
          "display": "Intrauterine contraceptive device"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/xonobod-medical-association" }
}
```

`expirationDate` и `manufactureDate` имеют тип `dateTime`, поэтому достаточно простой даты. [Набор значений типов изделий](ValueSet-device-type-vs.html) UZ Core содержит узбекские и русские наименования типов контрацептивных изделий: внутриматочное контрацептивное средство, презерватив, контрацептивный имплантат с высвобождением лекарственного вещества и контрацептивное средство.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
