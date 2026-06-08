> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Barcha UZ Core profillariga taalluqli kesishuvchi qoidalar. Ular implementatsiya qiluvchilar eng ko'p beradigan savollarga javob beradi - har bir resursga qanday metama'lumot kerakligi, maydon uchun qiymat bo'lmaganda nima qilish kerakligi, birliklarni qanday kodlash, resurslarni qanday to'plamga (bundle) birlashtirish va platforma xatolarni qanday xabar berishi.

### Majburiy resurs metama'lumoti {#metadata}

Platformada almashinadigan har bir resurs, o'zining [klinik mazmuni](artifacts.html#structures-resource-profiles)dan tashqari, quyidagilarni o'z ichiga olishi shart:

- `meta.profile` - resurs muvofiq ekanligini da'vo qilayotgan UZ Core profilining kanonik URL manzili (versiyasi bilan). Server qaysi qoidalarga ko'ra validatsiya qilishni shu orqali biladi.
- `id` - serverdagi resursning mantiqiy identifikatori. Yangi resurslarga uni server o'zi tayinlaydi.

```json
{
  "resourceType": "Observation",
  "id": "abc-123",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"],
    "lastUpdated": "2026-05-30T09:12:00+05:00"
  }
}
```

Mazmun JSON formatida, UTF-8 kodlashda almashinadi.

### Yo'q va bostirilgan ma'lumotlar {#missing-data}

"Menda qiymat yo'q" va "qiymat mavjud emas" o'rtasida farq bor va FHIR qaysi biri ekanligini ko'rsatishga imkon beradi:

- Qiymat shunchaki mavjud emas - elementni tushirib qoldiring. Bo'sh satr yoki o'rinbosar (placeholder) yubormang. Bu har qanday ixtiyoriy (`0..`) element uchun, jumladan Must Support ixtiyoriy elementlari uchun ham ruxsat etiladi.
- Majburiy element, lekin qiymat haqiqatan ham noma'lum - `1..` elementni tushirib qoldira olmaysiz, shuning uchun resursning aniqlangan "noma'lum" mexanizmidan foydalaning: element ustidagi `data-absent-reason` kengaytmasi ([misol](Patient-example-unidentified-patient.html)) yoki bog'langan qiymatlar to'plami uni taqdim etgan holatda "unknown" kodi (masalan, `unknown`ni o'z ichiga olgan qiymatlar to'plamiga bog'langan kodlangan element).
- Cheklovni qondirish uchun hech qachon ma'lumot to'qib chiqarmang. Soxta tug'ilgan sana yoki qalbaki identifikator qayd etilgan yo'qlikdan ham yomonroq.

Ba'zi profillar aniq `data-absent-reason` slotini qo'shadi - masalan [UZ Core Patient](StructureDefinition-uz-core-patient.html) hatto identifikator ham mavjud bo'lmagan kamdan-kam holatlar uchun identifikatorning `value` qiymatida `data-absent-reason` kengaytmasiga ruxsat beradi.

Bu <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> bayrog'i bilan qanday o'zaro ta'sir qilishini bilish uchun [Must Support](must-support.html)ga qarang.

### Birliklar va miqdorlar

Sonli o'lchovlar birlik kodi uchun UCUM (`http://unitsofmeasure.org`)dan foydalanadi:

```json
{
  "valueQuantity": {
    "value": 7.2,
    "unit": "%",
    "system": "http://unitsofmeasure.org",
    "code": "%"
  }
}
```

- `system` va `code`ni har doim faqat insonga mo'ljallangan `unit` satri bilan emas, balki mashina o'qiy oladigan UCUM kodi bilan to'ldiring.
- Agar natija birliksiz xabar qilinsa (o'lchamsiz son, titr, nisbat), baribir `value`ni yuboring; faqat haqiqatan ham UCUM birligi bo'lmaganda `code`/`system`ni tushirib qoldiring.
- Mos yozuvlar diapazonlari va talqin bayroqlari (normal / yuqori / past / kritik) mos ravishda `Observation.referenceRange` va `Observation.interpretation`ga tegishli.

### Manzillar {#addresses}

Manzillar bir nechta resurslarda (Patient, Practitioner, Organization, Location) uchraydi. UZ Core ham O'zbekiston, ham xalqaro manzillarni qo'llab-quvvatlaydi.

#### O'zbekiston manzili

Ma'muriy bo'linmalar uchun rasmiy reestrlardan **kodlangan qiymatlar**dan foydalaning. Platforma viloyat, tuman va shahar kodlari Raqamli aholini boshqarish (DPM) tizimidagi kodlarga mos kelishini tekshiradi:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "UZ",
    "state": "1727",            // Region code from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (e.g., 1727 for Tashkent Region)
    "district": "1727220",      // District code from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (e.g., 1727220 for Bekobod district)
    "city": "17150085",         // Mahalla code from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (citizens' assembly)
    "line": ["Amir Temur ko'chasi"],
    "text": "Yangi Sergeli mahallasi, Amir Temur ko'chasi, 15-uy, 42-xonadon"
  }]
}
```

#### Xalqaro manzil

O'zbekistondan tashqaridagi manzillar uchun ma'muriy bo'linmalar majburiy qiymatlar to'plamlarisiz erkin matn bo'lib, bu xorijiy manzil tuzilmalarini moslashuvchan tarzda ifodalashga imkon beradi:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "US",
    "state": "California",             // Free text
    "district": "Los Angeles County",  // Free text
    "city": "Los Angeles",             // Free text
    "line": ["123 Main Street", "Apt 4B"],
    "postalCode": "90001"
  }]
}
```

### Terminologiya va ko'p tilli nomlar {#terminology}

- Bog'langan qiymatlar to'plamidan [bog'lanish kuchi](how-to-read.html#terminology-bindings)ga ko'ra kodlardan foydalaning.
- Nomlar (o'zbekcha / ruscha / inglizcha ko'rsatuv nomlari) faqat taqdim etish uchun mo'ljallangan - ma'noni `code` ifodalaydi. UZ CodeSystemlar va HL7 terminologiya supplementlari bu ko'p tilli nomlarni qanday taqdim etishini bilish uchun [FHIR asoslari](fhir-basics.html#terminology)ga qarang.
- Kodlarni platforma terminologiya serverida standart `$validate-code` amaliyoti bilan tekshirish mumkin:

```
POST [base]/ValueSet/$validate-code
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "url", "valueUri": "https://dhp.uz/fhir/core/ValueSet/uz-core-diagnosis" },
    { "name": "system", "valueUri": "http://hl7.org/fhir/sid/icd-10" },
    { "name": "code", "valueCode": "E11" } ] }
```

Identifikator (terminologiya emas) tizimlari uchun [Identifikator tizimlari](identifiers.html)ga qarang.

### Bundlelar: hujjat, tranzaksiya yoki searchset

`Bundle.type`ni qilayotgan ishingizga qarab tanlang:

| `Bundle.type` | Qachon ishlatiladi |
|---------------|-----------|
| **transaction** | Bir nechta o'zaro bog'liq resurslarni bitta atomik birlik sifatida yuborish (hammasi muvaffaqiyatli yoki hammasi muvaffaqiyatsiz) - masalan, laboratoriya natijalari to'plami (`ServiceRequest` + `Specimen` + `Observation` + `DiagnosticReport`). |
| **batch** | Bir nechta mustaqil amallarni atomiklikka talab qilmasdan birga yuborish. |
| **document** | Yakunlangan, yuridik ahamiyatga ega klinik hujjat - sarlavha sifatidagi `Composition` va undan keyin havola qilingan klinik resurslar. Tashxis xulosalari, sertifikatlar, imzolangan hisobotlar uchun ishlatiladi. |
| **searchset** | Qidiruvga javoban server tomonidan qaytariladi. Siz ularni iste'mol qilasiz; ularni yaratmaysiz. |

Bir nechta resurs o'zaro bog'liq bo'lganda, ularni alohida muvofiqlashtirilmagan chaqiruvlar sifatida emas, balki Bundle ichida birga uzating. Aniq tranzaksiya va hujjat Bundle misollari uchun [Ish jarayonlari](workflows.html)ga qarang.

### Yaratish, yangilash va o'chirish

- Platforma standart REST o'zaro ta'sirlarini qo'llab-quvvatlaydi: `GET` (o'qish/qidirish), `POST` (yaratish), `PUT` (yangilash), `PATCH` (qisman yangilash) va `DELETE`. Har bir resurs uchun aniq o'zaro ta'sirlar [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html)da e'lon qilinadi.
- Mantiqiy o'chirish, fizik o'chirish emas. Klinik ma'lumotlar resursni o'chirish orqali olib tashlanmaydi. Yozuvni faolsizlantirish uchun uning holatini o'zgartiring: holatga qarab `entered-in-error`, `inactive`, `revoked` yoki resurs uchun ekvivalentini o'rnating. Masalan, bekor qilingan `Goal` `cancelled`/`completed`ga, bekor qilingan `Consent` `inactive`ga, xato klinik yozuv `entered-in-error`ga o'rnatiladi. Resurs va uning tarixi so'rov qilinishi mumkin bo'lib qoladi.
- Bir vaqtdalik (concurrency). Yangilashlar optimistik bloklashdan foydalanadi. Oxirgi o'qishingizdan `ETag`ni saqlang va yangilashda uni `If-Match` sifatida qaytaring; agar siz o'qiganingizdan beri kimdir resursni o'zgartirgan bo'lsa, versiya endi mos kelmaydi va server `412 Precondition Failed` ("Version is mismatch") bilan javob beradi. Qayta o'qing va qaytadan urinib ko'ring - [Bir vaqtdalik](api-access.html#concurrency)ka qarang.
- Idempotentlik. Qayta urinishda takrorlanmasligi kerak bo'lgan ish jarayoni va moliyaviy amallar uchun shartli yaratish/yangilashdan foydalaning, shunda qayta yuborilgan so'rov ikkinchi resursni yaratmaydi.

### Xatolar {#errors}

So'rov muvaffaqiyatsiz bo'lganda - validatsiya, avtorizatsiya, ziddiyat - server jiddiylik darajasi, kod va insonga o'qish mumkin bo'lgan diagnostika bilan `OperationOutcome` qaytaradi:

```json
{
  "resourceType": "OperationOutcome",
  "issue": [{
    "severity": "error",
    "code": "required",
    "diagnostics": "Patient.identifier: minimum required = 1, but only found 0",
    "expression": ["Patient.identifier"]
  }]
}
```

Siz ko'radigan keng tarqalgan kodlar: `required`/`value`/`invariant` (resurs profil validatsiyasidan o'tmadi), `code-invalid` (kod bog'langan qiymatlar to'plamida yo'q), `forbidden` (avtorizatsiya/rozilik so'rovni rad etdi - kirishni boshqarish bo'yicha qo'llanmaga qarang) va `invalid` kodli `412` (`If-Match` versiya ziddiyati - [Bir vaqtdalik](api-access.html#concurrency)ka qarang). Muammoli elementni topish uchun `diagnostics` va `expression`ni o'qing.

### Keyin qayerga borish

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) va [Must Support](must-support.html) - konvensiyalar.
- [Ish jarayonlari](workflows.html) - haqiqiy Bundlelar bilan boshdan-oxir stsenariylar.
- [Identifikator tizimlari](identifiers.html) - identifikator tizimi URI manzillari.
