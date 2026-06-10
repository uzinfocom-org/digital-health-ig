> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Provenance Raqamli sog'liqni saqlash platformasidagi klinik yozuvning kelib chiqishi, mualliflik va imzosini qayd etadi. Klinik jihatdan muhim bo'lgan har bir yozuvda uni kim va qachon qayd etganini ko'rsatuvchi Provenance bo'lishi kerak; imzolangan hujjatlar uchun u raqamli imzoni - shifokor DHP da joylashtirilgan iframe orqali oneID yordamida autentifikatsiyadan o'tganda olinadigan - olib boradi va imzolangan resursga havola qiladi. Tizimingiz Provenance ni u yuborayotgan ma'lumotlar bilan birga yozadi - ham yozuvni kim yaratganini qayd etish uchun, ham imzolangan hujjatlar uchun imzoni olib borish uchun.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, tiplar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Provenance quyidagiga ega bo'lishi shart

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar asosiy resursdan meros qilib olinganlar: kamida bitta target (ushbu Provenance tavsiflovchi resurs) va kamida bitta who ga ega agent (mas'ul aktor). Bu yerda target [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) yoki Medication bilan, agent.who esa [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) bilan cheklangan.

#### Har bir UZ Core Provenance quyidagini qo'llab-quvvatlashi kerak



- target - ushbu Provenance tegishli bo'lgan yozuv;
- occurredDateTime - faoliyat sodir bo'lgan vaqt;
- bajarilgan activity (required bog'lanish);
- faoliyat tegishli bo'lgan bemor (patient);
- o'zining type i (ishtirok roli, required bog'lanish) va who i (PractitionerRole) bilan agent;
- o'zining role i (required bog'lanish) va u nimaga ishora qilishi bilan entity;
- o'zining type i (required bog'lanish), qachon yaratilgani, kim imzolagani (PractitionerRole), sigFormat va imzo ma'lumotlarini olib boruvchi signature.

> Imzolangan hujjatlar uchun imzo blobi `signature.data` ichida yashaydi; `target` imzolangan hujjatga havola qiladi.

### JSON ni bosqichma-bosqich qurish

Siz klinik jihatdan muhim ma'lumotlarni yuborganingizda Provenance quring - uni kim yaratganini qayd etish va imzolangan hujjatlar uchun imzoni olib borish uchun. Quyidagi misollar server qabul qiladigan eng kichik yozuvdan to'liq imzolangan hujjat hodisasigacha boradi. Bittasini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq nusxa - bu [misol Provenance](Provenance-example-provenance.html).

#### Siz yuborishingiz kerak bo'lgan eng kichik Provenance

Provenance ga kamida bitta `target` (u tegishli bo'lgan yozuv) va `who` ga ega kamida bitta `agent` (mas'ul aktor) kerak. Bu yerda `target` [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) yoki Medication bilan, `agent.who` esa [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) bilan cheklangan. Ham `target`, ham `agent.who` oddiy References hisoblanadi. Amalda siz shuningdek `occurredDateTime` (faoliyat qachon sodir bo'lgani), bajarilgan `activity` va u tegishli bo'lgan `patient` ni ham yuborasiz:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ]
}
```

`activity` va `agent.type` ning har biri required bog'lanishdan foydalanadi - qiymat bog'langan qiymatlar to'plamidan kelishi kerak (quyidagi Snapshot ko'rinishi har birini sanab o'tadi). `agent.who` PractitionerRole ga havola qilishi kerak.

#### Raqamli imzoni qo'shish

Ushbu profil mavjud bo'lishining sababi - shifokor DHP da joylashtirilgan iframe orqali oneID yordamida autentifikatsiyadan o'tgandan keyin platforma qaytaradigan raqamli imzoni olib borishdir. `signature` yozuvini qo'shing: uning `type` i u qanday yaratilganini bildiradi (required bog'lanish), `when` u qo'llanilgan moment, `who` xuddi shu PractitionerRole ga havola qiladi, `sigFormat` blobning media tipi, `data` esa base64 da kodlangan imzoning o'zi:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "signature": [
    {
      "type": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/signature-type-cs", "code": "biometricAuth" }
      ],
      "when": "2025-02-05T12:58:00+05:00",
      "who": { "reference": "PractitionerRole/example-practitionerrole" },
      "sigFormat": "application/signature+xml",
      "data": "dGhpcyBibG9iIGlzIHNuaXBwZWQ="
    }
  ]
}
```

`target` bu yerda imzolangan [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) ga havola qiladi. `data` qiymati - bu base64 imzo blobi (yuqorida qisqartirilgan); ishlab chiqarishda to'liq blobni yuboring.

API chaqiruvlari misollari va namunaviy yuk uchun ushbu sahifaning pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
