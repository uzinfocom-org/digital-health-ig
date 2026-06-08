> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Organization Raqamli sog'liqni saqlash platformasi bo'ylab sog'liqni saqlash yoki ma'muriy tashkilotni - shifoxona, klinika, tibbiyot birlashmasi yoki uning bo'linmalaridan birini - ifodalaydi. U mas'ul muassasani nomlash kerak bo'lgan har qanday joyda havola qilinadi: [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) dagi ish beruvchi sifatida, [Location](StructureDefinition-uz-core-location.html) ning boshqaruvchisi sifatida yoki [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) ning yetkazib beruvchisi sifatida. Tashkilotlar Argos HRM tizimida boshqariladi va o'zlarining Soliq soliq identifikatori bilan aniqlanadi, shuning uchun yangi Organization yaratishdan oldin mavjud Organization ni identifikator bo'yicha qidirishingiz kerak. Tashkilotlar ierarxiya hosil qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Organization quyidagilarga ega bo'lishi shart

Ushbu profil qo'shadigan yagona majburiy element - bu o'zbek tilidagi nom - ruscha va qoraqalpoqcha tarjima kengaytmalari bilan birga keladigan vakolatli tashkilot nomi.

#### Har bir UZ Core Organization quyidagilarni qo'llab-quvvatlashi shart



- identifikator - Soliq soliq identifikatori slaysi, Argos tashkilot identifikatori slaysi va SHIF/SMIF sug'urta to'lovchisi identifikatori slaysi (`OAA000024` kabi 3 ta harf + 6 ta raqamdan iborat kod). Qo'llab-quvvatlanadigan tizim URI lari uchun [Identifikator tizimlari](identifiers.html) ga qarang;
- active belgisi;
- type - milliy kod tizimlaridan olingan bir nechta kodlangan tasniflash slayslari (tashkilot turi, bo'ysunish guruhi, nomenklatura guruhi, tashkiliy tuzilma, xizmat guruhi, ixtisoslashuv, yuridik maqomsiz va guruhlash);
- milliy qamrov-hududi kengaytmasi (xizmat ko'rsatiladigan geografik hudud);
- aloqa ma'lumotlari;
- ota-ona tashkilotga partOf havolasi (ierarxiya aloqasi);
- endpoint havolasi.

> Faqat o'z tashkilotingizga tegishli identifikator va type *slayslarini* to'ldiring - har bir slaysni to'ldirmaysiz.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar serverning qabul qila oladigan eng kichik nusxasidan to to'liq tasniflangan tashkilotgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq ma'lumotnoma nusxalariga sahifaning pastki qismida havola qilingan ([onkologiya markazi](Organization-example-organization.html), [tibbiyot birlashmasi](Organization-xonobod-medical-association.html), [yuqumli kasalliklar shifoxonasi](Organization-tashkent-diseases-hospital.html)).

#### Yuborishingiz kerak bo'lgan eng kichik Organization

`name` - yagona majburiy element - tashkilotning vakolatli o'zbekcha nomi. Har bir UZ Core resursi shuningdek `meta.profile` da o'zi muvofiq bo'lishini da'vo qilgan profilni nomlashi shart, shunda server qaysi qoidalarga ko'ra validatsiya qilishni biladi. Amaliyotda siz har doim Soliq soliq identifikatorini ham yuborishingiz kerak, chunki tashkilotlar shu bo'yicha solishtiriladi. Shu darajadayoq validatsiyadan o'tadi:

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

O'sha identifikatorni Soliq soliq identifikatori qiladigan narsa - bu uning `system` URI si - `sid/org/uz/soliq` bilan tugaydigani. O'sha `system` slaysni tanlaydigan narsa, shuning uchun u aniq mos kelishi shart. Boshqa identifikatorni olib yurish uchun [quyidagi jadvaldan](#identifier-slices) mos keladigan `system` va `type` dan foydalaning.

#### O'zbekcha nom tarjimalarini qo'shish

O'zbekcha `name` vakolatlidir; ruscha va qoraqalpoqcha nomlar uning yonida `_name` dagi tarjima kengaytmalari sifatida boradi (oldidagi pastki chiziqqa e'tibor bering - bu FHIR kengaytmalarni primitivga biriktiradigan joy). Har bir tarjima `lang` kodi va tarjima qilingan `content` ni olib yuruvchi bitta `translation` kengaytmasidir:

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

#### To'liq tasniflangan tashkilot

Amaliyotda siz to'liq manzarani yuborasiz: tashkilot egalik qiladigan har bir identifikator, `type` tasnifi, aloqa ma'lumotlari va u qamrab oladigan hudud. Diqqat qiling, `type` - bu bitta `CodeableConcept` bo'lib, uning `coding` massivi har bir tasnifni o'z ichiga oladi - ular alohida `type` yozuvlari bilan emas, balki `system` bilan farqlanadi. `coverage-area` kengaytmasi (xizmat ko'rsatiladigan geografik hudud) resursning ildizida joylashadi:

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

Har bir `type.coding` o'zining milliy kod tizimiga bog'langan va `system` URI si bo'yicha tanlanadi - faqat tegishli tasniflarni yuboring. Manzildagi `state` / `district` kodlari milliy qiymatlar to'plamlaridan keladi ([Manzillar](general-guidance.html#addresses) ga qarang). Tashkilotni ierarxiyadagi ota-onaga biriktirish uchun `partOf` ni oddiy havola sifatida qo'shing: `{ "reference": "Organization/parent-id" }`.

#### Identifikator slayslari {#identifier-slices}

Tashkilot uchtagacha identifikatorga ega bo'lishi mumkin; faqat sizda mavjudlarini to'ldiring. Har biri o'zining `system` URI si bo'yicha tanlanadi, shuning uchun u aniq mos kelishi shart:

| Identifikator | `system` | `type` kodi |
|---|---|---|
| Soliq soliq identifikatori | `https://dhp.uz/fhir/core/sid/org/uz/soliq` | `TAX` |
| Argos tashkilot identifikatori | `https://dhp.uz/fhir/core/sid/org/uz/argos` | `XX` |
| SHIF sug'urta to'lovchisi identifikatori | `https://dhp.uz/fhir/core/sid/org/uz/shif` | `NIIP` |

SHIF identifikatori qiymati 3 ta bosh harfli lotin harfi va undan keyin 6 ta raqamdan iborat bo'lishi shart (masalan `OAA000024`). Qo'llab-quvvatlanadigan tizim URI larining to'liq ro'yxati uchun [Identifikator tizimlari](identifiers.html) ga qarang.

#### Qamrov hududini yozib qo'yish

Tashkilot belgilangan geografik hududga xizmat ko'rsatganda, resursning ildiziga milliy `coverage-area` kengaytmasini qo'shing. Uning `valueCodeableConcept` viloyatlar kod tizimidan hudud kodini olib yuradi:

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

Misol API chaqiruvlari va namuna yuk tarkibi uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) ga qarang.
