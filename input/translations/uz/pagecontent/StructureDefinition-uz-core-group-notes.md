> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Guruhni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/Group/[id]
GET [base]/Group/[id]/_history
```

**Qidiruv**

```
GET [base]/Group?identifier=[system]%7C[value]
GET [base]/Group?code=https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs%7Cgroup-0001-00001
GET [base]/Group?membership=definitional&type=person
GET [base]/Group?managing-entity=Organization/[id]
GET [base]/Group?name=diabetes
```

**Bemor a'zo bo'lgan guruhlarni topish**

```
GET [base]/Group?member=Patient/[id]
```

**Guruh yaratish**

```
POST [base]/Group
{
  "resourceType": "Group",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00005" }
    ]
  },
  "name": "Invited patients",
  "managingEntity": { "reference": "Organization/[id]" },
  "member": [ { "entity": { "reference": "Patient/[id]" } } ],
  ...
}
```

**Mavjud guruhni yangilash** (masalan, a'zo qo'shish yoki uni `inactive` deb belgilab, `quantity` ni yangilash) - resursni to'liq PUT orqali qaytaring:

```
PUT [base]/Group/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Group",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "member": [ ... ],
  "quantity": 3,
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core CarePlan](StructureDefinition-uz-core-careplan.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Komponentlar](components.html) &middot; [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
