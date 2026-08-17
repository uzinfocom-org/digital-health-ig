UZ Core Consent bemorning tibbiy ma'lumotlarini DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi) orqali almashish mumkinligi haqidagi o'z qarorini qayd etadi. O'zbekistonda rad etish modeli (opt-out) qo'llanadi: bemor uchun Consent resursi mavjud bo'lmasa, ma'lumot almashishga sukut bo'yicha ruxsat beriladi; bemor esa almashishni taqiqlovchi Consent ni qayd etish orqali undan voz kechadi. Model ataylab ikkilik shaklda tuzilgan: bitta `provision` ruxsat beradi yoki taqiqlaydi va bemor bu qarorni bemor portalida mustaqil belgilaydi. Platforma qarorni qo'llaydi: Consent kirishni taqiqlasa, ma'lumot so'rovi HTTP 403 bilan rad etiladi. Ikki istisno mavjud: davolovchi tibbiyot xodimlari va qonuniy vakolatga ega boshqa tomonlar uchun qonuniy kirish yo'li hamda favqulodda break-glass kirish yo'li (favqulodda ma'lumotlardan foydalanish maqsadi bilan [AuditEvent](StructureDefinition-uz-core-auditevent.html) da qayd etiladi). Consent [Patient](StructureDefinition-uz-core-patient.html) bilan bog'langan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi majburiy emas, biroq tizim ma'lumot mavjud bo'lsa, har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; quyidagi [formal ko'rinishlar](#profile) aniq karralilik, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Consent Must Have

Ushbu profil o'ziga xos majburiy karralilik qo'shmaydi. Yagona majburiy element bazaviy resursdan meros olingan `status` bo'lib, u Consent yozuvining o'z holatini bildiradi va DHP rozilik holatlari qiymatlar to'plamiga bog'langan.

#### Har bir UZ Core Consent Must Support



- `subject` - Consent qo'llanadigan bemor;
- `grantor` - qarorni beruvchi tomon (bemor);
- `period` - Consent amal qiladigan davrning boshlanish va tugash vaqti;
- regulatory basis - qaror asosidagi qonun yoki siyosatni belgilovchi normativ-huquqiy asos (majburiy bog'lanish);
- `decision` - permit yoki deny (majburiy bog'lanish);
- `source` - `sourceAttachment` (uning url va yaratilgan sanasi bilan) yoki asosiy rozilik hujjatini saqlovchi `sourceReference`;
- qarorni aniqlashtiruvchi `provision`, uning action va purpose elementlari bilan (ikkalasi ham majburiy bog'lanishga ega).

> Qaror ataylab ikkilik shaklda tuzilgan: bitta `decision` qiymati - `permit` yoki `deny`. Platforma har bir ma'lumot so'roviga ruxsat berish yoki uni rad etish uchun shu qiymatdan foydalanadi.

### JSON-ni bosqichma-bosqich shakllantirish

Bemor portalda qarorni belgilaganda Consent asosan tizim tomonidan shakllantiriladi, shuning uchun uni qo'lda yaratish uchun ko'p ish talab etilmaydi. Quyidagi misol to'liq yozuvni ko'rsatadi: uni nusxalang va moslashtiring; ko'rsatilgan har bir qiymat ushbu profilga mos keladi. To'liq instansiya - [Consent misoli](Consent-example-consent.html).

#### Yuborilishi kerak bo'lgan eng kichik Consent

`status` - yagona qat'iy majburiy element. Biroq Consent faqat qaysi ma'lumotlarga nisbatan qo'llanishi (`subject`), qanday qaror qabul qilingani (`decision` - `permit` yoki `deny` skalyar kodi) va qaror nimaga qo'llanishi (`provision`) ko'rsatilgandagina mazmunli bo'ladi. Consent mavjud bo'lmasligi ma'lumot almashishga allaqachon ruxsat bergani sababli, odatda yuboriladigan yozuv opt-out hisoblanadi: `deny` qiymati, bunda `provision.action` qaysi amal taqiqlanganini - bu yerda ma'lumotni oshkor qilishni - ko'rsatadi. Har bir UZ Core resursi o'zi mos kelishini bildiradigan profilni `meta.profile` da ko'rsatishi kerak:

```json
{
  "resourceType": "Consent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent"] },
  "status": "active",
  "subject": { "reference": "Patient/example-patient" },
  "decision": "deny",
  "provision": [
    {
      "action": [
        { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/consentaction", "code": "disclose" }] }
      ]
    }
  ]
}
```

`status` va `decision` majburiy bog'lanishdan foydalanadi: qiymat quyidagi Snapshot ko'rinishida ko'rsatilgan bog'langan qiymatlar to'plamidan olinishi kerak. `provision.action` `CodeableConcept` turiga ega, shuning uchun uning kodi `coding` massivida joylashadi; `subject` oddiy `Reference` bo'lgani sababli, maqsad resurs bevosita `reference` ostida ko'rsatiladi.

#### Amaliy Consent yozuvi

To'liqroq yozuv - bu yerda bemor qayta rozilik bildirganda yoki Consent ni muayyan maqsad va davr bilan cheklaganda bo'lgani kabi kirishga ruxsat berish ko'rsatilgan - qarorni kim berganini (`grantor`, bemor), uning amal qilish muddatini (`period`), u asoslanadigan qonunni (`regulatoryBasis`) va qarorni muayyan action hamda purpose bilan cheklovchi `provision` ni ham qayd etadi. `grantor` `Reference` ro'yxati bo'lib, `regulatoryBasis`, `provision.action` va `provision.purpose` kodlangan elementlardir; har bir qiymat bog'langan qiymatlar to'plamidan olinadi:

```json
{
  "resourceType": "Consent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent"] },
  "status": "active",
  "subject": { "reference": "Patient/example-patient" },
  "grantor": [
    { "reference": "Patient/example-patient" }
  ],
  "period": {
    "start": "2025-02-15T14:02:52+05:00",
    "end": "2026-02-15T14:02:52+05:00"
  },
  "regulatoryBasis": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/consent-policy-cs", "code": "uz-LRU-547" }
      ]
    }
  ],
  "decision": "permit",
  "provision": [
    {
      "action": [
        { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/consentaction", "code": "disclose" }] }
      ],
      "purpose": [
        { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "RECORDMGT" }
      ],
      "period": {
        "start": "2025-02-15T14:02:52+05:00",
        "end": "2026-02-15T14:02:52+05:00"
      }
    }
  ]
}
```

E'tibor bering: `provision.purpose` bevosita `Coding` turiga ega va `coding` massiviga o'ralmaydi, `regulatoryBasis` hamda `provision.action` esa `CodeableConcept` turiga ega bo'lib, `coding` massivini saqlaydi. Ushbu yozuv kirishga ruxsat beradi; opt-out xuddi shu tuzilishga ega, faqat `decision` qiymati `deny` etib belgilanadi, shundan so'ng platforma har bir ma'lumot so'rovini HTTP 403 bilan rad etadi. Kodlangan qiymatlarni tanlash qoidalari [Yetishmayotgan va yashirilgan ma'lumotlar](general-guidance.html#missing-data) hamda [Terminologiya](general-guidance.html#terminology) bo'limlarida keltirilgan.

API chaqiruvlari misollari va namunaviy foydali yuklama sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
