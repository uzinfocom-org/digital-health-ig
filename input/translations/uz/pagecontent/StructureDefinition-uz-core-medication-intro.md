> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Medication dori vositasini O'zbekistonda ro'yxatdan o'tkazilgan va muomalada bo'lgan holatida tavsiflaydi - mahsulot nima ekanligi (ATC yoki INN kodi), uning dori shakli, dozasi va umumiy hajmi, tarkibiy qismlari, ro'yxatga olish guvohnomasi egasi bo'lgan tashkilot va u tegishli bo'lgan seriya. Bu boshqa resurslar havola qiladigan katalog yozuvi: dori tayinlanganda [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), u berilganda [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), u yuborilganda MedicationAdministration, yuborilgan vaksina mahsuloti uchun [Immunization](StructureDefinition-uz-core-immunization.html) va taxmin qilingan sabab uchun [AdverseEvent](StructureDefinition-uz-core-adverse-event.html). Mahsulotlar milliy reyestr va kuzatuv tizimlari (ro'yxatga olish guvohnomasi, GTIN, Asl Belgisi markirovkasi, IKPU kodi, guruh qadog'i) orqali aniqlanadi, shuning uchun yangi Medication yaratishdan oldin [mavjud Medication ni](#finding) identifikator yoki kod bo'yicha qidirishingiz kerak.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Medication quyidagilarga ega bo'lishi shart

Ushbu profil qo'shadigan yagona majburiy element - kamida bitta identifikator; bazaviy Medication resursining o'z majburiy elementlari yo'q. Identifikator `system` bo'yicha slayslarga bo'lingan va har bir slays ichida `system` URI qat'iy belgilangan, shuning uchun qaysi milliy identifikatorni yuborayotganingizni aynan URI aytadi.

#### Har bir UZ Core Medication quyidagilarni qo'llab-quvvatlashi shart



- identifikator slayslari - ro'yxatga olish guvohnomasi raqami, GTIN, Asl Belgisi markirovka identifikatori, IKPU mahsulot/xizmat kodi va UzPharm guruh qadog'i identifikatori ([quyidagi jadvalga](#identifier-slices) qarang);
- kod (code) - [dori vositalari tasnifi qiymatlar to'plamidan](ValueSet-medication-classification-vs.html) olingan ATC yoki INN tushunchasi (majburiy bog'lanish);
- status (active / inactive / entered-in-error, majburiy qiymatlar to'plamidan);
- marketingAuthorizationHolder - ro'yxatga olish egasi bo'lgan [Organization](StructureDefinition-uz-core-organization.html) ga havola;
- dori shakli (doseForm), milliy [dori shakllari qiymatlar to'plamidan](ValueSet-medication-doseform-vs.html) kodlangan (kengaytiriladigan bog'lanish);
- umumiy hajm (totalVolume) - birliklari [umumiy hajm birliklari qiymatlar to'plamidan](ValueSet-medication-total-volume-units-vs.html) olingan UCUM miqdori (afzal bog'lanish);
- tarkibiy qismlar (ingredient) - har biri tushuncha (ATC / INN) yoki boshqa Medication ga havola, dozasi nisbat ko'rinishida;
- seriya (batch) - seriya raqami (AIK) va yaroqlilik muddati.

### Mavjud Medication ni topish {#finding}

Medication yozuvlari bemorga tegishli yozuvlar emas, balki umumiy katalog yozuvlaridir, shuning uchun ro'yxatdan o'tkazishdan oldin uni qidirib ko'ring. Har bir identifikator slaysi va kod bo'yicha qidirish mumkin (`|` tizimni qiymatdan ajratadi va URL'da `%7C` sifatida kodlanadi):

```
# by national identifier - the reliable match
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ

# by code - every product for a substance (INN) or an ATC class
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03

# by batch, status, dose form, or authorization holder
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

Tizimsiz identifikator qidiruvi (`?identifier=UZ/MED/2024/00123`) qiymatni istalgan slaysda topadi; qiymat qaysi reyestrdan kelganini bilsangiz, tizimni ko'rsating. Kod bo'yicha qidiruv `code` dagi istalgan coding ga mos keladi, shuning uchun ham INN, ham ATC kodi bilan kodlangan mahsulot ikkalasidan biri orqali topiladi. Sahifaning pastki qismidagi [Tez boshlash](#quick-start) bo'limida qolgan qidiruv parametrlari keltirilgan.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar serverning qabul qila oladigan eng kichik nusxasidan to to'liq tavsiflangan ro'yxatdan o'tgan mahsulotgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq ma'lumotnoma nusxalariga sahifaning pastki qismida havola qilingan ([paratsetamol tabletkalari](Medication-example-medication.html), [neomitsin tomchilari](Medication-example-neomycin-atc-medication.html), [naloksegol tabletkalari](Medication-example-naloxegol-atc-medication.html)).

#### Yuborishingiz kerak bo'lgan eng kichik Medication

Bitta `identifier` - ushbu profil majburiy qiladigan yagona element. Har bir UZ Core resursi shuningdek o'zi muvofiq deb da'vo qilayotgan profilni `meta.profile` da ko'rsatishi shart - server qaysi qoidalar bo'yicha validatsiya qilishni shu orqali biladi. Amalda katalog yozuvi mahsulot nima ekanligini aytuvchi `code` va `status` siz foydasiz, shuning uchun ularni ham yuboring. Shuning o'zi allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active"
}
```

Ushbu identifikatorni ro'yxatga olish guvohnomasi raqamiga aylantiradigan narsa - uning `system` URI si, ya'ni `registration_number` bilan tugaydigani. `use` har bir slaysda `official` sifatida qat'iy belgilangan. `code` [dori vositalari tasnifi qiymatlar to'plamiga](ValueSet-medication-classification-vs.html) `required` sifatida bog'langan: INN kodi faol moddani nomlaydi, ATC kodi (`http://www.whocc.no/atc`) mahsulotni JSST tasnifiga joylashtiradi, va ikkalasini alohida coding sifatida yuborishingiz mumkin. `status` - `active` / `inactive` / `entered-in-error`.

#### Ro'yxatdan o'tgan mahsulot

Amalda siz mahsulotni reyestr qanday tavsiflasa, shunday tavsiflaysiz: uning `doseForm` i, bir birlikning `totalVolume` i (bu yerda - tabletkadagi faol modda miqdori, UCUM miqdori sifatida), u tegishli bo'lgan `batch` va `marketingAuthorizationHolder` - ro'yxatga olish egasi bo'lgan [Organization](StructureDefinition-uz-core-organization.html) ga oddiy `Reference`. Qadoqda shtrix-kod bo'lsa, ro'yxatga olish guvohnomasi yoniga GTIN ni ham qo'shing:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    },
    {
      "use": "official",
      "system": "https://mobile-api.aslbelgisi.uz/gtin",
      "value": "04780123456789"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      },
      {
        "system": "http://www.whocc.no/atc",
        "code": "N02BE01",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "marketingAuthorizationHolder": { "reference": "Organization/example-organization" },
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "totalVolume": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
  "batch": {
    "lotNumber": "LOT20241201",
    "expirationDate": "2027-12-01"
  }
}
```

`doseForm` - milliy dori shakllari kod tizimiga `extensible` bog'lanish; uning ko'rsatiladigan nomlari o'zbek tilida, inglizcha va ruscha designation lar bilan, shuning uchun yuboradigan `display` resursning `language` iga mos kelishi shart. `totalVolume` - bu `Quantity`; faqat inson o'qiydigan `unit` ni emas, har doim mashina o'qiydigan `system` va `code` ni yuboring ([Birliklar va miqdorlar](general-guidance.html#units-and-quantities)ga qarang). `batch.lotNumber` - AIK seriya identifikatori, `batch.expirationDate` esa oddiy sana.

#### Identifikator slayslari {#identifier-slices}

Mahsulot beshtagacha identifikatorga ega bo'lishi mumkin; faqat o'zingizda borlarini to'ldiring. Har biri o'zining `system` URI si bo'yicha tanlanadi, shuning uchun u aniq mos kelishi shart, `use` esa har doim `official`:

| Identifikator | `system` | Kim beradi |
|---|---|---|
| [Ro'yxatga olish guvohnomasi raqami](NamingSystem-registration-certificate-id.html) | `https://uzpharminfo.uz/registration_number` | Sog'liqni saqlash vazirligi, dorini ro'yxatdan o'tkazishda |
| [GTIN](NamingSystem-global-trade-item-id.html) | `https://mobile-api.aslbelgisi.uz/gtin` | GS1, qadoqdagi global savdo birligi raqami |
| [Asl Belgisi markirovka identifikatori](NamingSystem-uz-marking-id.html) | `https://mobile-api.aslbelgisi.uz/marking` | Milliy kuzatuv tizimi, har bir seriyalashtirilgan qadoq uchun |
| [IKPU mahsulot/xizmat kodi](NamingSystem-product-service-id.html) | `https://uzpharminfo.uz/icps` | Milliy mahsulot va xizmatlar tasniflagichi |
| [UzPharm guruh qadog'i identifikatori](NamingSystem-uz-pharm-box-id.html) | `https://uzpharminfo.uz/box_group_id` | Kuzatuv tizimi, seriyalashtirilgan qadoqlarni karton qutiga birlashtiradi |

Ro'yxatga olish guvohnomasi, GTIN va IKPU kodi *mahsulotni* tavsiflaydi va har bir qadoqda bir xil; markirovka identifikatori va guruh qadog'i identifikatori *jismoniy qadoq yoki qutini* tavsiflaydi va har bir birlik uchun farq qiladi. Sizga faqat katalog yozuvi kerak bo'lsa, mahsulot darajasidagi identifikatorlarni yuboring.

#### Tarkibiy qismlarni qo'shish

Tarkib muhim bo'lganda - kombinatsiyalangan mahsulot yoki dozaga mos kelishi shart bo'lgan berish - har bir `ingredient` ni sanab o'ting. `item` - bu `CodeableReference`: moddani INN yoki ATC bilan kodlangan `concept` sifatida bering yoki ichki `reference` orqali boshqa Medication ga ishora qiling. Doza - dori shakli birligiga to'g'ri keladigan miqdorning `strengthRatio` nisbati:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "ingredient": [
    {
      "item": {
        "concept": {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
              "code": "005325",
              "display": "paracetamol"
            }
          ]
        }
      },
      "isActive": true,
      "strengthRatio": {
        "numerator": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
        "denominator": {
          "value": 1,
          "unit": "piece",
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
          "code": "piece"
        }
      }
    }
  ]
}
```

`ingredient.item` - bu `CodeableReference`: uning tushunchasi `concept` ostida joylashadi, boshqa [Medication](StructureDefinition-uz-core-medication.html) ga havola esa bir daraja chuqurroqda bo'lardi (`{ "reference": { "reference": "Medication/id" } }`). Farq uchun [Havolalar va CodeableReference lar](how-to-read.html#references-and-codeablereferences)ga qarang. Surat va maxraj birliklari [umumiy hajm birliklari qiymatlar to'plamidan](ValueSet-medication-total-volume-units-vs.html) olinadi - massa va hajm uchun UCUM, `piece` (bitta tabletka, kapsula yoki ampula) kabi sanaladigan birliklar uchun esa mahalliy birliklar kod tizimi.

Misol API chaqiruvlari va "ro'yxatdan o'tkazishdan oldin qidirish" jarayoni uchun ushbu sahifaning pastki qismidagi [Tez boshlash](#quick-start) ga qarang.
