> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core HealthcareService [Organization](StructureDefinition-uz-core-organization.html) tomonidan [Location](StructureDefinition-uz-core-location.html) joyida taklif etiladigan xizmatni tavsiflaydi. Raqamli sog'liqni saqlash platformasida uning ikkita vazifasi bor: yo'naltirishlarni to'g'ri xizmat ko'rsatuvchiga marshrutlash va mavjud laboratoriya tahlillari katalogi sifatida ishlash - uning kategoriyasi va turi laboratoriya tahlili va natija ta'riflari bilan bog'lanadi. [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) ham mutaxassis ko'rsatadigan xizmatga ishora qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab etilmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core HealthcareService quyidagilarga ega bo'lishi shart (Must Have)

Bazaviy FHIR HealthcareService da majburiy elementlar yo'q va ushbu profil ularni qo'shmaydi. Amalda siz nomni, kategoriyani va turni birgalikda to'ldirasiz (quyida Must Support bo'limiga qarang).

#### Har bir UZ Core HealthcareService quyidagilarni qo'llab-quvvatlashi shart (Must Support)



- `active` bayrog'i;
- xizmat nomi;
- kategoriya - DHP xizmat kategoriyasi slayci yoki laboratoriya kategoriyasi slaycidan biriga kodlangan (har biri o'z milliy qiymatlar to'plamiga bog'langan);
- tur - DHP xizmat slayci yoki laboratoriya tahlili slaycidan biriga kodlangan (har biri o'z milliy qiymatlar to'plamiga bog'langan).

> Xizmat katalogdagi laboratoriya tahlili bo'lganda laboratoriya kategoriyasi/turi slayclaridan, klinik xizmatlar uchun esa DHP xizmat slayclaridan foydalaning - mos keladigan slaycni to'ldiring, ikkalasini emas.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik namunadan tarjima qilingan nomli to'liq katalog yozuvigacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq tasdiqlanadi. To'liq ma'lumotnoma namunasi - [example HealthcareService](HealthcareService-example-healthcareservice.html).

#### Siz yuborishingiz kerak bo'lgan eng kichik HealthcareService

Ushbu profil va bazaviy resurs hech qanday majburiy element qo'shmaydi, shuning uchun mutlaq minimum bu faqat `meta.profile` dagi profil da'vosidir. Bu o'z-o'zidan foydali emas - yozuv katalogda aniqlanadigan bo'lishi uchun har doim `active` bayrog'ini va `name` ni yuboring. Xizmatni yo'naltirishlar uchun marshrutlanadigan yoki laboratoriya tahlili sifatida tasniflanadigan qilish uchun keyingi ko'rsatilgan `category` va `type` ni qo'shing:

```json
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice"]
  },
  "active": true,
  "name": "IHC-ga xos"
}
```

`active` bayrog'i xizmat hozirda taklif etilayotganligini bildiradi; yozuvni o'chirmasdan katalogdan chiqarish uchun uni `false` ga o'rnating.

#### DHP klinik xizmati

Klinik xizmat uchun `category` va `type` ni qo'shing. Ikkalasi ham `system` kodlash bo'yicha slayslangan: DHP slayslari `cancer-types-cs` tizimidan foydalanadi, bunda `category` xizmat kategoriyasini, `type` esa muayyan xizmatni olib boradi. Slaycni `system` URI tanlaydi, shuning uchun u aniq mos kelishi kerak:

```json
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice"]
  },
  "active": true,
  "name": "IHC-ga xos",
  "category": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancer-types-cs", "code": "cancr0013.00000" }
      ]
    }
  ],
  "type": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancer-types-cs", "code": "cancr0013.00001" }
      ]
    }
  ]
}
```

`category` va `type` kodlari milliy qiymatlar to'plamlariga bog'langan (required bog'lanish) - `category` [ServiceCategoriesVS](ValueSet-service-categories-vs.html) ga, `type` esa [ServiceNamesVS](ValueSet-service-names-vs.html) ga; qiymat bog'langan to'plamdan kelishi kerak. Milliy kod tizimlari qanday manbalanishi haqida [Terminologiya](general-guidance.html#terminology) bo'limiga qarang.

#### Katalogdagi laboratoriya tahlili

Laboratoriya xizmatlari `category` va `type` dagi maxsus laboratoriya slayci orqali kataloglashtiriladi. Bu slayc hali yakunlanmoqda - laboratoriya `type` kod tizimi hali nashr etilmagan - shuning uchun laboratoriya xizmatlari uchun to'liq JSON misoli terminologiya joyiga qo'yilgandan so'ng bu yerga qo'shiladi. Shu vaqtgacha xizmatlarni yuqorida ko'rsatilgan DHP slayci bilan modellashtiring.

#### Bir nechta tildagi nomlar

Platforma o'zbek, rus va qoraqalpoq tillariga xizmat ko'rsatadi. `name` vakolatli o'zbekcha matnni saqlaydi; tarjimalar `_name` hamroh elementidagi `translation` kengaytmasi sifatida o'tadi (oldidagi pastki chiziqqa e'tibor bering - FHIR primitivdagi kengaytmalarni shu yerga joylashtiradi). Har bir tarjima `lang` kodini tarjima qilingan `content` bilan juftlaydi:

```json
"name": "IHC-ga xos",
"_name": {
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        { "url": "lang", "valueCode": "ru" },
        { "url": "content", "valueString": "ИГХ специфические" }
      ]
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        { "url": "lang", "valueCode": "kaa" },
        { "url": "content", "valueString": "IHC ushın arnawlı" }
      ]
    }
  ]
}
```

`name` vakolatli o'zbekcha matnni olib boradi; `_name` hamrohi esa uning rus va qoraqalpoq tarjimalarini maydonma-maydon juftlangan holda saqlaydi. Siz ega bo'lgan har bir til uchun bitta `translation` kengaytmasini qo'shing.

API chaqiruvlari namunalari va namunaviy yuk uchun ushbu sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
