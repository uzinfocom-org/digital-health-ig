# Системы идентификаторов

Это руководство описывает использование систем идентификаторов в рамках Цифровой платформы здравоохранения Узбекистана (DHP) для идентификации пациентов, медицинских работников и организаций.

## Обзор

Реализация UZ Core использует иерархическую систему доменов идентификаторов. Все идентификаторы следуют структуре:

```
https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]
```

Где:
- `namespace`: `pid` (личные), `pro` (профессиональные), `org` (организационные) или `doc` (документные);
- `country`: двухбуквенный код страны по ISO 3166-1 (например, `uz` для Узбекистана);
- `type`: тип идентификатора (например, `ppn` для паспорта, `ni` для национального ID);
- `subtype`: опциональная подкатегория (например, `local`, `intl` для типов паспорта).

Полный перечень всех поддерживаемых систем идентификаторов по всем странам см. в [CodeSystem IdentifierDomainCS](CodeSystem-identifier-domain-cs.html).

## Идентификаторы пациентов

### Национальный ID (PINFL)

Национальный уникальный идентификатор (PINFL — Personal Identification Number for Foreign and Local citizens) является основным идентификатором граждан и резидентов Узбекистана.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/ni`

```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "30211975910033"
    }
  ]
}
```

### Паспорт — внутренний (local)

Внутренние паспорта используются для идентификации внутри Узбекистана.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "PPN",
            "display": "Passport number"
          }
        ]
      },
      "use": "official",
      "value": "AC1234567"
    }
  ]
}
```

### Идентификаторы для неустановленных пациентов

Когда пациента невозможно сразу идентифицировать (например, поступил без сознания и не может предъявить документы), платформа предоставляет два типа идентификаторов. При наличии возможности всегда предпочтительнее временный номер медицинской карты, привязанный к организации.

| Сценарий | Какой идентификатор использовать |
|----------|----------------------------------|
| Неустановленный пациент поступил в известную медицинскую организацию | `medicalRecordTemp` (предпочтительно) |
| Неустановленный пациент, организация неизвестна или нет налогового ID | `unknownPatient` (запасной вариант) |

#### Временный номер медицинской карты (предпочтительный)

Используйте этот идентификатор, когда неустановленный пациент поступил в медицинскую организацию и налоговый ID организации (Soliq) известен. Этот вариант предпочтителен, поскольку обеспечивает прослеживаемость до выдавшей организации.

**Шаблон System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt`

Пример (для организации с налоговым ID `200935935`):

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/mrt",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MRT",
            "display": "Temporary Medical Record Number"
          }
        ]
      },
      "use": "temp",
      "value": "550e8400-e29b-41d4-a716-446655440000"
    }
  ]
}
```

#### Идентификатор неизвестного пациента (запасной вариант)

Используйте этот идентификатор только в случае, когда принимающая организация неизвестна или её налоговый ID недоступен. По возможности всегда предпочитайте временный номер медицинской карты, привязанный к организации.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/mrt`

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/mrt",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR",
            "display": "Medical record number"
          }
        ]
      },
      "use": "temp",
      "value": "550e8400-e29b-41d4-a716-446655440001"
    }
  ]
}
```

### Иностранные паспорта и водительские удостоверения

Платформа поддерживает идентификацию иностранных граждан по номеру паспорта или водительского удостоверения. System URI следует тому же шаблону с использованием двухбуквенного кода страны по ISO 3166-1:

**Шаблоны System URI**: `https://dhp.uz/fhir/core/sid/pid/{country-code}/ppn` — для паспортов, `https://dhp.uz/fhir/core/sid/pid/{country-code}/dl` — для водительских удостоверений.

Пример для эстонского паспорта:

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/ee/ppn",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "PPN",
            "display": "Passport number"
          }
        ]
      },
      "use": "official",
      "value": "K1234567"
    }
  ]
}
```

Полный перечень поддерживаемых идентификаторов пациентов, включая все страны для иностранных паспортов и водительских удостоверений, см. в наборе значений [PatientIdentifierDomainVS](ValueSet-patient-identifier-domain-vs.html).

## Идентификаторы медицинских работников

### ID медицинского работника (HRM Argos)

Медицинские работники идентифицируются с помощью системы управления кадрами Argos (Human Resource Management, HRM).

**System URI**: `https://dhp.uz/fhir/core/sid/pro/uz/argos`

```json
{
  "resourceType": "Practitioner",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "9876543210"
    }
  ],
  "active": true,
  "name": [{"use": "official", "family": "Karimov", "given": ["Ahmed"]}]
}
```

Полный перечень поддерживаемых идентификаторов медицинских работников см. в наборе значений [PractitionerIdentifierDomainVS](ValueSet-practitioner-identifier-domain-vs.html).

## Идентификаторы организаций

### Налоговый ID (Soliq)

Организации идентифицируются по налоговому идентификационному номеру, присвоенному Государственным налоговым комитетом.

**System URI**: `https://dhp.uz/fhir/core/sid/org/uz/soliq`

```json
{
  "resourceType": "Organization",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "TAX",
            "display": "Tax ID number"
          }
        ]
      },
      "use": "official",
      "value": "200935935"
    }
  ]
}
```

### Фонд государственного медицинского страхования (ФГМС)

Медицинские организации, имеющие договор с Фондом государственного медицинского страхования (ФГМС) Республики Узбекистан, идентифицируются по своему коду ФГМС. Код соответствует шаблону `^[A-Z]{3}[0-9]{6}$` — 3 заглавные латинские буквы, за которыми следуют 6 цифр (например, `OAA000024`).

**System URI**: `https://dhp.uz/fhir/core/sid/org/uz/shif`

```json
{
  "resourceType": "Organization",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/org/uz/shif",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NIIP",
            "display": "National Insurance Payor Identifier (Payor)"
          }
        ]
      },
      "use": "official",
      "value": "OAA000024"
    }
  ]
}
```

Полный перечень поддерживаемых идентификаторов организаций см. в наборе значений [OrganizationIdentifierDomainVS](ValueSet-organization-identifier-domain-vs.html).

## Идентификаторы документов

Документы идентифицируются в пространстве имён `doc`. Это позволяет отслеживать клинические документы, отчёты и прочую медицинскую документацию.

**Шаблон System URI**: `https://dhp.uz/fhir/core/sid/doc/{country}/{type}`

## Сводный пример: пациент с несколькими идентификаторами

У пациента может быть несколько идентификаторов. Ниже приведён сводный пример корректного использования:

```json
{
  "resourceType": "Patient",
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "30211975910033"
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "PPN",
            "display": "Passport number"
          }
        ]
      },
      "use": "official",
      "value": "AC1234567"
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/hc",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "HC",
            "display": "Health card number"
          }
        ]
      },
      "use": "official",
      "value": "01234567890123"
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/mrt",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MRT",
            "display": "Temporary Medical Record Number"
          }
        ]
      },
      "use": "temp",
      "value": "550e8400-e29b-41d4-a716-446655440000"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "usual",
      "family": "Usmanov",
      "given": ["Salim"],
      "suffix": ["Saliyevich"]
    }
  ],
  "gender": "male",
  "birthDate": "1994-01-27"
}
```

## Рекомендации по использованию

Не все концепты в CodeSystem IdentifierDomainCS являются выбираемыми. У родительских/группирующих концептов установлено свойство `notSelectable` со значением `true`. Использовать в ресурсах FHIR можно только концепты-листья (фактические системы идентификаторов):

**Выбираемые** (используйте в ресурсах FHIR):
- `https://dhp.uz/fhir/core/sid/pid/uz/ni`
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`
- `https://dhp.uz/fhir/core/sid/pro/uz/argos`

**Не выбираемые** (только родительские группировки):
- `https://dhp.uz/fhir/core/sid/pid` (корень)
- `https://dhp.uz/fhir/core/sid/pid/uz` (корень страны)
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn` (корень паспортов)


### Поиск

Для поиска ресурсов по идентификатору используются стандартные параметры поиска FHIR:

```
# | разделяет system и value, в URL должен быть закодирован как %7C

GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
```

## Связанные ресурсы

- [CodeSystem IdentifierDomainCS](CodeSystem-identifier-domain-cs.html)
- [Профиль UZCorePatient](StructureDefinition-uz-core-patient.html)
- [Профиль UZCorePractitioner](StructureDefinition-uz-core-practitioner.html)
- [Профиль UZCoreOrganization](StructureDefinition-uz-core-organization.html)
- [Системы наименований (NamingSystems)](artifacts.html#terminology-naming-systems)
