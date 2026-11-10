> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core BiologicallyDerivedProductDispense фиксирует, что [биологический продукт](StructureDefinition-uz-core-biologically-derived-product.html), например компонент крови, выдан для [пациента](StructureDefinition-uz-core-patient.html) клинической команде, которая будет его применять. Он указывает, какой продукт выдан и для кого, какое назначение при этом выполняется, кто участвовал, откуда продукт выдан и куда направлен, и когда он передан. Выдача обычно выполняет [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). Сама трансфузия записывается как [Procedure](StructureDefinition-uz-core-procedure.html), которая может ссылаться на выдачу как на дополнительную информацию.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core BiologicallyDerivedProductDispense должен содержать

`status`, выдаваемый продукт (`product`) и пациента, для которого он предназначен (`patient`). Все три элемента обязательны в базовом ресурсе. Каждый `performer` должен указывать `actor`, а каждый `identifier` - свои `system` и `value`.

#### Каждый UZ Core BiologicallyDerivedProductDispense должен поддерживать

- бизнес-идентификатор выдачи (`identifier`), если он присвоен, всегда вместе с `system`;
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), который выполняет выдача (`basedOn`);
- `status` выдачи (preparation / in-progress / allocated / issued / unfulfilled / returned / entered-in-error / unknown);
- выдаваемый продукт (`product`) и пациента, для которого он предназначен (`patient`);
- участвовавших медицинских работников (`performer.actor`);
- время фактической передачи продукта (`whenHandedOver`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного экземпляра к возвращённой единице. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [минимальная](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.html), [выполненная](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html) и [возвращённая](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html) выдачи.

#### Наименьший BiologicallyDerivedProductDispense, который можно отправить

Каждый ресурс UZ Core указывает свой профиль в `meta.profile` - так сервер узнаёт, по каким правилам его проверять. Кроме этого достаточно трёх обязательных элементов:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" }
}
```

`status` - код из списка статусов выдачи HL7. Его английское отображаемое имя берётся из базовой системы кодов, а узбекское и русское - из supplement DHP. `product` - это `Reference` на [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html), а `patient` - `Reference` на [UZ Core Patient](StructureDefinition-uz-core-patient.html).

#### Компонент крови, выданный для пациента

Отделение переливания крови выдаёт единицу для пациента по назначению. `basedOn` указывает на [назначение](ServiceRequest-example-bdp-dispense-request.html), `performer` - на медицинского работника, выдавшего единицу, `location` - место, откуда она выдана, а `destination` - место, куда она направлена:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "performer": [ { "actor": { "reference": "Practitioner/example-practitioner" } } ],
  "location": { "reference": "Location/example-location-1" },
  "quantity": { "value": 250, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "preparedDate": "2026-11-09T10:15:00+05:00",
  "whenHandedOver": "2026-11-09T10:30:00+05:00",
  "destination": { "reference": "Location/example-location-2" }
}
```

`basedOn` и `performer` повторяются; `location` и `destination` - нет, и оба являются `Reference` на [UZ Core Location](StructureDefinition-uz-core-location.html). `performer.actor` - это `Reference` на [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html). `quantity` - фактически выданное количество, которое не обязательно равно полному объёму исходного продукта. `preparedDate` - время, когда продукт был подобран для этой выдачи, а не время заготовки исходного продукта; `whenHandedOver` - время, когда он был фактически отправлен или передан.

#### Возвращённая единица

Выданная единица возвращена неиспользованной, поэтому `status` становится `returned`. В этом примере заполнены и необязательные коды: отношение между донором и реципиентом, вид проведённого подбора и функция исполнителя:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "returned",
  "originRelationshipType": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-origin-relationship",
        "code": "allogeneic"
      }
    ]
  },
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "matchStatus": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-match-status",
        "code": "crossmatched"
      }
    ]
  },
  "performer": [
    {
      "function": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function",
            "code": "receipt"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "whenHandedOver": "2026-11-09T10:30:00+05:00"
}
```

`originRelationshipType`, `matchStatus` и `performer.function` - это `CodeableConcept` с кодом из системы кодов HL7 для соответствующего элемента; `display` можно не указывать. `matchStatus` говорит, какой вид подбора был проведён. Сами результаты совместимости по ABO и Rh записываются в Observation. `status` описывает выдачу продукта, а не исход трансфузии: прекращённая трансфузия не делает продукт возвращённым (`returned`), а её исход записывается в [Procedure](StructureDefinition-uz-core-procedure.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
