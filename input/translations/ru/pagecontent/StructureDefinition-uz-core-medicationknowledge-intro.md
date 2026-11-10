> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core MedicationKnowledge содержит справочные сведения о лекарственном препарате в DHP: используется ли запись и какие цены утверждены для препарата - предельная цена, оптовая и розничная цены и цена [Государственного фонда медицинского страхования (ФГМС)](https://ig.shif.uz/build/core/ru/index.html), каждая с периодом, в течение которого она действует. Сам препарат этот ресурс не описывает. Препарат - это [UZ Core Medication](StructureDefinition-uz-core-medication.html), на который запись ссылается через `associatedMedication`, а организация, которая публикует или ведёт запись, - это [UZ Core Organization](StructureDefinition-uz-core-organization.html). Запись не относится к конкретному пациенту: все системы пользуются одной и той же записью, поэтому прежде чем создавать новую, [найдите её по идентификатору](#finding).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core MedicationKnowledge должно содержать

У базового ресурса MedicationKnowledge нет обязательных элементов верхнего уровня. Этот профиль добавляет один: ровно один `associatedMedication` - ссылку на [UZ Core Medication](StructureDefinition-uz-core-medication.html), к которому относится запись. Каждый передаваемый `cost` должен содержать один период `effectiveDate`, `type`, указывающий, какая это цена, и саму цену в `costMoney`. Если передаётся идентификатор DHP, обязательны и его `system`, и его `value`.

#### Каждое UZ Core MedicationKnowledge должно поддерживать

- идентификатор записи в DHP (см. [таблицу ниже](#identifier-slices));
- `status` - используется ли запись ([active / inactive / entered-in-error](ValueSet-medicationknowledge-status-vs.html));
- `associatedMedication` - [UZ Core Medication](StructureDefinition-uz-core-medication.html), к которому относится запись;
- `author` - [UZ Core Organization](StructureDefinition-uz-core-organization.html), которая публикует или ведёт запись;
- каждый `cost` - какая это цена (`type`, из [набора значений типов цен](ValueSet-medicationknowledge-cost-type-vs.html)), период её действия (`effectiveDate`) и сумма.

### Поиск существующего MedicationKnowledge {#finding}

Прежде чем создавать запись, найдите её:

```
# by DHP identifier - the reliable match
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123

# by product - the entry for a Medication you already have, or for its registration number
GET [base]/MedicationKnowledge?associated-medication=Medication/example-medication
GET [base]/MedicationKnowledge?associated-medication.identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123

# active entries, or entries with a price from a given source
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

`associated-medication` - [параметр поиска UZ Core](SearchParameter-uz-core-medicationknowledge-associated-medication.html): в FHIR R5 нет параметра для `associatedMedication`. Используйте цепочку с `identifier`, чтобы искать по регистрационному номеру или GTIN препарата, не читая сначала Medication.

### Сборка JSON, шаг за шагом

Примеры ниже идут от записи с одной ценой до записи, цена в которой меняется. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр приведён по ссылке внизу страницы ([предельная цена](MedicationKnowledge-example-medication-knowledge-price-ceiling.html)).

#### Наименьший MedicationKnowledge, который вам следует отправлять

`associatedMedication` - единственный обязательный элемент. Каждый ресурс UZ Core также должен указывать в `meta.profile` профиль, которому он заявляет соответствие, - так сервер узнаёт, по каким правилам его проверять. Передавайте и `status`, чтобы получатели знали, что запись используется, и `cost` для каждой утверждённой цены:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    }
  ]
}
```

`associatedMedication` - обычный `Reference`, и в этом профиле он содержит ровно один препарат. `effectiveDate` - это `Period`: `start` без `end` означает, что цена действует с этой даты до дальнейшего уведомления. Система кодов типов цен имеет узбекские отображаемые названия с английскими и русскими обозначениями, поэтому передаваемый `display` должен соответствовать `language` ресурса. Цена - это значение `Money` с кодом валюты ISO 4217 - `UZS` для узбекского сума.

#### Запись с несколькими ценами

На практике запись содержит все утверждённые цены препарата, каждую в отдельном `cost`, вместе с идентификатором DHP и организацией, которая публикует запись. `source` называет орган, установивший цену:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge",
      "value": "MK-2026-000123"
    }
  ],
  "status": "active",
  "author": { "reference": "Organization/[id]" },
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00003",
            "display": "Chakana narx"
          }
        ]
      },
      "costMoney": { "value": 4300, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00004",
            "display": "DTSJ narx"
          }
        ]
      },
      "source": "DTSJ",
      "costMoney": { "value": 4000, "currency": "UZS" }
    }
  ]
}
```

`cost.type` имеет расширяемую (`extensible`) связку: используйте код из [набора значений типов цен](ValueSet-medicationknowledge-cost-type-vs.html), когда подходящий есть, и другую систему кодов - только для цены, которую ни один из них не покрывает. `source` - свободный текст, и поиск `source-cost` сопоставляет его точно, поэтому всегда пишите название органа одинаково. `status` - простой код без `display`; его узбекские и русские отображаемые названия берутся из [дополнения статусов MedicationKnowledge](CodeSystem-medicationknowledge-status-cs.html).

#### Когда цена меняется

`effectiveDate` хранит историю цен в одной записи. Когда утверждена новая цена, закройте старый период датой `end`, добавьте новый `cost` того же `type` с новым периодом и обновите запись:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01", "end": "2026-12-31" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2027-01-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4700, "currency": "UZS" }
    }
  ]
}
```

Чтобы найти цену, действующую на заданную дату, возьмите `cost` нужного `type`, период которого содержит эту дату. Когда препарат снят с обращения, установите `status` в `inactive`, а не удаляйте запись.

#### Срез идентификатора {#identifier-slices}

Запись может содержать приведённый ниже идентификатор DHP. Он выбирается по URI `system`, поэтому URI должен совпадать точно:

| Идентификатор | `system` | Кем выдаётся |
|---|---|---|
| [Идентификатор MedicationKnowledge](NamingSystem-uzb-medication-knowledge-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge` | DHP |

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
