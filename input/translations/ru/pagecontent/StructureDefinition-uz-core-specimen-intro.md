> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Specimen представляет лабораторный или иной клинический образец, собранный у пациента на Цифровой платформе здравоохранения. В лабораторном потоке он находится между заказом и результатом: он ссылается на ServiceRequest, инициировавший сбор, а итоговое [Observation](StructureDefinition-uz-core-observation.html) ссылается обратно на образец, по которому было выполнено измерение.

### Обязательные и поддерживаемые (Must Support) элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемое для человека резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Specimen должен иметь (Must Have)

Данный профиль не добавляет собственной обязательной кардинальности, а базовый ресурс Specimen не имеет обязательных элементов - каждый ограничиваемый элемент является необязательным, но имеет признак Must Support.

#### Каждый UZ Core Specimen должен поддерживать (Must Support)



- идентификатор, используемый исходной системой (например, ЛИС), и accessionIdentifier, присваиваемый лабораторией при получении;
- статус (например, available, unavailable), связанный с набором значений DHP specimen-status;
- тип (например, венозная кровь, моча, мазок; preferred-связка);
- subject - откуда поступил образец: [Patient](StructureDefinition-uz-core-patient.html), [Location](StructureDefinition-uz-core-location.html) или Substance;
- receivedTime - когда лаборатория получила образец;
- ссылку на родительский образец (parent), когда данный образец получен/аликвотирован из другого;
- request - `ServiceRequest`, по которому был заказан сбор;
- признак combined (содержит ли контейнер объединённый (pooled) образец; required-связка) и role (preferred-связка);
- детали сбора: collector ([Practitioner](StructureDefinition-uz-core-practitioner.html)), collected[x] дата/время, duration, quantity, method, bodySite и fastingStatus[x] (required-связка).

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полного лабораторного образца. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр приведён по ссылке внизу страницы ([венозная кровь для ОАК](Specimen-example-specimen-blood-cbc.html)).

#### Наименьший Specimen, который вам следует отправлять

Данный профиль не добавляет обязательной кардинальности, а базовый Specimen не имеет обязательных элементов - поэтому самая минимальная полезная нагрузка состоит лишь из `meta.profile`. Сам по себе он редко полезен. На практике первые три вещи, которые важны для лаборатории, - это *что* представляет собой образец (`type`), его статус жизненного цикла `status` и *чей* он (`subject`). `subject` - это простая `Reference` на [Patient](StructureDefinition-uz-core-patient.html):

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`status` связан с набором значений DHP specimen-status (required), а `type` - с набором значений specimen-types (preferred). Значение `type` `BLD` выше взято из таблицы HL7 v2 0487. `subject` также может ссылаться на [Location](StructureDefinition-uz-core-location.html) (например, для пробы окружающей среды) или на Substance.

#### Полученный и заказанный образец

После того как лаборатория принимает образец, зафиксируйте, когда он поступил (`receivedTime`), заказ, инициировавший сбор (`request`, простая `Reference` на `ServiceRequest`), и `role` образца в рабочем процессе. Это типовая полезная нагрузка, создаваемая при регистрации образца:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ]
}
```

`request` - это то, что связывает образец с заказанными тестами; итоговое [Observation](StructureDefinition-uz-core-observation.html) затем ссылается обратно на этот образец через собственный элемент `specimen`. `role` - это preferred-связка; `p` (Patient) отмечает обычный образец пациента.

#### Добавление деталей сбора

Блок `collection` содержит сведения о том, как и когда был взят образец: `collector` (простая `Reference` на [Practitioner](StructureDefinition-uz-core-practitioner.html)), `collectedDateTime` (вариант выбора элемента `collected[x]`), `duration` и `quantity` в виде значений с кодами UCUM, а также свободнотекстовое `note`. Всегда передавайте машиночитаемые `system` и `code` для величин, а не только человекочитаемое `unit`:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ],
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2025-11-04T08:10:00Z",
    "duration": { "value": 5, "code": "min", "system": "http://unitsofmeasure.org" },
    "quantity": { "value": 3, "unit": "mL", "code": "mL", "system": "http://unitsofmeasure.org" }
  },
  "note": [
    { "text": "Venous blood collected into EDTA tube. No visible hemolysis." }
  ]
}
```

Обратите внимание, что `collectedDateTime` - это одна из форм выбора `collected[x]`; используйте вместо неё `collectedPeriod` для сбора по времени, охватывающего начало и конец. См. [Единицы измерения и величины](general-guidance.html#units-and-quantities) для правил UCUM, относящихся к `duration` и `quantity`.

#### Фиксация статуса натощак (fasting)

Когда статус натощак влияет на интерпретацию результата, зафиксируйте его внутри `collection`. Элемент `fastingStatus[x]` имеет required-связку; в виде кодированного значения это `fastingStatusCodeableConcept`. Здесь пациент подтвердил, что не соблюдал голодание:

```json
{
  "collection": {
    "fastingStatusCodeableConcept": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0916",
          "code": "NF",
          "display": "The patient indicated they did not fast prior to the procedure."
        }
      ]
    }
  }
}
```

Этот блок `collection` встраивается в тот же ресурс, что и на предыдущем этапе. Используйте код, соответствующий фактическому состоянию пациента (в обязательном наборе значений перечислен каждый из них); не опускайте `fastingStatus` для тестов, где соблюдение голодания имеет значение.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
