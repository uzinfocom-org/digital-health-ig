> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Consent bemorning o'z sog'liq ma'lumotlari Raqamli sog'liqni saqlash platformasida ulashilishi mumkinmi yoki yo'qmi degan shaxsiy qaroriini qayd etadi. O'zbekiston opt-out (rad etish) modelida ishlaydi: bemor uchun hech qanday Consent resursi mavjud bo'lmaganda, ulashish sukut bo'yicha ruxsat etiladi va bemor uni rad etuvchi Consent ni qayd etish orqali ulashishdan voz kechadi. Model atayin ikkilik (binar) qilingan - bitta provision (qoida) ruxsat beradi yoki rad etadi - va bemor uni bemorlar portalida o'zi belgilaydi. Platforma uni amalga oshiradi: rozilik kirishni rad etganda, ma'lumotlar so'rovi HTTP 403 bilan rad etiladi. Ikkita istisno mavjud - davolovchi shifokorlar va boshqa qonuniy vakolatli tomonlar uchun qonuniy kirish yo'li, hamda favqulodda break-glass yo'li (favqulodda foydalanish maqsadi bilan [AuditEvent](StructureDefinition-uz-core-auditevent.html) da qayd etiladi). Consent o'zining [Patient](StructureDefinition-uz-core-patient.html) i bilan bog'lanadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, tiplar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Consent quyidagiga ega bo'lishi shart

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Yagona talab qilinadigan element asosiy resursdan meros qilib olingan: holat (rozilik yozuvining o'z holati, DHP consent-state qiymatlar to'plamiga bog'langan).

#### Har bir UZ Core Consent quyidagini qo'llab-quvvatlashi kerak



- sub'ekt - rozilik tegishli bo'lgan bemor;
- grantor (rozilik beruvchi) - qarorni beruvchi tomon (bemor);
- davr (period) - rozilik qo'llaniladigan vaqtning boshi va oxiri;
- uning asosida turuvchi qonun yoki siyosatni aniqlovchi me'yoriy asos (required bog'lanish);
- qaror - ruxsat berish yoki rad etish (required bog'lanish);
- manba - yoki sourceAttachment (uning url va yaratilgan sanasi bilan) yoki asosiy rozilik hujjatini olib boruvchi sourceReference;
- qarorni toraytiruvchi provision, uning amali (action) va maqsadi (purpose) bilan (ikkalasi ham required bog'lanish).

> Qaror dizayni bo'yicha ikkilikdir: `permit` yoki `deny` ning bitta `decision` i. Platforma uni har bir ma'lumot so'roviga ruxsat berish yoki rad etish uchun o'qiydi.

### JSON ni bosqichma-bosqich qurish

Consent asosan bemor uni portalda belgilaganda tizim tomonidan generatsiya qilinadi, shuning uchun qo'lda qurish uchun juda kam narsa qoladi. Quyidagi misol - to'liq yozuv - uni nusxalab oling va moslang; ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq nusxa - bu [misol Consent](Consent-example-consent.html).

#### Yuborishingiz kerak bo'lgan eng kichik Consent

`status` yagona qat'iy majburiy element, lekin Consent faqat u kimning ma'lumotlarini qamrab olishini (`subject`), u nimani hal qilishini (`decision` - skalyar kod `permit` yoki `deny`) va o'sha qaror nimaga taalluqli ekanligini (`provision`) nomlaganda mazmunli bo'ladi. Consent ning yo'qligi allaqachon ulashishga ruxsat berganligi sababli, siz yuboradigan yozuv odatda opt-out bo'ladi: `provision.action` i nimani rad etayotganini bildiruvchi `deny` - bu yerda oshkor qilish. Har bir UZ Core resursi, shuningdek, `meta.profile` da o'zi muvofiq bo'lishni da'vo qilgan profilni nomlashi kerak:

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

`status` va `decision` ularning har biri required bog'lanishdan foydalanadi - qiymat bog'langan qiymatlar to'plamidan kelishi kerak (quyidagi Snapshot ko'rinishi har birini ro'yxatlaydi). `provision.action` - bu `CodeableConcept`, shuning uchun uning kodi `coding` massivida joylashadi; `subject` - bu oddiy Reference, shuning uchun uning nishoni to'g'ridan-to'g'ri `reference` ostida joylashadi.

#### Real rozilik yozuvi

To'liqroq yozuv - bu yerda kirishga ruxsat berayotgan holatda ko'rsatilgan, bemor qayta opt-in qilganda yoki rozilikni muayyan maqsad va davrga toraytirganda qiladigani kabi - shuningdek, qarorni kim bergani (`grantor`, bemor), u qancha vaqt qo'llanilishini (`period`), u asoslanadigan qonunni (`regulatoryBasis`) va qarorni muayyan `action` va `purpose` ga toraytiruvchi `provision` ni qayd etadi. `grantor` - bu Referencelar ro'yxati, va `regulatoryBasis`, `provision.action` hamda `provision.purpose` kodlangan - har bir qiymat bog'langan qiymatlar to'plamidan keladi:

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

E'tibor bering, `provision.purpose` to'g'ridan-to'g'ri `Coding` dir (`coding` massiviga o'ralmagan), `regulatoryBasis` va `provision.action` esa `coding` massivini saqlovchi `CodeableConcept` tiplaridir. Ushbu yozuv kirishga ruxsat beradi; opt-out - bu `decision` i `deny` ga o'rnatilgan bir xil shakl bo'lib, undan keyin platforma har bir ma'lumot so'rovini HTTP 403 bilan rad etadi. Kodlangan qiymat qoidalari uchun [Yetishmayotgan va bostirilgan ma'lumotlar](general-guidance.html#missing-data) va [Terminologiya](general-guidance.html#terminology) bo'limlariga qarang.

Misol API chaqiruvlari va namunaviy yuk uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
