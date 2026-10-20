> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Practitioner описывает отдельного медицинского работника - врача, медицинскую сестру, техника или иного представителя клинического персонала - в рамках Цифровой платформы здравоохранения. Сам по себе ресурс Practitioner несёт сведения о личности, демографические данные и квалификации; в рабочий контекст (организация, специальность, роль) он помещается через [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), на который клинические ресурсы и ссылаются как на исполнителя или запросившую сторону. Записи Practitioner ведутся централизованно: личность и демографические данные поступают из Государственного центра персонализации по PINFL, профессиональный идентификатор - из системы HRM Argos, а квалификации - из Tibtoifa, поэтому перед созданием новой записи следует искать существующего Practitioner по идентификатору.

> Предпочитайте ссылаться на [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), а не на «голый» Practitioner, при фиксации того, кто что-либо выполнил или запросил: один практик может занимать несколько ролей - в разных организациях, специальностях или должностях - и только роль говорит, в каком качестве он действовал.

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) либо должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support при наличии данных и обрабатывать его при получении. Это удобочитаемая для человека сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические привязки.

#### Каждый UZ Core Practitioner должен содержать (Must Have)

Базовый ресурс FHIR Practitioner не имеет обязательных элементов, и данный профиль их не добавляет. На практике вы почти всегда будете заполнять профессиональный идентификатор и имя (см. Must Support ниже).

#### Каждый UZ Core Practitioner должен поддерживать (Must Support)



- идентификатор - в частности, слайс профессионального идентификатора HRM Argos (который несёт PINFL как национальный уникальный индивидуальный идентификатор). См. [Системы идентификаторов](identifiers.html) для поддерживаемых URI систем;
- флаг active;
- имя (фамилия, имя, суффикс, с обязательной привязкой name-use);
- контактные данные telecom (телефон, эл. почта, с обязательной привязкой contact-system);
- пол (с национальным расширением `gender-other`, где это применимо);
- дату рождения и дату/флаг смерти;
- адрес - либо узбекский адрес (кодированные административно-территориальные единицы), либо международный адрес в свободной текстовой форме;
- фотографию;
- одну или несколько квалификаций, каждая с кодом из набора значений лицензий/сертификатов Tibtoifa, а также с периодом действия и выдавшей организацией. [Сертификат специалиста](#specialist-certificates) дополнительно несёт серию и номер в `identifier`, а специальность, категорию и роль - в `code.text`.

> Расширение `gender-other` может использоваться только тогда, когда `gender` установлен в значение `other`.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который сервер примет, до полной записи практика. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по данному профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([пример практика](Practitioner-example-practitioner.html), [практик с расширением пола](Practitioner-example-practitioner-gender-other.html)).

#### Наименьший Practitioner, который вам следует отправлять

Базовый Practitioner не имеет обязательных элементов, но запись полезна только при наличии профессионального идентификатора и имени. Профессиональный идентификатор - это слайс HRM Argos; то, что делает его именно этим слайсом, - его URI `system` (заканчивающийся на `sid/pro/uz/argos`); `type` и `value` просто сопровождают его. Каждый ресурс UZ Core должен также указывать профиль, которому он заявляет о соответствии, в `meta.profile` - именно так сервер узнаёт, по каким правилам выполнять валидацию:

```json
{
  "resourceType": "Practitioner",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
      "value": "9876543210"
    }
  ],
  "name": [ { "use": "official", "text": "Test Test Test", "family": "Test", "given": [ "Test" ] } ]
}
```

Идентификатор Argos несёт PINFL практика как национальный уникальный индивидуальный идентификатор; его код `type` - `NI`. См. [Системы идентификаторов](identifiers.html) для поддерживаемых URI систем. И `identifier.use`, и `name.use` являются обязательными привязками, поэтому `official` должно происходить из привязанных наборов значений.

#### Реалистичная запись практика

На практике вы отправляете демографические данные, поддержки которых ожидает платформа: флаг `active`, `telecom`, `gender`, `birthDate` и `address`. Узбекский адрес использует **кодированные** административно-территориальные единицы (район, город), а не свободный текст - здесь `country` также несёт числовой код:

```json
{
  "resourceType": "Practitioner",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
      "value": "9876543210"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "official",
      "text": "Test Test Test",
      "family": "Test",
      "given": [ "Test" ],
      "suffix": [ "Test" ]
    }
  ],
  "telecom": [ { "system": "phone", "value": "975555555", "use": "mobile" } ],
  "gender": "female",
  "birthDate": "1985-05-06",
  "address": [
    {
      "use": "temp",
      "type": "physical",
      "country": "182",
      "district": "1703217",
      "city": "22070033",
      "line": [ "mahallasi Dilobod, Katortol ko'chasi, 9-uy, 15-xonadon" ]
    }
  ]
}
```

`telecom.system` и `name.use` используют обязательные привязки - значение должно происходить из привязанного набора значений. Коды `district` / `city` берутся из национальных наборов значений - см. [Адреса](general-guidance.html#addresses) о том, откуда поступает каждый код. Для практика, проживающего за рубежом, используйте адрес в свободной текстовой форме с `country`, установленным в иностранный код ISO.

#### Добавление квалификаций, фотографии и статуса смерти

Полная запись несёт `qualification` практика (каждый `code` из набора значений лицензий/сертификатов Tibtoifa, с его `issuer`), `photo` и `deceasedBoolean` / `deceasedDateTime`, когда это применимо. `issuer` квалификации - это обычная `Reference` на [Organization](StructureDefinition-uz-core-organization.html). Эти ключи вписываются в тот же ресурс, что и реалистичная запись выше:

```json
{
  "photo": [
    { "url": "https://media.dhp.uz/practitioner/example.jpg", "size": "1024" }
  ],
  "qualification": [
    {
      "code": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0360", "code": "DIP" }] },
      "issuer": { "reference": "Organization/example-organization" }
    }
  ],
  "deceasedBoolean": true
}
```

`qualification.code` привязан (required) к набору значений лицензий/сертификатов Tibtoifa. Используйте `deceasedDateTime`, когда известна точная дата смерти, или `deceasedBoolean`, когда известен только сам факт.

### Сертификаты специалиста {#specialist-certificates}

Сертификат специалиста выдаёт Министерство здравоохранения; он подтверждает, что медицинский работник может работать по определённой специальности с определённой квалификационной категорией. Сертификаты хранятся в Tibtoifa, которая возвращает все сертификаты медицинского работника по PINFL. Каждый сертификат становится одним элементом `qualification` в Practitioner.

<div>{% include practitioner-certificate-sequence.svg %}</div><br clear="all"/>

#### Что возвращает Tibtoifa

Одна запись ответа Tibtoifa для PINFL `42410540220011`:

```
{
  "pinfl": "42410540220011",
  "serial": "CA",
  "number": "008815",
  "category": { "uz": "Oliy toifa", "ru": "Высшая категория", "en": "Higher category" },
  "speciality": { "uz": "psixiatriya", "ru": "психиатрия", "en": "psychiatry" },
  "medicaleRoleName": { "uz": "Shifokor", "ru": "Врач", "en": "Doctor" },
  "givenDate": "2024-05-05",
  "validityPeriod": "2029-05-05",
  "commandNumber": "35",
  "commandDate": "2024-05-05"
}
```

Запись также содержит внутренние идентификаторы Tibtoifa (`id`, `serialId`, `categoryId`, `specialityId`, `medicalRoleId`) и каракалпакское (`kaa`) название рядом с каждым переводимым полем.

#### Соответствие полей FHIR

| Поле Tibtoifa | Пример | Элемент FHIR | Правило |
|---|---|---|---|
| `pinfl` | `42410540220011` | `Practitioner.identifier` (PINFL) | По нему находят медицинского работника; в квалификации не повторяется |
| `serial` + `number` | `CA` + `008815` | `qualification.identifier.value` | Серия и номер без разделителя: `CA008815` |
| - | - | `qualification.identifier.system` | Всегда `https://dhp.uz/fhir/core/sid/pro/uz/specialist-certificate` |
| - | - | `qualification.code.coding` | Всегда `http://terminology.hl7.org/CodeSystem/v2-0360#CER` "Certificate" |
| `speciality`, `category`, `medicaleRoleName` | `psixiatriya`, `Oliy toifa`, `Shifokor` | `qualification.code.text` | `{специальность}, {категория}, {роль}` на языке ресурса: `Psixiatriya, oliy toifa, shifokor` |
| те же поля на `ru`, `kaa`, `en` | `Психиатрия, высшая категория, врач` | расширение `translation` у `code.text` | Одно расширение на каждый язык |
| `givenDate` | `2024-05-05` | `qualification.period.start` | Дата выдачи |
| `validityPeriod` | `2029-05-05` | `qualification.period.end` | Последний день действия |
| `id`, `serialId`, `categoryId`, `specialityId`, `medicalRoleId` | `9448`, `2`, `1`, `90`, `1` | - | Внутренние идентификаторы Tibtoifa, не передаются |
| `commandNumber`, `commandDate` | `35`, `2024-05-05` | - | Не передаются |

Специальность, категория и роль пока передаются текстом; кодированные наборы значений для них могут появиться в следующей версии.

#### Правила

- **Один сертификат - одна квалификация.** У медицинского работника с сертификатами по двум специальностям два элемента `qualification`.
- **Сопоставление по идентификатору.** Если сертификат получен повторно (например, после продления изменился срок действия), найдите существующую квалификацию по `identifier.system` и `identifier.value` и обновите её, а не добавляйте дубликат.
- **Истёкшие сертификаты сохраняются.** Сертификат, у которого `period.end` уже прошёл, остаётся в записи; период показывает, что он больше не действует.
- **Буквы серии.** В Tibtoifa встречаются серии латиницей и кириллицей (например, `CA` и `ТТБ`). Передавайте серию ровно так, как её вернула Tibtoifa, чтобы один и тот же сертификат всегда давал одинаковый `identifier.value`.
- **Нет категории.** Категория Tibtoifa `0` ("None") означает, что категория неизвестна, - не включайте её в текст. Категория `5` ("Toifasiz", без категории) - реальное значение и записывается.

#### Сертификат в Practitioner

Квалификация, построенная из записи Tibtoifa выше:

```json
{
  "resourceType": "Practitioner",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "42410540220011"
    }
  ],
  "qualification": [
    {
      "identifier": [
        {
          "system": "https://dhp.uz/fhir/core/sid/pro/uz/specialist-certificate",
          "value": "CA008815"
        }
      ],
      "code": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code": "CER",
            "display": "Certificate"
          }
        ],
        "text": "Psixiatriya, oliy toifa, shifokor",
        "_text": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/translation",
              "extension": [
                { "url": "lang", "valueCode": "ru" },
                { "url": "content", "valueString": "Психиатрия, высшая категория, врач" }
              ]
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/translation",
              "extension": [
                { "url": "lang", "valueCode": "en" },
                { "url": "content", "valueString": "Psychiatry, higher category, doctor" }
              ]
            }
          ]
        }
      },
      "period": { "start": "2024-05-05", "end": "2029-05-05" }
    }
  ]
}
```

Система номеров сертификатов описана в [системе именования сертификатов специалиста](NamingSystem-uzb-specialist-certificate.html); полная запись - в [примере медицинского работника](Practitioner-example-practitioner.html).

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
