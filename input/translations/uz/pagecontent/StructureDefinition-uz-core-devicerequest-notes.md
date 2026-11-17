> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Buyum so'rovini server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/DeviceRequest/[id]
GET [base]/DeviceRequest/[id]/_history
```

**Qidiruv**

```
GET [base]/DeviceRequest?_lastUpdated=ge2026-11-01
GET [base]/DeviceRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest
GET [base]/DeviceRequest?_id=[id1],[id2]
```

**Buyum so'rovini yaratish**

```
POST [base]/DeviceRequest
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  ...
}
```

**Mavjud buyum so'rovini yangilash** (masalan, buyum berilgandan keyin `status` ni `completed` ga o'rnatish)

```
PUT [base]/DeviceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "completed",
  ...
}
```

DeviceRequest hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; u qo'llab-quvvatlaydigan qidiruv parametrlari [FHIR bazaviy spetsifikatsiyasida](https://hl7.org/fhir/R5/devicerequest.html#search) belgilangan.

### Bog'liq bo'limlar

- [UZ Core Device](StructureDefinition-uz-core-device.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Buyum so'rovi parametrlari](ValueSet-device-request-parameter-code-vs.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
