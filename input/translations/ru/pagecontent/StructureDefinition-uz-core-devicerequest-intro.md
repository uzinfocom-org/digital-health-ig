> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core DeviceRequest фиксирует назначение медицинского изделия, которое нужно выдать пациенту или использовать для него: внутриматочной спирали для контрацепции, слухового аппарата, костылей после перелома или домашнего кислородного концентратора. Ресурс указывает, какое изделие запрошено и в каком количестве, с какими характеристиками (например, размером), для какого пациента, кто его назначил и кого просят его предоставить, когда и почему. Запрашиваемое изделие задаётся ссылкой на [UZ Core Device](StructureDefinition-uz-core-device.html) или кодом вида изделия. [CarePlan](StructureDefinition-uz-core-careplan.html) ссылается на запрос изделия в `activity.plannedActivityReference`, когда запрос является частью плана.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core DeviceRequest должно содержать

Профиль не добавляет обязательных элементов. Базовый ресурс требует `intent`, запрашиваемое изделие (`code`) и [пациента](StructureDefinition-uz-core-patient.html), для которого оно предназначено (`subject`).

#### Каждое UZ Core DeviceRequest должно поддерживать

- идентификаторы запроса (`identifier`) и общий `groupIdentifier` для запросов, назначенных вместе;
- более ранний запрос, который заменяет этот (`replaces`);
- статус запроса `status` (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- приоритет `priority` (routine / urgent / asap / stat) и `doNotPerform`, когда запрос запрещает изделие;
- количество запрашиваемых изделий (`quantity`) и их требуемые характеристики (`parameter`);
- [обращение](StructureDefinition-uz-core-encounter.html), в ходе которого был сделан запрос;
- когда изделие должно быть выдано или использовано (`occurrence[x]`) и когда запрос был оформлен (`authoredOn`);
- заказчика `requester` и исполнителя `performer`, которого просят предоставить изделие;
- причину запроса `reason`, а также нужно ли изделие только по необходимости (`asNeeded`, `asNeededFor`);
- страховку пациента `insurance`, `supportingInfo`, `note` и историю запроса `relevantHistory`.

### Какое изделие и с какими характеристиками

Запрашиваемое изделие указывается в [`code`](#k-DeviceRequest.code) ссылкой или кодом:

- `code.reference` ссылается на [UZ Core Device](StructureDefinition-uz-core-device.html), если назначается конкретное изделие или модель.
- `code.concept` содержит код, если важен только вид изделия, а конкретное изделие выбирает поставщик.

Добавьте по одному `parameter` на каждую характеристику. `parameter.code` указывает, какая это характеристика: длина (`410668003`), ширина (`103355008`) или диаметр (`81827009`) из набора [Параметры запроса изделия](ValueSet-device-request-parameter-code-vs.html), либо другой код SNOMED CT, если ни один из них не подходит. `parameter.value[x]` содержит значение, обычно `Quantity` с `system` и `code` UCUM.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего допустимого экземпляра к полному назначению. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [назначение медной ВМС](DeviceRequest-example-devicerequest-iud.html).

#### Наименьший DeviceRequest, который можно отправить

Каждый ресурс UZ Core указывает свой профиль в `meta.profile`, чтобы сервер знал, по каким правилам его проверять. Запросу изделия также нужны намерение `intent`, запрашиваемое изделие и пациент. Добавьте `status`, чтобы получатель знал, действует ли запрос:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "subject": { "reference": "Patient/example-nodira" }
}
```

`status`, `intent` и `priority` используют коды HL7. Их английские отображаемые имена берутся из базовых систем кодов, а узбекские и русские - из supplement DHP, поэтому `display` можно не указывать.

#### Изделие, назначенное по виду, с размером

Если важен только вид изделия, укажите код SNOMED CT в `code.concept`, а конкретное изделие выберет поставщик. Физиотерапевт назначает новое механическое кресло-коляску взамен изношенного пациенту с инвалидностью. Подойдёт любая модель с шириной сиденья от 44 до 48 см:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "58938008", "display": "Wheelchair" } ] }
  },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueRange": {
        "low": { "value": 44, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" },
        "high": { "value": 48, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" }
      }
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-11-10T11:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-physiotherapist-role" },
  "reason": [ { "reference": { "reference": "Condition/example-disability" } } ]
}
```

Здесь `parameter.value[x]` - это `Range`, потому что подходит любая ширина в этом диапазоне; для одного точного размера используйте `Quantity`. Эталонный экземпляр - [назначение кресла-коляски](DeviceRequest-example-devicerequest-wheelchair.html).

#### Выполненное назначение конкретной медной ВМС

На консультации 10 февраля гинеколог назначает пациентке, которая выбрала контрацепцию, медную внутриматочную спираль, имеющуюся в поликлинике. Поликлиника установила её 18 февраля, поэтому назначение теперь `completed`:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "replaces": [ { "reference": "DeviceRequest/example-devicerequest-implant" } ],
  "status": "completed",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "subject": { "reference": "Patient/example-nodira" },
  "encounter": { "reference": "Encounter/example-encounter-iud-consultation" },
  "occurrenceDateTime": "2026-02-18T09:00:00+05:00",
  "authoredOn": "2026-02-10T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/xonobod-medical-association" } },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ]
      }
    }
  ],
  "asNeeded": false,
  "note": [ { "text": "Copper T 380A from the polyclinic stock; insertion booked for 18 February." } ]
}
```

`requester` - это [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), поэтому запрос фиксирует и врача, и учреждение, от имени которого он назначил изделие. `performer` - это `CodeableReference` на [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) или [Organization](StructureDefinition-uz-core-organization.html); в отличие от `requester`, его ссылка находится на уровень глубже, в `performer.reference`. `reason` повторяется и устроен так же: `concept` для кодированной причины, `reference` на [UZ Core Condition](StructureDefinition-uz-core-condition.html), когда диагноз записан.

#### Изменение или отмена запроса

Запрос не редактируется в другое назначение. Чтобы изменить его, например на другой размер, создайте новый DeviceRequest, который ссылается на старый в `replaces`, и установите `status` старого запроса в `revoked`. Назначение медной ВМС выше заменяет более раннее [назначение имплантата](DeviceRequest-example-devicerequest-implant.html), отозванное, когда пациентка выбрала ВМС. Чтобы отменить запрос без замены, установите его `status` в `revoked`. Используйте `entered-in-error`, только если запрос вообще не должен был существовать.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
