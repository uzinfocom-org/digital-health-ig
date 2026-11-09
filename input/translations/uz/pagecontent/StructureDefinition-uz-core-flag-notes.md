> **Mashina tarjimasi, inson tekshiruvi talab etiladi.** Tafovut bo‘lsa, inglizcha matn ustuvor.

### Tez boshlash {#quick-start}

So‘rovlar JWT talab qiladi: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` — [FHIR server asosiy URL manzili](api-access.html#endpoints); tizim va kodni ajratuvchi `|` belgisi `%7C` sifatida kodlanadi.

Flag hali [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da e’lon qilinmagan. Avval server qo‘llab-quvvatlashini tekshiring. Bu yerda qidiruvni qo‘llab-quvvatlash tasdiqlanmaydi.

**Server id bo‘yicha o‘qish**

```http
GET [base]/Flag/[id]
```

**Yaratish**

```http
POST [base]/Flag
Content-Type: application/fhir+json
```

**Versiyani nazorat qilib yangilash**

```http
PUT [base]/Flag/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

So‘rov tanasi uchun [ruxsat JSON](Flag-example-donation-eligible-flag.json.html) yoki [chetlatish JSON](Flag-example-donation-deferred-flag.json.html) dan foydalaning. Namuna havolalarini haqiqiy id lar bilan almashtiring. Yangilashda serverdagi joriy versiyani `If-Match` da yuboring.

### Tegishli materiallar

- [Patient](StructureDefinition-uz-core-patient.html)
- [Encounter](StructureDefinition-uz-core-encounter.html)
- [API](api-access.html)
