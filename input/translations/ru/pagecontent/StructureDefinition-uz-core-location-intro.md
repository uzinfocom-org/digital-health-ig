> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Location представляет физическое место - здание, отделение, филиал, палату, кабинет или койку, - которым управляет [Organization](StructureDefinition-uz-core-organization.html). На него ссылается [Encounter](StructureDefinition-uz-core-encounter.html), чтобы указать, где была оказана помощь, и [HealthcareService](StructureDefinition-uz-core-healthcareservice.html), чтобы указать, где предоставляется услуга. Локации могут быть вложенными, например палата внутри здания внутри площадки.

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все из них являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это краткое описание в человекочитаемом виде; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Location должен содержать (Must Have)

Единственный обязательный элемент, который добавляет этот профиль, - это название на узбекском языке - авторитетное наименование локации, при этом русский и каракалпакский варианты предоставляются как расширения перевода.

#### Каждый UZ Core Location должен поддерживать (Must Support)



- идентификатор - слайс налогового идентификатора Soliq и слайс единицы (филиал, палата или койка, типизированные из набора значений location-kinds). Поддерживаемые URI систем см. в разделе [Системы идентификаторов](identifiers.html);
- статус (active / suspended / inactive, из обязательного набора значений);
- тип места (кодируется из национального набора значений location-types);
- контактные данные и адрес (кодированные административные деления Узбекистана);
- позиция (географические координаты);
- ссылка managingOrganization (кто управляет местом);
- ссылка partOf на содержащую локацию, hoursOfOperation и ссылка endpoint.

> `operationalStatus` (статус койки) зарезервирован для будущего использования.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полноценного медицинского учреждения. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию против этого профиля. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([онкологический центр](Location-example-location-1.html), [филиал отделения](Location-example-location-2.html), [психиатрическая больница](Location-example-location.html)).

#### Наименьший Location, который вам следует отправлять

`name` - единственный элемент, который этот профиль делает обязательным, и он несёт авторитетное узбекское наименование места. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет о соответствии, в `meta.profile` - именно так сервер понимает, против каких правил выполнять валидацию. `status` (`active` / `suspended` / `inactive`) тоже стоит отправлять. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona"
}
```

`status` использует обязательную (required) связку (`active` / `suspended` / `inactive`); значение должно происходить из этого набора значений. Простого названия плюс статуса достаточно, чтобы зарегистрировать место, на которое затем можно ссылаться из [Encounter](StructureDefinition-uz-core-encounter.html) или [HealthcareService](StructureDefinition-uz-core-healthcareservice.html).

#### Добавление многоязычного названия, типа и адреса

Узбекский - это авторитетный `name`; русский и каракалпакский идут вместе с ним как расширения `translation` на базовом элементе `_name`. Добавьте `type` места (здесь онкологический центр, кодированный), `address` с использованием **кодированных** административных делений Узбекистана и `managingOrganization`, который им управляет:

```json
{
  "resourceType": "Location",
  "language": "uz",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "mode": "instance",
  "name": "Respublika onkologiya markazi",
  "_name": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Республиканский онкологический центр" }
        ]
      },
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "kaa" },
          { "url": "content", "valueString": "Respublika onkologiya orayı" }
        ]
      }
    ]
  },
  "type": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode", "code": "ONCL" }] }
  ],
  "address": {
    "type": "postal",
    "line": ["Farobi, 383"],
    "city": "22070022",
    "district": "1735243",
    "country": "UZ"
  },
  "managingOrganization": { "reference": "Organization/example-organization" }
}
```

Обратите внимание на ведущее подчёркивание в `_name`: именно сюда FHIR прикрепляет расширения перевода, которые сопровождают строку `name`. `type` кодируется из национального набора значений location-types, а `address` - это единичный объект (не список) - его `city` и `district` являются национальными административными кодами, а не свободным текстом (см. [Адреса](general-guidance.html#addresses)). `managingOrganization` - это простой `Reference` (`{ "reference": "Organization/id" }`).

#### Добавление идентификаторов - налоговый ID и единица

Учреждение несёт налоговый идентификатор Soliq; подразделение (филиал, палата или койка) вместо этого несёт идентификатор единицы. Элемент `identifier` нарезается на слайсы по `system`, поэтому URI `system` - это то, что выбирает каждый слайс, и он должен совпадать в точности. Слайс налогового ID:

```json
"identifier": [
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "TAX", "display": "Tax ID number" }] },
    "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
    "value": "200935935"
  }
]
```

Для отделения внутри учреждения используйте слайс единицы - его `type` кодируется из набора значений location-kinds, при этом `use` зафиксирован как `official`:

```json
"identifier": [
  {
    "use": "official",
    "system": "https://dhp.uz/fhir/core/NamingSystem/location-unit",
    "type": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/location-kinds-cs",
          "code": "Branch",
          "display": "Bo'limi"
        }
      ]
    },
    "value": "1"
  }
]
```

Эти массивы `identifier` вставляются в тот же ресурс, что и в примерах выше. Поддерживаемые URI систем см. в разделе [Системы идентификаторов](identifiers.html).

#### Когда адрес задан свободным текстом

Для места, чьё расположение не хранится в виде кодированных административных делений, отправляйте свободнотекстовый `address.text` вместо кодированных полей `city` / `district`:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona",
  "address": { "text": "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45" }
}
```

Предпочитайте кодированную форму, когда она у вас есть; прибегайте к `address.text` только тогда, когда административные коды недоступны. Чтобы вложить одно место в другое (палату внутри здания), сошлитесь на содержащее место через `partOf`.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
