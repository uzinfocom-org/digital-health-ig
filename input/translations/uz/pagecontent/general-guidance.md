Barcha UZ Core profillariga tatbiq etiladigan umumiy qoidalar. Ular joriy etuvchilar eng ko'p beradigan savollarga javob beradi: har bir resurs uchun qanday metama'lumotlar talab etiladi, maydon qiymati mavjud bo'lmaganda nima qilish kerak, o'lchov birliklarini qanday kodlash, resurslarni Bundle tarkibida qanday birlashtirish va Platforma xatolar haqida qanday xabar beradi.

### Resursning majburiy metama'lumotlari {#metadata}

Platformada almashiniladigan har bir resurs [klinik ma'lumotlaridan](artifacts.html#structures-resource-profiles) tashqari quyidagilarni ham o'z ichiga olishi shart:

- `meta.profile` - resurs muvofiq ekanini ko'rsatadigan UZ Core profilining kanonik URL manzili (versiyasi bilan). Server resursni qaysi qoidalar bo'yicha validatsiya qilish kerakligini shu ma'lumot orqali aniqlaydi.
- `id` - resursning serverdagi mantiqiy identifikatori. Yangi resursga identifikator server tomonidan biriktiriladi.

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

Ma'lumotlar UTF-8 kodlashidagi JSON formatida almashiladi.

### Mavjud bo'lmagan va yashirilgan ma'lumotlar {#missing-data}

"Menda qiymat yo'q" va "qiymat mavjud emas" holatlari o'rtasida farq bor. FHIR qaysi holat yuz berganini ko'rsatish imkonini beradi:

- Qiymat shunchaki mavjud emas - elementni yubormang. Bo'sh satr yoki o'rinbosar qiymat yubormang. Bunga har qanday ixtiyoriy (`0..`) element, jumladan ixtiyoriy Must Support elementlari uchun ruxsat etiladi.
- Element majburiy, ammo qiymat haqiqatan ham noma'lum - `1..` karralilikka ega elementni tashlab ketib bo'lmaydi. Shu sababli resursda belgilangan "unknown" mexanizmidan foydalaning: elementga `data-absent-reason` kengaytmasini qo'shing ([misol](Patient-example-unidentified-patient.html)) yoki bog'langan ValueSet tarkibida shunday qiymat mavjud bo'lsa, unknown kodidan foydalaning (masalan, unknown kodini o'z ichiga olgan ValueSet'ga bog'langan kodlangan element uchun `unknown`).
- Cheklovni bajarish uchun hech qachon ma'lumot o'ylab topmang. Soxta tug'ilgan sana yoki soxta identifikator ma'lumot yo'qligini qayd etishdan yomonroq.

Ayrim profillarda `data-absent-reason` uchun alohida joy mavjud. Masalan, [UZ Core Patient](StructureDefinition-uz-core-patient.html) profilida hatto identifikator mavjud bo'lmagan kam uchraydigan holatlar uchun identifier elementining `value` qismiga `data-absent-reason` kengaytmasini qo'shishga ruxsat beriladi.

[Must Support](must-support.html) bo'limida buning <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> belgisi bilan qanday bog'liqligi bayon qilingan.

### O'lchov birliklari va miqdorlar

Raqamli o'lchovlarda o'lchov birligi kodi uchun UCUM (`http://unitsofmeasure.org`) ishlatiladi:

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

- `system` va `code` elementlarini faqat inson o'qishi uchun mo'ljallangan `unit` satri bilan cheklamasdan, mashina o'qiy oladigan UCUM kodi bilan doimo to'ldiring.
- Natija o'lchov birligisiz (o'lchovsiz sanoq qiymati, titr yoki nisbat) berilgan bo'lsa ham, `value` elementini yuboring; `code`/`system` faqat haqiqatan ham UCUM birligi mavjud bo'lmaganda tashlab ketiladi.
- Referens diapazonlar va interpretatsiya belgilari (normal / high / low / critical) mos ravishda `Observation.referenceRange` va `Observation.interpretation` elementlarida beriladi.

### Manzillar {#addresses}

Manzillar bir nechta resurslarda (Patient, Practitioner, Organization, Location) qo'llanadi. UZ Core O'zbekistondagi va xalqaro manzillarni qo'llab-quvvatlaydi.

#### O'zbekistondagi manzil

Ma'muriy-hududiy birliklar uchun rasmiy registrlardagi **kodlangan qiymatlardan** foydalaning. Platforma viloyat, tuman va shahar qiymatlari Aholini raqamli boshqarish (DPM) tizimidagi kodlarga mos kelishini tekshiradi:

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

O'zbekistondan tashqaridagi manzillarda ma'muriy-hududiy birliklar erkin matn ko'rinishida beriladi va majburiy ValueSet talab qilinmaydi. Bu xorijiy manzil tuzilmalarini moslashuvchan ifodalash imkonini beradi:

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

### Terminologiya va ko'p tilli nomlanishlar {#terminology}

- Bog'langan ValueSet kodlaridan [bog'lash qat'iyligiga](how-to-read.html#terminology-bindings) muvofiq foydalaning.
- Nomlanishlar (o'zbekcha / ruscha / inglizcha ko'rsatiladigan nomlar) faqat ko'rsatish uchun ishlatiladi; ma'noni `code` elementi ifodalaydi. [FHIR asoslari](fhir-basics.html#terminology) bo'limida UZ CodeSystem'lari va HL7 terminologiya qo'shimchalari bu ko'p tilli nomlanishlarni qanday taqdim etishi bayon qilingan.
- Kodlarni Platformaning terminologiya serverida standart `$validate-code` operatsiyasi yordamida tekshirish mumkin:

```
POST [base]/ValueSet/$validate-code
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "url", "valueUri": "https://dhp.uz/fhir/core/ValueSet/uz-core-diagnosis" },
    { "name": "system", "valueUri": "http://hl7.org/fhir/sid/icd-10" },
    { "name": "code", "valueCode": "E11" } ] }
```

[Identifikator tizimlari](identifiers.html) bo'limida terminologiya tizimlari emas, aynan identifikator tizimlari haqida ma'lumot berilgan.

### Bundle'lar: document, transaction va searchset

Amalga oshirayotgan vazifangizga qarab `Bundle.type` qiymatini tanlang:

| `Bundle.type` | Qaysi holatda ishlatiladi |
|---------------|-----------|
| **transaction** | Bir-biriga bog'liq bir nechta resursni bitta atomar birlik sifatida yuborish (barchasi muvaffaqiyatli bajariladi yoki hech biri bajarilmaydi), masalan, laboratoriya natijalari to'plami (`ServiceRequest` + `Specimen` + `Observation` + `DiagnosticReport`). |
| **batch** | Bir nechta mustaqil operatsiyani atomarlik talab qilinmasdan birgalikda yuborish. |
| **document** | Yuridik ahamiyatga ega yakuniy klinik hujjat: sarlavha sifatidagi `Composition` va undan keyin unga Reference orqali bog'langan klinik resurslar. Shifoxonadan chiqarish xulosalari, ma'lumotnomalar va imzolangan hisobotlar uchun ishlatiladi. |
| **searchset** | Server qidiruvga javoban qaytaradi. Siz bunday Bundle'larni qabul qilib qayta ishlaysiz, lekin yaratmaysiz. |

Bir nechta resurs o'zaro bog'liq bo'lsa, ularni muvofiqlashtirilmagan alohida chaqiruvlar orqali emas, bitta Bundle tarkibida birgalikda yuboring. [Ish jarayonlari](workflows.html) bo'limida transaction va document turidagi Bundle'larning aniq misollari keltirilgan.

### Yaratish, yangilash va o'chirish

- Platforma standart REST amallarini qo'llab-quvvatlaydi: `GET` (o'qish/qidirish), `POST` (yaratish), `PUT` (yangilash), `PATCH` (qisman yangilash) va `DELETE`. Har bir resurs uchun aniq amallar [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html)'da ko'rsatilgan.
- Mantiqiy o'chirish, jismoniy o'chirish emas. Resursni o'chirish orqali klinik ma'lumotlar yo'q qilinmaydi. Yozuvdan foydalanishni to'xtatish uchun uning holatini o'zgartiring: holatga qarab `entered-in-error`, `inactive`, `revoked` yoki ushbu resurs uchun mos boshqa qiymatni belgilang. Masalan, qaytarib olingan `Goal` `cancelled`/`completed` holatiga o'tkaziladi, qaytarib olingan `Consent` uchun `inactive` belgilanadi, xato klinik yozuv uchun esa `entered-in-error` belgilanadi. Resurs va uning tarixi bo'yicha so'rov yuborish imkoniyati saqlanib qoladi.
- Parallel yangilash. Yangilashlarda optimistik bloklash qo'llanadi. Oxirgi o'qishdan olingan `ETag` qiymatini saqlang va yangilash so'rovida `If-Match` sifatida qayta yuboring; agar resurs siz uni o'qigandan keyin boshqa mijoz tomonidan o'zgartirilgan bo'lsa, versiyalar endi mos kelmaydi va server `412 Precondition Failed` ("Version is mismatch") javobini qaytaradi. Resursni qayta o'qing va so'rovni takrorlang - [Parallel yangilash](api-access.html#concurrency) bo'limiga qarang.
- Idempotentlik. Qayta yuborilganda takrorlanmasligi kerak bo'lgan ish jarayoni va moliyaviy operatsiyalar uchun shartli yaratish/yangilashdan foydalaning. Shunda qayta yuborilgan so'rov ikkinchi resursni yaratmaydi.

### Xatolar {#errors}

So'rov validatsiya, avtorizatsiya yoki ziddiyat tufayli muvaffaqiyatsiz tugasa, server jiddiylik darajasi, kod va inson o'qishi uchun mo'ljallangan diagnostika matnini o'z ichiga olgan `OperationOutcome` qaytaradi:

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

Ko'p uchraydigan kodlar: `required`/`value`/`invariant` (resurs profil bo'yicha validatsiyadan o'tmadi), `code-invalid` (kod bog'langan ValueSet tarkibida mavjud emas), `forbidden` (avtorizatsiya yoki rozilik tekshiruvi tufayli so'rov rad etildi - kirishni boshqarish bo'yicha tavsiyalarga qarang), shuningdek `412` javobi (code = `invalid`; `If-Match` versiyalari ziddiyati - [Parallel yangilash](api-access.html#concurrency)). Xatoga sabab bo'lgan elementni aniqlash uchun `diagnostics` va `expression` elementlarini o'qing.

### Keyingi qadamlar

- [Ushbu qo'llanmadan qanday foydalanish](how-to-read.html) va [Must Support](must-support.html) - qo'llanmada qabul qilingan qoidalar.
- [Ish jarayonlari](workflows.html) - haqiqiy Bundle'lar bilan boshidan oxirigacha ko'rsatilgan ssenariylar.
- [Identifikator tizimlari](identifiers.html) - identifikator tizimlarining URI'lari.
