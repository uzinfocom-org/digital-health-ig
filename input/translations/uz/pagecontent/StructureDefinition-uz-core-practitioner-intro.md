> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Practitioner Raqamli salomatlik platformasi doirasida alohida tibbiyot mutaxassisini - shifokor, hamshira, texnik yoki boshqa klinik xodimni - tasvirlaydi. Practitioner o'z-o'zicha shaxsni aniqlash ma'lumotlari, demografik ma'lumotlar va malakalarni saqlaydi; u [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) orqali ish kontekstiga (tashkilot, mutaxassislik, rol) joylashtiriladi va klinik resurslar aynan shu rolga ijrochi yoki so'rovchi sifatida murojaat qiladi. Practitioner yozuvlari markaziy tarzda boshqariladi: shaxsni aniqlash va demografik ma'lumotlar Davlat personalizatsiya markazidan PINFL bo'yicha keladi, kasbiy identifikator HRM Argos tizimidan olinadi, malakalar esa Tibtoifadan keladi - shuning uchun yangi Practitioner yaratishdan oldin identifikator bo'yicha mavjud Practitionerni qidirishingiz kerak.

> Kim biror narsani bajargani yoki so'raganini qayd etishda yalang'och Practitioner o'rniga [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) ga murojaat qilishni afzal ko'ring: bitta mutaxassis bir nechta rolga - turli tashkilotlar, mutaxassisliklar yoki lavozimlarda - ega bo'lishi mumkin va u qaysi sifatda harakat qilganini faqat rol ko'rsatadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - ularning hammasi talab qilinmaydi, biroq tizimingiz har bir Must Support elementni ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Practitioner quyidagilarga ega bo'lishi shart

Bazaviy FHIR Practitioner hech qanday majburiy elementga ega emas va ushbu profil ham birorta qo'shmaydi. Amalda siz deyarli har doim kasbiy identifikator va ismni to'ldirasiz (quyidagi Must Support bo'limiga qarang).

#### Har bir UZ Core Practitioner quyidagilarni qo'llab-quvvatlashi shart



- identifikator - xususan, HRM Argos kasbiy identifikatori slaysi (u PINFLni milliy yagona shaxsiy identifikator sifatida saqlaydi). Qo'llab-quvvatlanadigan system URI'lar uchun [Identifikator tizimlari](identifiers.html) ga qarang;
- active bayrog'i;
- ism (familiya, ism, qo'shimcha, talab qilingan name-use bog'lanishi bilan);
- telecom aloqa ma'lumotlari (telefon, elektron pochta, talab qilingan contact-system bog'lanishi bilan);
- jins (kerak bo'lganda milliy `gender-other` kengaytmasi bilan);
- tug'ilgan sana va vafot sanasi/bayrog'i;
- manzil - o'zbekistonlik manzil (kodlangan ma'muriy bo'linmalar) yoki xalqaro erkin matnli manzil;
- fotosurat;
- bir yoki bir nechta malaka, ularning har biri Tibtoifa litsenziya/sertifikat qiymatlar to'plamidan olingan kod, hamda uning amal qilish muddati va beruvchi tashkilot bilan.

> `gender-other` kengaytmasidan faqat `gender` `other` ga o'rnatilgan holatda foydalanish mumkin.

### JSONni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik instansiyadan to to'liq mutaxassis yozuviga qadar boradi. Birortasini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq tekshiruvdan o'tadi. To'liq mos yozuvlar instansiyalari sahifaning pastki qismida bog'langan ([example practitioner](Practitioner-example-practitioner.html), [practitioner with gender extension](Practitioner-example-practitioner-gender-other.html)).

#### Yuborishingiz kerak bo'lgan eng kichik Practitioner

Bazaviy Practitioner hech qanday majburiy elementga ega emas, biroq yozuv faqat kasbiy identifikator va ism bilan foydali bo'ladi. Kasbiy identifikator - bu HRM Argos slaysi - uni aynan shu slayga aylantiradigan narsa uning `system` URI'sidir (`sid/pro/uz/argos` bilan tugaydigan URI); `type` va `value` esa shunchaki u bilan birga keladi. Har bir UZ Core resursi `meta.profile` da o'zi muvofiqligini da'vo qilayotgan profilni ham nomlashi kerak - server qaysi qoidalarga ko'ra tekshirishni shu orqali biladi:

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

Argos identifikatori mutaxassisning PINFLini milliy yagona shaxsiy identifikator sifatida saqlaydi; uning `type` kodi `NI`. Qo'llab-quvvatlanadigan system URI'lar uchun [Identifikator tizimlari](identifiers.html) ga qarang. Ham `identifier.use`, ham `name.use` talab qilingan bog'lanishlardir, shuning uchun `official` bog'langan qiymatlar to'plamlaridan kelishi shart.

#### Real mutaxassis yozuvi

Amalda siz platforma sizdan qo'llab-quvvatlashni kutadigan demografik ma'lumotlarni yuborasiz: `active` bayrog'i, `telecom`, `gender`, `birthDate` va `address`. O'zbekistonlik manzil erkin matn emas, **kodlangan** ma'muriy bo'linmalardan (tuman, shahar) foydalanadi - bu yerda `country` ham raqamli kodni saqlaydi:

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

`telecom.system` va `name.use` talab qilingan bog'lanishlardan foydalanadi - qiymat bog'langan qiymatlar to'plamidan kelishi shart. `district` / `city` kodlari milliy qiymatlar to'plamlaridan keladi - har bir kod qayerdan olinishi haqida [Manzillar](general-guidance.html#addresses) ga qarang. Chet elda yashovchi mutaxassis uchun esa `country` xorijiy ISO kodiga o'rnatilgan erkin matnli manzildan foydalaning.

#### Malakalar, fotosurat va vafot holatini qo'shish

To'liq yozuv mutaxassisning `qualification` (har bir `code` Tibtoifa litsenziya/sertifikat qiymatlar to'plamidan, o'zining `issuer` i bilan), `photo` va kerak bo'lganda `deceasedBoolean` / `deceasedDateTime` ma'lumotlarini saqlaydi. Malakaning `issuer` i [Organization](StructureDefinition-uz-core-organization.html) ga oddiy `Reference` dir. Ushbu kalitlar yuqoridagi real yozuv bilan bir xil resursga joylashadi:

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

`qualification.code` Tibtoifa litsenziya/sertifikat qiymatlar to'plamiga (required) bog'langan. Vafot sanasi aniq ma'lum bo'lganda `deceasedDateTime` dan, faqat fakt ma'lum bo'lganda esa `deceasedBoolean` dan foydalaning.

Misol API chaqiruvlari va namunaviy payload uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
