> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Substance представляет конкретную порцию вещества, отобранную для санитарно-эпидемиологического исследования: упаковку пищевого продукта, воду из скважины, воздух помещения или почву с детской площадки. Ресурс содержит номер образца и номер партии, дату окончания срока годности и отобранное количество. Что это за вещество - его наименования, классификация и производитель - здесь не повторяется: `code` ссылается на запись [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html), из которой оно было выбрано. [UZ Core Specimen](StructureDefinition-uz-core-specimen.html), взятый из вещества, ссылается на него в `subject`.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Substance должно содержать

`instance`, всегда равный `true`: ресурс описывает отобранную порцию, а не вещество в целом. `code` со ссылкой `reference` на запись [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html). Если передаётся идентификатор из [таблицы ниже](#identifier-slices), обязательны и его `system`, и его `value`.

#### Каждое UZ Core Substance должно поддерживать

- идентификатор образца и номер партии (см. [таблицу ниже](#identifier-slices));
- `status` записи (active / inactive / entered-in-error);
- `category` - вид образца - вода, воздух, почва или пищевые продукты -;
- `code` - запись справочника, при необходимости с её кодом SNOMED CT или национальным кодом;
- дату окончания срока годности партии `expiry`;
- количество `quantity`, отобранное в качестве образца, в единицах UCUM.

### Построение JSON шаг за шагом

Примеры ниже идут от минимального образца к полному. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены внизу страницы ([пастеризованное молоко](Substance-example-substance-pasteurized-milk.html), [сырое коровье молоко](Substance-example-substance-raw-milk.html)).

#### Минимальное Substance, которое следует отправлять

`instance` и `code` обязательны. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет соответствие, в `meta.profile`:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-raw-milk" }
  },
  "quantity": { "value": 0.5, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

`code` имеет тип `CodeableReference`: его `reference` указывает на SubstanceDefinition, поэтому получатель берёт наименования и производителя оттуда. `status` - простой код без `display`; его узбекское и русское отображения берутся из [дополнения статусов вещества](CodeSystem-substance-status-cs.html).

#### Образец продукции с партией

Образец изготовленной продукции, например упакованного молока, содержит также идентификатор образца, номер партии, дату окончания срока годности и код вещества в `code.concept`, чтобы образцы можно было искать по коду, не читая определение:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-sample", "value": "NMN-2026-000123" },
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-lot", "value": "SER-2611-15" }
  ],
  "instance": true,
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs",
          "code": "sbnam-0008-00013",
          "display": "Pasterlangan ichimlik suti"
        },
        {
          "system": "http://snomed.info/sct",
          "code": "3718001",
          "display": "Cow's milk"
        }
      ]
    },
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "description": "Pasterlangan ichimlik suti, 1 l karton qadoq",
  "expiry": "2026-11-25",
  "quantity": { "value": 1, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

Если передаётся `code.concept`, в нём должны быть те же коды, что и в SubstanceDefinition: здесь национальный код пастеризованного питьевого молока из набора значений [наименований веществ](ValueSet-substance-names-vs.html) вместе с его более широким концептом SNOMED CT. Упаковка и другие замечания передаются в `description` свободным текстом.

#### Заявленный состав

Если сопроводительный документ указывает содержание ингредиента, например жирность молока, передайте его в `ingredient` в виде отношения. Значение, измеренное лабораторией, - это отдельное [UZ Core Observation](StructureDefinition-uz-core-observation.html):

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "ingredient": [
    {
      "quantity": {
        "numerator": { "value": 3.2, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
        "denominator": { "value": 1, "unit": "1", "system": "http://unitsofmeasure.org", "code": "1" }
      },
      "substanceCodeableConcept": { "text": "Sut yog'i" }
    }
  ]
}
```

#### Срезы идентификаторов {#identifier-slices}

Образец может содержать идентификаторы ниже. Каждый выбирается по URI в `system`, поэтому URI должен совпадать точно:

| Идентификатор | `system` | Кем выдаётся |
|---|---|---|
| [Номер образца вещества](NamingSystem-uzb-substance-sample-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-sample` | ЛИС СЭС, при добавлении образца в акт отбора |
| [Номер партии вещества](NamingSystem-uzb-substance-lot-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-lot` | Производитель, указан на продукции |

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
