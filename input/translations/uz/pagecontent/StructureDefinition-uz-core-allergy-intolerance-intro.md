UZ Core AllergyIntolerance DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi)da bemorning allergiyasi yoki o'zlashtira olmasligi, shuningdek ular keltirib chiqargan reaksiyalarni qayd etadi. Yozuv tegishli [Patient](StructureDefinition-uz-core-patient.html) va u qayd etilgan [Encounter](StructureDefinition-uz-core-encounter.html) bilan bog'lanadi. Allergiya haqidagi yozuvlar bemor haqidagi qisqacha ma'lumotda va shoshilinch tibbiy yordam uchun minimal ma'lumotlar to'plamida ko'rsatiladi. Consent boshqa klinik ma'lumotlarga kirishni cheklagan taqdirda ham ular ko'rinib turadi. Shu sababli, bemor xavfsizligini ta'minlash uchun ushbu ma'lumotlarni dolzarb saqlash muhim.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi kerak (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)). Ularning barchasi ham majburiy emas, biroq tizim tegishli ma'lumotga ega bo'lsa, har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; quyidagi [formal ko'rinishlarda](#profile) aniq karralilik, turlar va terminologik bog'lanishlar berilgan.

#### Har bir UZ Core AllergyIntolerance Must Have

Ushbu profil o'ziga xos majburiy karralilik qo'shmaydi. Yagona majburiy element bazaviy resursdan meros qilib olingan `patient`, ya'ni allergiya yoki o'zlashtira olmaslik qayd etilgan shaxsdir.

#### Har bir UZ Core AllergyIntolerance Must Support



- identifikator;
- allergenning o'zini identifikatsiya qiluvchi code (DHP allergenlari ValueSetiga kengaytiriladigan bog'lanish);
- tur - allergiya yoki o'zlashtira olmaslik (required bog'lanish);
- klinik status - active \| inactive \| resolved (required bog'lanish);
- tasdiqlanganlik statusi - allergiya qanchalik tasdiqlanganini ko'rsatadi (required bog'lanish);
- toifa - food, medication, environment, biologic (required bog'lanish);
- Patient va yozuv qayd etilgan Encounter;
- `onset[x]` vaqti va abatement extensioni (0..1);
- bir yoki bir nechta reaksiya; har biri uchun severity (required bog'lanish), manifestation (extensible) va reaksiyani keltirib chiqargan substance (extensible).

> Allergenning `code` elementi bemor reaksiya bildiradigan moddani ko'rsatadi; har bir reaksiya ichidagi `substance` esa muayyan reaksiya hodisasini keltirib chiqargan aniq agentni qayd etadi. Bu elementlar bir xil emas.

### JSON-ni bosqichma-bosqich yaratish

Quyidagi yozuvdan boshlang: undagi har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi, shuning uchun uni nusxalab, kerakli ma'lumotlarga moslashtirish mumkin. Keyingi ikki fragment reaksiyani qo'shish va allergiyani resolved deb belgilash uchun zarur kichik qo'shimchalarni ko'rsatadi. To'liq namuna - [o't gulchangiga allergiya](AllergyIntolerance-example-grass-pollen-allergy.html) yozuvi.

#### Amaliy allergiya yozuvi

Qat'iy majburiy yagona element `patient` hisoblanadi. Amalda esa allergen `code`, `clinicalStatus` (active / inactive / resolved), `verificationStatus` (qanchalik tasdiqlangani), `type` (allergy yoki intolerance), `category` (food / medication / environment / biologic), yozuv qayd etilgan `encounter` va holat boshlangan vaqt (`onset[x]`) ham yuboriladi. Har bir UZ Core resursi o'zi muvofiq deb ko'rsatayotgan profilni `meta.profile` elementida bildiradi. `clinicalStatus`, `verificationStatus` va `type` - har biri o'z HL7 system qiymatiga ega `CodeableConcept`; `category` esa oddiy code ro'yxatidir, shu sababli kod qiymatini bevosita yuboring:

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

`type`, `category`, `clinicalStatus` va `verificationStatus` elementlarining har biri required bog'lanishdan foydalanadi: qiymat bog'langan ValueSet tarkibidan olinishi kerak. Allergenning `code` elementi DHP allergenlari ValueSetiga extensible bog'lanishga ega. `patient` va `encounter` - mos ravishda [Patient](StructureDefinition-uz-core-patient.html) va [Encounter](StructureDefinition-uz-core-encounter.html) resurslariga oddiy Reference.

#### Reaksiyani qayd etish

Allergiya reaksiya keltirib chiqargan bo'lsa, `reaction` yozuvini qo'shing: `severity` (mild / moderate / severe - required bog'lanish), bir yoki bir nechta `manifestation` (nima kuzatilgani) va ixtiyoriy ravishda ushbu hodisani keltirib chiqargan `substance`. Tuzilishga e'tibor bering: `manifestation` `CodeableReference` bo'lgani uchun kodlangan qiymat `concept` ichida joylashadi, `substance` esa oddiy `CodeableConcept`. Quyidagi massiv yuqoridagi resurs tarkibiga qo'shiladi:

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

Har bir reaksiyadagi `substance` muayyan hodisani keltirib chiqargan aniq agentni ko'rsatadi. Bu yuqori darajadagi allergen `code` elementidan alohida elementdir.

#### Allergiya endi faol bo'lmaganda

Allergiyani bartaraf bo'lgan deb belgilash uchun `clinicalStatus` elementiga `resolved` qiymatini bering va `allergyintolerance-abatement` extensionini (0..1) qo'shing. Quyidagi misolda u erkin matnli `valueString` sifatida berilgan. Ushbu fragmentlarni yuqoridagi yozuvdagi faol `clinicalStatus` o'rniga yuboring:

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

To'g'ri kodlangan qiymatlarni tanlash bo'yicha [Yetishmayotgan va ko'rsatilmaydigan ma'lumotlar](general-guidance.html#missing-data) hamda [terminologiya bo'yicha ko'rsatmalarga](general-guidance.html#terminology) qarang.

API chaqiruvlari namunalari va namunaviy so'rov tanasi uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
