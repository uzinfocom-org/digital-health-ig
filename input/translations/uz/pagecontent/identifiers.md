# Identifikator tizimlari

Ushbu qo'llanma O'zbekiston Raqamli Sog'liqni Saqlash Platformasi (DHP) doirasida bemorlar, sog'liqni saqlash xodimlari va tashkilotlarni identifikatsiya qilish uchun identifikator tizimlaridan qanday foydalanishni tushuntiradi.

## Umumiy ma'lumot

UZ Core implementatsiyasi identifikator domenlarining ierarxik tizimidan foydalanadi. Barcha identifikatorlar quyidagi strukturaga amal qiladi:

```
https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]
```

Bu yerda:
- `namespace`: `pid` (shaxsiy), `pro` (kasbiy), `org` (tashkiliy) yoki `doc` (hujjat);
- `country`: ISO 3166-1 bo'yicha mamlakatning ikki harfli kodi (masalan, O'zbekiston uchun `uz`);
- `type`: identifikator turi (masalan, pasport uchun `ppn`, milliy ID uchun `ni`);
- `subtype`: ixtiyoriy qo'shimcha tasnif (masalan, pasport turlari uchun `local`, `intl`).

Barcha mamlakatlar bo'yicha qo'llab-quvvatlanadigan identifikator tizimlarining to'liq ro'yxati [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html) sahifasida keltirilgan.

## Bemor identifikatorlari

### Milliy ID (PINFL)

Milliy noyob identifikator (PINFL — Personal Identification Number for Foreign and Local citizens) O'zbekiston fuqarolari va rezidentlari uchun asosiy identifikator hisoblanadi.

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

### Pasport — ichki (local)

Ichki pasportlar O'zbekiston ichidagi identifikatsiya uchun ishlatiladi.

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

### Aniqlanmagan bemorlar uchun identifikatorlar

Bemorni darhol identifikatsiya qilib bo'lmaydigan hollarda (masalan, hujjatsiz hushsiz holatdagi bemor), platforma ikkita identifikator turini taqdim etadi. Imkon bo'lganda har doim tashkilot bilan bog'langan vaqtinchalik tibbiy yozuv raqamiga ustunlik bering.

| Stsenariy | Qaysi identifikator ishlatiladi |
|-----------|--------------------------------|
| Aniqlanmagan bemor ma'lum tibbiy tashkilotga qabul qilingan | `medicalRecordTemp` (afzal) |
| Aniqlanmagan bemor, tashkilot noma'lum yoki uning soliq ID'si yo'q | `unknownPatient` (zaxira variant) |

#### Vaqtinchalik tibbiy yozuv raqami (afzal)

Aniqlanmagan bemor tibbiy tashkilotga qabul qilingan va tashkilotning soliq ID'si (Soliq) ma'lum bo'lgan hollarda ushbu identifikatordan foydalaning. Bu variant afzal, chunki u identifikatorni bergan tashkilotgacha kuzatish imkonini beradi.

**System URI namunasi**: `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt`

Misol (soliq ID'si `200935935` bo'lgan tashkilot uchun):

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

#### Noma'lum bemor identifikatori (zaxira variant)

Ushbu identifikatordan faqat aniqlanmagan bemorni qabul qilgan tashkilot noma'lum bo'lganda yoki uning soliq ID'si mavjud bo'lmaganda foydalaning. Imkon bo'lganda har doim tashkilot bilan bog'langan vaqtinchalik tibbiy yozuv raqamiga ustunlik bering.

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

### Xorijiy pasportlar va haydovchilik guvohnomalari

Platforma xorijiy fuqarolarning pasport raqami yoki haydovchilik guvohnomasi orqali identifikatsiyalashni qo'llab-quvvatlaydi. System URI ISO 3166-1 bo'yicha mamlakatning ikki harfli kodi bilan o'sha namunaga amal qiladi:

**System URI namunalari**: pasportlar uchun `https://dhp.uz/fhir/core/sid/pid/{country-code}/ppn`, haydovchilik guvohnomalari uchun `https://dhp.uz/fhir/core/sid/pid/{country-code}/dl`.

Estoniya pasporti uchun misol:

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

Qo'llab-quvvatlanadigan barcha bemor identifikatorlari, jumladan xorijiy pasportlar va haydovchilik guvohnomalari uchun barcha mamlakatlar to'liq ro'yxati [PatientIdentifierDomainVS](ValueSet-patient-identifier-domain-vs.html) qiymatlar to'plamida keltirilgan.

## Sog'liqni saqlash xodimlari identifikatorlari

### Tibbiyot xodimi ID'si (HRM Argos)

Tibbiyot xodimlari kadrlar bilan ishlash (Human Resource Management, HRM) Argos tizimi orqali identifikatsiya qilinadi.

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

Qo'llab-quvvatlanadigan barcha tibbiyot xodimi identifikatorlarining to'liq ro'yxati [PractitionerIdentifierDomainVS](ValueSet-practitioner-identifier-domain-vs.html) qiymatlar to'plamida keltirilgan.

## Tashkilot identifikatorlari

### Soliq ID'si (Soliq)

Tashkilotlar Davlat soliq qo'mitasi tomonidan beriladigan soliq identifikatsiya raqami bo'yicha identifikatsiyalanadi.

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

### Davlat tibbiy sug'urta jamg'armasi (DTSJ)

O'zbekiston Respublikasi Davlat tibbiy sug'urta jamg'armasi (DTSJ) bilan shartnoma asosida ishlovchi tibbiy tashkilotlar o'zlarining DTSJ kodi orqali identifikatsiyalanadi. Kod `^[A-Z]{3}[0-9]{6}$` namunasiga amal qiladi — 3 ta bosh harf, undan keyin 6 ta raqam (masalan, `OAA000024`).

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

Qo'llab-quvvatlanadigan barcha tashkilot identifikatorlarining to'liq ro'yxati [OrganizationIdentifierDomainVS](ValueSet-organization-identifier-domain-vs.html) qiymatlar to'plamida keltirilgan.

## Hujjat identifikatorlari

Hujjatlar `doc` nom maydoni orqali identifikatsiya qilinadi. Bu klinik hujjatlar, hisobotlar va boshqa tibbiy hujjatlarni kuzatish imkonini beradi.

**System URI namunasi**: `https://dhp.uz/fhir/core/sid/doc/{country}/{type}`

## To'liq misol: bir nechta identifikatorga ega bemor

Bemorning bir nechta identifikatori bo'lishi mumkin. Quyida to'g'ri foydalanishni ko'rsatuvchi to'liq misol keltirilgan:

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

## Foydalanish bo'yicha tavsiyalar

IdentifierDomainCS CodeSystem dagi barcha tushunchalar tanlanadigan emas. Ota-ona/guruhlovchi tushunchalarda `notSelectable` xususiyati `true` qiymati bilan o'rnatilgan. FHIR resurslarida faqat barg-tushunchalar (haqiqiy identifikator tizimlari) ishlatilishi mumkin:

**Tanlanadigan** (FHIR resurslarida shulardan foydalaning):
- `https://dhp.uz/fhir/core/sid/pid/uz/ni`
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`
- `https://dhp.uz/fhir/core/sid/pro/uz/argos`

**Tanlanmaydigan** (faqat ota-ona guruhlari):
- `https://dhp.uz/fhir/core/sid/pid` (root)
- `https://dhp.uz/fhir/core/sid/pid/uz` (mamlakat root)
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn` (pasport root)


### Qidiruv

Resurslarni identifikator bo'yicha qidirish uchun FHIR standart qidiruv parametrlaridan foydalaning:

```
# | belgisi system va value'ni ajratadi, URL'da %7C sifatida kodlanishi kerak

GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
```

## Bog'liq resurslar

- [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html)
- [UZCorePatient profili](StructureDefinition-uz-core-patient.html)
- [UZCorePractitioner profili](StructureDefinition-uz-core-practitioner.html)
- [UZCoreOrganization profili](StructureDefinition-uz-core-organization.html)
- [Nomlash tizimlari (NamingSystems)](artifacts.html#terminology-naming-systems)
