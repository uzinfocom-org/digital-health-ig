> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Communication bemorlar Bemor portalida ko'radigan jamoat salomatligi ogohlantirishini qayd etadi. Profil ikki turdagi ogohlantirishni qamrab oladi: xavfli hududda yashovchi bemorlarga ogohlantirish - menejer milliy ogohlantirishlar reglamenti bo'yicha daraja bergan [UZ Core joylashuvi](StructureDefinition-uz-core-location.html) - va menejer tashkilot xodimlari guruhi a'zolariga, ya'ni [UZ Core guruhiga](StructureDefinition-uz-core-group.html) yuboradigan ogohlantirish. Har bir qabul qiluvchi - [UZ Core bemori](StructureDefinition-uz-core-patient.html): hududning har bir aholisi yoki guruhning har bir xodimi. Ogohlantirish o'zi tegishli bo'lgan hudud yoki xodimlar guruhiga havola beradi va sababini ko'rsatishi mumkin, masalan tasdiqlangan [UZ Core tashxisi](StructureDefinition-uz-core-condition.html) yoki [UZ Core kuzatuvi](StructureDefinition-uz-core-observation.html) sifatida yozilgan namuna tahlili natijasi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Communication da bo'lishi shart

Har bir Communication da `status` (asosiy FHIR R5 da majburiy), `category` dagi ogohlantirish turi, yuborilgan vaqt `sent`, kamida bitta qabul qiluvchi `recipient` va ogohlantirish matni bilan kamida bitta `payload` bo'ladi. Hudud aholisiga ogohlantirishda ogohlantirish darajasi ham bo'lishi shart.

#### Har bir UZ Core Communication qo'llab-quvvatlashi shart

- ogohlantirish `status` i (masalan, yuborilgandan keyin completed);
- ogohlantirish turi (hudud aholisiga / xodimlar guruhiga);
- yuborilgan paytdagi ogohlantirish darajasi (I qizil / II to'q sariq / III sariq / IV ko'k) - hudud darajasi keyin o'zgarsa ham, u o'zgarmaydi;
- `about` - ogohlantirish nimaga tegishli: hudud yoki xodimlar guruhi;
- bemor Bemor portalida ko'radigan yuborilgan vaqt `sent`;
- qabul qiluvchi `recipient` - hududda yashovchi har bir bemor yoki guruhning har bir xodimi;
- ogohlantirish sababi `reason` - kasallik kodi yoki Condition yoki Observation ga havola;
- `payload` dagi ogohlantirish matni.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar xodimlar guruhiga ogohlantirishdan hudud aholisiga ogohlantirishgacha boradi. Har bir misolda ushbu profil `meta.profile` da ko'rsatilgan.

#### Xodimlar guruhiga ogohlantirish

Menejer tashkilot xodimlari guruhini ochadi va uning a'zolariga ogohlantirish yuboradi. Har bir xodim `recipient` da ko'rsatiladi, `about` esa guruhga havola beradi. Ogohlantirish turi mahalliy ogohlantirish toifalari kod tizimidan olinadi, shuning uchun uning nomi o'zbek tilida va resursda `language` qiymati `uz`. FHIR R5 da `contentString` yo'q: ogohlantirish matni `payload.contentCodeableConcept.text` da yuboriladi:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002",
      "display": "Tashkilot xodimlari guruhini ogohlantirish"
    }]
  }],
  "about": [{ "reference": "Group/example-employee-group" }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Tashkilotingizda ichak infeksiyasi aniqlandi. Belgilar bo'lsa, shifokorga boring."
    }
  }]
}
```

#### Hudud aholisiga ogohlantirish

Menejer hududga daraja berganda, ogohlantirishni u yerda yashovchi bemorlar oladi. Unda mahalliy ogohlantirish darajalari kod tizimidan daraja bilan ikkinchi `category` bo'ladi - usiz hudud aholisiga ogohlantirish yaroqsiz. `about` hududga havola beradi, `reason` sababni ko'rsatadi. Ogohlantirishni kim yaratgani audit jurnalida qayd etiladi, shuning uchun `sender` ishlatilmaydi:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00001",
      "display": "Hudud aholisini ogohlantirish"
    }]
  }, {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/alert-level-cs",
      "code": "alrtlv-0001-00002",
      "display": "II - To'q sariq"
    }]
  }],
  "about": [{ "reference": "Location/example-mahalla-zone-location" }],
  "sent": "2026-11-18T10:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "reason": [{
    "concept": { "text": "Ichak infeksiyasi tarqalishi" }
  }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Mahallangizda ichak infeksiyasi aniqlandi. Faqat qaynatilgan suv iching."
    }
  }]
}
```

To'liq FSH misollari: [xodimlar guruhiga ogohlantirish](Communication-example-employee-group-alert-communication.html) va [hudud aholisiga ogohlantirish](Communication-example-zone-alert-communication.html).

API chaqiruvlari misollari sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
