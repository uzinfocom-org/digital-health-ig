> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core AllergyIntolerance bemorning allergiyasi yoki intoleranligini Raqamli sog'liqni saqlash platformasida, u keltirib chiqargan har qanday reaksiyalar bilan birga qayd etadi. U tegishli bo'lgan [Patient](StructureDefinition-uz-core-patient.html) va qayd etilgan [Encounter](StructureDefinition-uz-core-encounter.html) bilan bog'langan. Allergiya yozuvlari bemor xulosasida va shoshilinch minimal ma'lumotlar to'plamida ko'rsatiladi - ular hatto rozilik boshqa klinik ma'lumotlarga kirishni cheklaganida ham ko'rinib turadi - shuning uchun ularni dolzarb saqlash bemor xavfsizligi uchun muhim.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson tomonidan o'qilishi mumkin bo'lgan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core AllergyIntolerance quyidagilarga ega bo'lishi shart

Ushbu profil o'zining majburiy kardinalligini qo'shmaydi. Yagona talab qilinadigan element bazaviy resursdan meros qilib olingan element: bemor (allergiya tegishli bo'lgan shaxs).

#### Har bir UZ Core AllergyIntolerance quyidagilarni qo'llab-quvvatlashi shart



- identifikator;
- allergenning o'zini aniqlovchi kod (DHP allergen qiymatlar to'plamiga extensible bog'lanish);
- tur - allergiya yoki intolerantlik (required bog'lanish);
- klinik holat - active \| inactive \| resolved (required bog'lanish);
- tekshiruv holati - allergiya qanchalik tasdiqlanganligi (required bog'lanish);
- toifa - oziq-ovqat, dori, atrof-muhit, biologik (required bog'lanish);
- bemor va u qayd etilgan tashrif (encounter);
- onset[x] vaqti va abatement kengaytmasi (0..1);
- bir yoki bir nechta reaksiya, har biri og'irlik darajasi (required bog'lanish), manifestatsiya (extensible) va reaksiya moddasi (extensible) bilan.

> Allergen `code` - bemor reaksiya ko'rsatadigan modda; har bir reaksiya bo'yicha `substance` esa ma'lum bir reaksiya hodisasini keltirib chiqargan aniq agentni qayd etadi - bu bir xil maydon emas.

### JSON ni qadamba-qadam tuzish

Quyidagi yozuvdan boshlang - har bir qiymat ushbu profilga muvofiq tekshiruvdan o'tadi, shuning uchun uni nusxalab oling va moslashtiring. Undan keyingi ikki qism reaksiya uchun va allergiyani bartaraf etilgan deb belgilash uchun kichik qo'shimchalarni ko'rsatadi. To'liq malumot uchun namuna instansiyasi - [o't changiga allergiya](AllergyIntolerance-example-grass-pollen-allergy.html).

#### Real allergiya yozuvi

Yagona qat'iy majburiy element - bu `patient`, lekin amalda siz allergen `code`, `clinicalStatus` (active / inactive / resolved), `verificationStatus` (qanchalik tasdiqlanganligi), `type` (allergiya yoki intolerantlik), `category` (oziq-ovqat / dori / atrof-muhit / biologik), u qayd etilgan `encounter` va u qachon boshlanganligini (`onset[x]`) ham yuborasiz. Har bir UZ Core resursi shuningdek `meta.profile` da o'zi da'vo qilayotgan profilni nomlaydi. `clinicalStatus`, `verificationStatus` va `type` - bu `CodeableConcept`lar, har biri o'zining HL7 `system` ga ega; `category` esa oddiy `code` ro'yxati, shuning uchun yalang'och kodni yuboring:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "active"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed"
    }]
  },
  "type": {
    "coding": [{ "system": "http://hl7.org/fhir/allergy-intolerance-type", "code": "allergy" }]
  },
  "category": ["environment"],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs",
      "code": "aller-0010-00001",
      "display": "Grass pollen"
    }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "onsetDateTime": "2025-07-10"
}
```

`type`, `category`, `clinicalStatus` va `verificationStatus` ning har biri required bog'lanishdan foydalanadi - qiymat bog'langan qiymatlar to'plamidan kelishi kerak. Allergen `code` DHP allergen qiymatlar to'plamiga extensible bog'lanishga ega. `patient` va `encounter` - bu [Patient](StructureDefinition-uz-core-patient.html) va [Encounter](StructureDefinition-uz-core-encounter.html) ga oddiy `Reference`lar.

#### Reaksiyani qayd etish

Allergiya reaksiyani keltirib chiqargan bo'lsa, `reaction` yozuvini qo'shing: `severity` (mild / moderate / severe - required bog'lanish), bir yoki bir nechta `manifestation` yozuvi (nima kuzatilgani) va ixtiyoriy ravishda bu hodisani keltirib chiqargan `substance`. Shakllariga e'tibor bering - `manifestation` bu `CodeableReference`, shuning uchun uning kodlangan qiymati `concept` ostida joylashadi, `substance` esa oddiy `CodeableConcept`. Ushbu massiv yuqoridagi resursga joylashadi:

```json
{
  "reaction": [{
    "severity": "severe",
    "manifestation": [{
      "concept": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-manifestation-cs",
          "code": "aller-0006-00004",
          "display": "Shortness of breath"
        }]
      }
    }],
    "substance": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-substance-cs",
        "code": "aller-0010-00031",
        "display": "Walnut, pollen (Jug r_pollen)"
      }]
    }
  }]
}
```

Har bir reaksiya bo'yicha `substance` - bu hodisani keltirib chiqargan aniq agent - yuqori darajadagi allergen `code` dan alohida maydon.

#### Allergiya endi faol bo'lmaganda

Allergiyani bartaraf etilgan deb belgilash uchun `clinicalStatus` ni `resolved` ga o'rnating va `allergyintolerance-abatement` kengaytmasini (0..1) qo'shing - bu yerda erkin matnli `valueString` sifatida. Bularni yuqoridagi yozuvdagi faol `clinicalStatus` o'rniga yuboring:

```json
{
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "resolved"
    }]
  },
  "extension": [{
    "url": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
    "valueString": "Symptoms resolved after antihistamine course"
  }]
}
```

To'g'ri kodlangan qiymatlarni tanlash uchun [Yetishmayotgan va bostirilgan ma'lumotlar](general-guidance.html#missing-data) va [terminologiya bo'yicha qo'llanma](general-guidance.html#terminology) ga qarang.

Namunaviy API chaqiruvlari va namunaviy yuk uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) ga qarang.
