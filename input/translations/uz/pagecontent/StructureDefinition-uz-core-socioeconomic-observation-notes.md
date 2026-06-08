> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil Observation resursiga asoslangan, shuning uchun Observation so'nggi nuqtasidan foydalaning. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va URL-kodlashda `%7C` ko'rinishida yozilishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Observation/[id]
```

**Ijtimoiy-iqtisodiy kuzatuvlarni topish**

```
GET [base]/Observation?patient=Patient/[id]&category=social-history
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C1303306008
GET [base]/Observation?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Observation?patient=Patient/[id]&status=final
```

**Yaratish**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "1303306008",
        "display": "Eligible for benefit"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2025-06-11",
  ...
}
```

**Yangilash** (masalan, qayd etilgan qiymatni `status` ni `corrected` ga o'rnatish orqali tuzatish) - to'liq resursni yangi `status` / `value[x]` bilan qaytarib PUT qiling:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
