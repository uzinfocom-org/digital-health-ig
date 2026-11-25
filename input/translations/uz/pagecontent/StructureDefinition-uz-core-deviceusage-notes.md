> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini koddan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Server id si bo'yicha o'qish**

```
GET [base]/DeviceUsage/[id]
```

**Bemorning buyumlarini topish**

```
GET [base]/DeviceUsage?patient=Patient/[id]
GET [base]/DeviceUsage?patient=Patient/[id]&status=active
GET [base]/DeviceUsage?patient=Patient/[id]&device=http://snomed.info/sct%7C69805005
```

`device` `device.concept` dagi kodlangan konsept bo'yicha qidiradi. DeviceUsage hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi qidiruvlar FHIR R5 dagi standart DeviceUsage qidiruv parametrlaridir (`patient`, `status`, `device`, `identifier`).

**Yaratish**

```
POST [base]/DeviceUsage
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "device": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "69805005" } ] } },
  ...
}
```

**Yangilash** (masalan, bemor buyumdan foydalanishni to'xtatdi) - to'liq resursni PUT orqali qayta yuboring, `status` ni `completed` yoki `stopped` ga o'rnatib, `timingPeriod` ga `end` qo'shing:

```
PUT [base]/DeviceUsage/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceUsage",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  ...
}
```

Xato qayd etilgan bayonot o'chirilmaydi: uning `status` ini `entered-in-error` ga o'rnating.

### Aloqador

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Condition](StructureDefinition-uz-core-condition.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
