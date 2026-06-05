> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Organization представляет медицинскую или административную организацию - больницу, поликлинику, медицинское объединение или одно из его подразделений - в рамках Платформы цифрового здравоохранения. На неё ссылаются всюду, где ресурсу нужно указать ответственное учреждение: как на работодателя в [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), как на управляющего местоположением [Location](StructureDefinition-uz-core-location.html) или как на поставщика услуги [HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Организации ведутся в системе Argos HRM и идентифицируются по налоговому ID Soliq, поэтому перед созданием новой организации следует выполнить поиск существующей по идентификатору. Организации могут образовывать иерархию.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Organization должно содержать

Единственный обязательный элемент, который добавляет этот профиль, - это название на узбекском языке - авторитетное название организации, при этом русский и каракалпакский варианты предоставляются как расширения-переводы.

#### Каждое UZ Core Organization должно поддерживать



- идентификатор - срез с налоговым ID Soliq, срез с ID организации Argos и срез с ID плательщика страхования SHIF/SMIF (код из 3 букв + 6 цифр, например `OAA000024`). Поддерживаемые URI систем см. в разделе [Системы идентификаторов](identifiers.html);
- флаг active;
- тип (type) - несколько кодированных срезов классификации (тип организации, группа подчинённости, номенклатурная группа, организационная структура, группа служб, специализация, без юридического статуса и группировка), взятых из национальных кодовых систем;
- национальное расширение зоны обслуживания (coverage-area) (обслуживаемая географическая зона);
- контактные данные;
- ссылку partOf на родительскую организацию (связь иерархии);
- ссылку endpoint.

> Заполняйте только те *срезы* идентификатора и типа, которые применимы к вашей организации - заполнять каждый срез не нужно.

### Сборка JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полностью категоризированной организации. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([онкологический центр](Organization-example-organization.html), [медицинское объединение](Organization-xonobod-medical-association.html), [инфекционная больница](Organization-tashkent-diseases-hospital.html)).

#### Наименьшая организация, которую вам следует отправлять

`name` - единственный обязательный элемент - авторитетное узбекское название организации. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет соответствие, в `meta.profile`, чтобы сервер знал, по каким правилам проводить валидацию. На практике следует всегда также передавать налоговый ID Soliq, поскольку организации сопоставляются именно по нему. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
  "name": "Xonobod shahar tibbiyot birlashmasi",
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "TAX", "display": "Tax ID number" }] },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
      "value": "200248215"
    }
  ]
}
```

То, что делает этот идентификатор налоговым ID Soliq, - это его URI `system`, оканчивающийся на `sid/org/uz/soliq`. Именно `system` выбирает срез, поэтому он должен совпадать в точности. Чтобы передать другой идентификатор, используйте соответствующие `system` и `type` из [таблицы ниже](#identifier-slices).

#### Добавление переводов узбекского названия

Узбекское `name` является авторитетным; русское и каракалпакское названия передаются вместе с ним как расширения-переводы в `_name` (обратите внимание на ведущее подчёркивание - именно туда FHIR прикрепляет расширения к примитиву). Каждый перевод - это одно расширение `translation`, несущее код языка `lang` и переведённое содержимое `content`:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
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
  }
}
```

#### Полностью категоризированная организация

На практике вы передаёте полную картину: каждый идентификатор, которым обладает организация, классификацию `type`, контактные данные и обслуживаемую зону. Обратите внимание, что `type` - это единственный `CodeableConcept`, чей массив `coding` содержит каждую классификацию - они различаются по `system`, а не по отдельным записям `type`. Расширение `coverage-area` (обслуживаемая географическая зона) располагается в корне ресурса:

```json
{
  "resourceType": "Organization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  "active": true,
  "name": "Respublika onkologiya markazi",
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "TAX",
            "display": "Tax ID number"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
      "value": "200935935"
    },
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "XX",
            "display": "Organization Identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/argos",
      "value": "9512"
    },
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NIIP",
            "display": "National Insurance Payor Identifier (Payor)"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/shif",
      "value": "OAA000024",
      "period": { "start": "2024-01-15" }
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organization-types-uz-cs",
          "code": "I",
          "display": "Boshqaruv boyicha taqsimlanishi"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-subordination-group-cs",
          "code": "I_1",
          "display": "Respublika tassarufidagi muassasalari"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/nomenclature-group-cs",
          "code": "II_100",
          "display": "Shifoxona muassasalari"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-structure-cs",
          "code": "110",
          "display": "Ixtisoslashtirilgan ilmiy-amaliy tibbiyot markazi"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-service-group-cs",
          "code": "III_100",
          "display": "Poliklinika bo'limi va statsionar bo'limi mavjud"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-specialization-cs",
          "code": "145.0",
          "display": "Kattalar onkologiyasi"
        }
      ]
    }
  ],
  "contact": [
    {
      "telecom": [
        { "system": "phone", "value": "+998711234567" },
        { "system": "email", "value": "info@example.uz" },
        { "system": "url", "value": "https://cancercenter.uz" }
      ],
      "address": {
        "line": [ "Farobiy ko'chasi, 383" ],
        "state": "1726",
        "district": "1726269",
        "country": "UZ"
      }
    }
  ]
}
```

Каждый `type.coding` связан со своей собственной национальной кодовой системой и выбирается по своему URI `system` - передавайте только применимые классификации. Коды `state` / `district` в адресе берутся из национальных наборов значений (см. [Адреса](general-guidance.html#addresses)). Чтобы прикрепить организацию к родительской в иерархии, добавьте `partOf` как обычную ссылку: `{ "reference": "Organization/parent-id" }`.

#### Срезы идентификаторов {#identifier-slices}

Организация может обладать вплоть до трёх идентификаторов; заполняйте только те, которые у вас есть. Каждый выбирается по своему URI `system`, поэтому он должен совпадать в точности:

| Идентификатор | `system` | код `type` |
|---|---|---|
| Налоговый ID Soliq | `https://dhp.uz/fhir/core/sid/org/uz/soliq` | `TAX` |
| ID организации Argos | `https://dhp.uz/fhir/core/sid/org/uz/argos` | `XX` |
| ID плательщика страхования SHIF | `https://dhp.uz/fhir/core/sid/org/uz/shif` | `NIIP` |

Значение идентификатора SHIF должно состоять из 3 заглавных латинских букв, за которыми следуют 6 цифр (например, `OAA000024`). Полный список поддерживаемых URI систем см. в разделе [Системы идентификаторов](identifiers.html).

#### Запись зоны обслуживания

Когда организация обслуживает определённую географическую зону, добавьте национальное расширение `coverage-area` в корень ресурса. Его `valueCodeableConcept` несёт код региона из кодовой системы регионов:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
  "name": "Xonobod shahar tibbiyot birlashmasi",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/coverage-area",
      "valueCodeableConcept": {
        "coding": [
          { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/states-cs", "code": "1703", "display": "Andijon viloyati" }
        ]
      }
    }
  ]
}
```

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
