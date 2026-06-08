> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Данное руководство описывает использование систем идентификаторов в рамках Цифровой платформы здравоохранения Узбекистана для идентификации пациентов, медицинских работников и организаций.

### Обзор

Реализация UZ Core использует иерархическую систему доменов идентификаторов. Все идентификаторы следуют следующей структуре:

```
https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]
```

Где:
- `namespace`: `pid` (персональный), `pro` (профессиональный), `org` (организация) или `doc` (документ)
- `country`: двухбуквенный код страны ISO 3166-1 (например, `uz` для Узбекистана)
- `type`: тип идентификатора (например, `ppn` для паспорта, `ni` для национального ID)
- `subtype`: дополнительная классификация (например, `local` или `intl` для типов паспортов)

Полный перечень всех поддерживаемых систем идентификаторов для всех стран приведён в [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html).

### Идентификаторы пациентов

#### Национальный идентификатор (ПИНФЛ)

Национальный уникальный идентификатор — ПИНФЛ (Персональный идентификационный номер физического лица) является основным идентификатором для граждан и резидентов Узбекистана.

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

#### Локальный паспорт (внутренний)

Локальные паспорта используются для внутренней идентификации на территории Узбекистана.

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

#### Идентификаторы для неустановленных пациентов

Если пациент не может быть немедленно идентифицирован (например, пациент без сознания, который не может предоставить документы, удостоверяющие личность), платформа предусматривает два типа идентификаторов. По возможности всегда предпочтительнее использовать временный номер медицинской карты в рамках организации.

| Сценарий | Используемый идентификатор |
|----------|-------------------|
| Неустановленный пациент поступил в известную медицинскую организацию | `medicalRecordTemp` (предпочтительно) |
| Неустановленный пациент, организация неизвестна или ИНН недоступен | `unknownPatient` (резервный вариант) |

##### Временный номер медицинской карты (предпочтительно)

Данный идентификатор используется, когда неустановленный пациент поступает в медицинскую организацию и известен ИНН организации (Soliq). Такой подход является предпочтительным, поскольку обеспечивает возможность отслеживания организации, выдавшей идентификатор.

**System URI pattern**: `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt`

Пример (для организации с ИНН `200935935`):

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

##### Идентификатор неустановленного пациента (резервный вариант)

Данный идентификатор используется только в случае, если медицинская организация, принявшая неустановленного пациента, неизвестна либо ИНН организации недоступен. По возможности предпочтительнее использовать временный номер медицинской карты в рамках организации.

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

#### Иностранные паспорта и водительские удостоверения

Платформа поддерживает идентификацию иностранных граждан с использованием номеров паспортов и водительских удостоверений. System URI формируется по аналогичному шаблону с использованием двухбуквенного кода страны ISO 3166-1:

**System URI pattern**: `https://dhp.uz/fhir/core/sid/pid/{country-code}/ppn` для паспортов, `https://dhp.uz/fhir/core/sid/pid/{country-code}/dl` для водительских удостоверений

Пример для паспорта Эстонии:

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

Полный перечень всех поддерживаемых систем идентификаторов пациентов, включая поддерживаемые страны для иностранных паспортов и водительских удостоверений, приведён в value set [PatientIdentifierDomainVS](ValueSet-patient-identifier-domain-vs.html).

### Идентификаторы медицинских работников

#### Идентификатор медицинского работника (HRM Argos)

Медицинские работники идентифицируются с использованием системы Human Resource Management (HRM) Argos.

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

Полный перечень всех поддерживаемых систем идентификаторов медицинских работников приведён в value set [PractitionerIdentifierDomainVS](ValueSet-practitioner-identifier-domain-vs.html).

### Идентификаторы организаций

#### ИНН (Soliq)

Организации идентифицируются по идентификационному номеру налогоплательщика, присвоенному Государственным налоговым комитетом.

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

#### Фонд государственного медицинского страхования (ФГМС)

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

Полный перечень всех поддерживаемых систем идентификаторов организаций приведён в value set [OrganizationIdentifierDomainVS](ValueSet-organization-identifier-domain-vs.html).

### Идентификаторы документов

Документы идентифицируются с использованием пространства имён `doc`. Это позволяет отслеживать клинические документы, отчёты и другую медицинскую документацию.

**Шаблон System URI**: `https://dhp.uz/fhir/core/sid/doc/{country}/{type}`

### Полный пример: пациент с несколькими идентификаторами

Пациент может иметь несколько идентификаторов. Ниже приведён полный пример корректного использования:

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

### Руководство по реализации

Не все концепты в CodeSystem IdentifierDomainCS доступны для выбора. Для родительских и группирующих концептов свойство `notSelectable` установлено в значение `true`. Использоваться могут только конечные концепты (фактические системы идентификаторов):

**Доступны для выбора** (используются в FHIR-ресурсах):
- `https://dhp.uz/fhir/core/sid/pid/uz/ni`
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`
- `https://dhp.uz/fhir/core/sid/pro/uz/argos`

**Недоступны для выбора** (только родительские группировки):
- `https://dhp.uz/fhir/core/sid/pid` (корневой уровень)
- `https://dhp.uz/fhir/core/sid/pid/uz` (корневой уровень страны)
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn` (корневой уровень паспортов)


#### Поиск

Для поиска ресурсов по идентификатору используются стандартные параметры поиска FHIR:

```
# | используется для разделения system и value и должен быть URL-кодирован как %7C

GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
```

### Связанные ресурсы

- [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html)
- [Профиль UZCorePatient](StructureDefinition-uz-core-patient.html)
- [Профиль UZCorePractitioner](StructureDefinition-uz-core-practitioner.html)
- [Профиль UZCoreOrganization](StructureDefinition-uz-core-organization.html)
- [NamingSystems](artifacts.html#terminology-naming-systems)
