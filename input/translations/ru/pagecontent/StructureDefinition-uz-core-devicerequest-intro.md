> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core DeviceRequest фиксирует назначение медицинского изделия, которое нужно выдать пациенту или использовать для него: внутриматочной спирали для контрацепции, слухового аппарата, костылей после перелома или домашнего кислородного концентратора. Ресурс указывает, какое изделие запрошено и в каком количестве, с какими характеристиками (например, размером), для какого пациента, кто его назначил и кого просят его предоставить, когда и почему. Запрашиваемое изделие задаётся ссылкой на [UZ Core Device](StructureDefinition-uz-core-device.html) или кодом вида изделия. [CarePlan](StructureDefinition-uz-core-careplan.html) ссылается на запрос изделия в `activity.plannedActivityReference`, когда запрос является частью плана.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core DeviceRequest должно содержать

- намерение запроса `intent` (proposal / plan / order и другие);
- запрашиваемое изделие (`code`);
- субъекта `subject`: [пациента](StructureDefinition-uz-core-patient.html), для которого предназначено изделие.

Эти три элемента обязательны в базовом ресурсе DeviceRequest; этот профиль не добавляет других обязательных элементов.

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

`code` имеет тип `CodeableReference`, поэтому изделие можно указать двумя способами:

| Способ | Когда |
|---|---|
| `code.reference` на [UZ Core Device](StructureDefinition-uz-core-device.html) | Конкретное изделие или модель изделия, которую учреждение ведёт как отдельный ресурс |
| `code.concept` с кодом | Известен только вид изделия, а конкретное изделие выбирает поставщик |

`parameter` повторяется, по одной записи на характеристику. `parameter.code` указывает, какая это характеристика, и связан (extensible) с набором [Параметры запроса изделия](ValueSet-device-request-parameter-code-vs.html):

| Код ([SNOMED CT](https://browser.ihtsdotools.org/)) | Отображение | Узбекский | Русский |
|---|---|---|---|
| `410668003` | Length | Uzunlik | Длина |
| `103355008` | Width | Kenglik | Ширина |
| `81827009` | Diameter | Diametr | Диаметр |

Используйте другой код, только если ни один из этих не подходит. `parameter.value[x]` - это `Quantity` для измеренного размера, `Range` для допустимого диапазона, `CodeableConcept` для кодированной настройки или `boolean`. Передавайте `Quantity` вместе с `system` и `code` UCUM.

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

#### Назначение медной ВМС с указанием ширины

Гинеколог назначает одну медную внутриматочную спираль шириной 28 мм пациентке, которая выбрала её для контрацепции. Спираль будет установлена в клинике 20 ноября:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueQuantity": { "value": 28, "unit": "mm", "system": "http://unitsofmeasure.org", "code": "mm" }
    }
  ],
  "subject": { "reference": "Patient/example-nodira" },
  "occurrenceDateTime": "2026-11-20T09:00:00+05:00",
  "authoredOn": "2026-11-16T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/example-organization" } },
  "reason": [
    { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ] } }
  ],
  "asNeeded": false
}
```

`requester` - это [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), поэтому запрос фиксирует и врача, и учреждение, от имени которого он назначил изделие. `performer` - это `CodeableReference` на [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) или [Organization](StructureDefinition-uz-core-organization.html); в отличие от `requester`, его ссылка находится на уровень глубже, в `performer.reference`. `reason` повторяется и устроен так же: `concept` для кодированной причины, `reference` на [UZ Core Condition](StructureDefinition-uz-core-condition.html), когда диагноз записан.

#### Изменение или отмена запроса

Запрос не редактируется в другое назначение. Чтобы изменить его, например на другой размер, создайте новый DeviceRequest, который ссылается на старый в `replaces`, и установите `status` старого запроса в `revoked`. Чтобы отменить запрос без замены, установите его `status` в `revoked`. Используйте `entered-in-error`, только если запрос вообще не должен был существовать.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
