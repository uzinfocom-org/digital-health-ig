> **Mashina tarjimasi, inson tekshiruvi talab etiladi.** Tafovut bo‘lsa, inglizcha matn ustuvor.

### Tez boshlash {#quick-start}

So‘rovlar JWT talab qiladi: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` — [FHIR server asosiy URL manzili](api-access.html#endpoints); tizim va kodni ajratuvchi `|` belgisi `%7C` sifatida kodlanadi.

Resurs hali [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da e’lon qilinmagan. Server qo‘llab-quvvatlashini tekshiring. Bu yerda qidiruv qo‘llab-quvvatlanishi tasdiqlanmaydi.

```http
GET [base]/BiologicallyDerivedProductDispense/[id]
```

```http
POST [base]/BiologicallyDerivedProductDispense
Content-Type: application/fhir+json
```

```http
PUT [base]/BiologicallyDerivedProductDispense/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

So‘rov tanasi sifatida [berish namunasi JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) dan foydalaning va havolalarni haqiqiy id lar bilan almashtiring. Yangilashda serverdagi joriy versiyani `If-Match` da yuboring.

### Tegishli materiallar

- [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html)
- [Procedure](StructureDefinition-uz-core-procedure.html)
- [API](api-access.html)
