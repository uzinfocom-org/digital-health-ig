> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core PractitionerRole - это связующее звено, которое помещает [Practitioner](StructureDefinition-uz-core-practitioner.html) внутрь [Organization](StructureDefinition-uz-core-organization.html) - и при необходимости в [Location](StructureDefinition-uz-core-location.html) или предоставляет [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) - с указанием роли и специальности. Это тот контекст, на который клинические ресурсы ссылаются как на исполнителя или заказчика: он отвечает на вопрос «в каком качестве и от чьего имени действовал данный специалист». Роли и специальности кодируются из национальных наборов значений, производных от Tibtoifa.

> Когда клинический ресурс фиксирует, кто совершил действие, ссылайтесь на PractitionerRole, а не на «голый» [Practitioner](StructureDefinition-uz-core-practitioner.html): один и тот же специалист может иметь несколько ролей, и только роль фиксирует то качество - и организацию, - от имени которой он действовал.

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все из них обязательны, но ваша система должна заполнять каждый элемент Must Support, когда располагает соответствующими данными, и обрабатывать его при получении. Это человекочитаемое резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические привязки.

#### Каждый UZ Core PractitionerRole должен содержать (Must Have)

Базовый ресурс FHIR PractitionerRole не имеет обязательных элементов, и данный профиль их не добавляет. На практике вы будете заполнять ссылки на practitioner и organization вместе (см. раздел Must Support ниже).

#### Каждый UZ Core PractitionerRole должен поддерживать (Must Support)



- идентификатор роли;
- флаг active;
- ссылку на practitioner (кто действует);
- ссылку на organization (работодатель или принимающая организация);
- код роли (`code`) - должность/профессия, из национального набора значений ролей;
- специальность - клиническая специализация, из национального набора значений специализаций профессий;
- ссылку на location (где выполняется роль);
- ссылку на healthcareService (услуга, которую обеспечивает роль).

> Роль и специальность разделены на слайсы по национальным системам кодов DHP, но свободный текст (`code.text`) допускается там, где кодированное значение недоступно.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полностью кодированной роли. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по данному профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([кодированная роль](PractitionerRole-example-practitionerrole.html), [роль в свободном тексте](PractitionerRole-example-practitionerrole-freetext.html)).

#### Наименьший PractitionerRole, который следует отправлять

Базовый ресурс не имеет обязательных элементов, и данный профиль их не добавляет, но PractitionerRole полезен лишь тогда, когда он действительно связывает кого-то с каким-то местом. На практике минимум, который вы отправляете, - это `practitioner` (кто действует) и `organization` (от чьего имени), обе простые ссылки, плюс флаг `active`. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет о соответствии, в `meta.profile`:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" }
}
```

`practitioner` и `organization` - это простые значения `Reference`: цель располагается непосредственно под `reference` в виде `Type/id`. Они ссылаются соответственно на [Practitioner](StructureDefinition-uz-core-practitioner.html) и на [Organization](StructureDefinition-uz-core-organization.html).

#### Реалистичная, кодированная роль

На практике вы указываете качество: `code` (должность/профессия) и `specialty` (клиническая специализация), а также то, где выполняется роль, через `healthcareService`. И `code`, и `specialty` - это **списки `CodeableConcept`** (не CodeableReference), и каждый из них разделён на слайсы по национальной системе кодов DHP, поэтому URI в `system` должен совпадать в точности. `healthcareService` - это список простых ссылок:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
          "code": "2212.14",
          "display": "Vrach ginekolog"
        }
      ]
    }
  ],
  "specialty": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs",
          "code": "394585009",
          "display": "Akusherlik va ginekologiya"
        }
      ]
    }
  ],
  "healthcareService": [ { "reference": "HealthcareService/example-healthcareservice" } ]
}
```

Код роли `code` берётся из национальной системы `position-and-profession-cs`, а `specialty` - из `profession-specialization-cs`. Это две разделённые на слайсы системы в данном профиле; использование любой другой `system` просто оставляет слайс несопоставленным. О том, как формируются системы кодов DHP, см. [Терминология](general-guidance.html#terminology).

#### Фиксация места выполнения роли

Роль также может ссылаться на [Location](StructureDefinition-uz-core-location.html), где она выполняется. `location` (как и `healthcareService`) - это список простых ссылок; обе встраиваются в тот же ресурс, что и кодированная роль выше:

```json
{
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ],
  "location": [
    { "reference": "Location/example-location" }
  ]
}
```

#### Когда кодированной роли нет {#free-text-role}

Если должность ещё отсутствует в национальном наборе значений, не придумывайте код - используйте свободный текст `code.text` вместо `coding`. Роль по-прежнему связывает practitioner с organization, она лишь описывает качество словами (полный экземпляр: [роль в свободном тексте](PractitionerRole-example-practitionerrole-freetext.html)):

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    { "text": "Surgeon at Republican Specialized Scientific Center of Surgery, inpatient care" }
  ],
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ]
}
```

`code.text` несёт человекочитаемую роль; вы можете указать `text` вместе с `coding` или сам по себе, когда не подходит ни один национальный код. О том, когда стоит прибегнуть к свободному тексту вместо кода, см. [Отсутствующие и скрытые данные](general-guidance.html#missing-data).

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
