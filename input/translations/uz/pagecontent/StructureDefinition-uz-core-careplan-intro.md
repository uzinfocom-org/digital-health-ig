> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core CarePlan tibbiyot xodimlari [bemor](StructureDefinition-uz-core-patient.html) yoki [guruh](StructureDefinition-uz-core-group.html)ga ma'lum davr mobaynida qanday yordam ko'rsatishni rejalashtirganini tavsiflaydi. Bu Raqamli sog'liqni saqlash platformasidagi har qanday reja uchun umumiy profil: hamshiraning uyga patronaj tashriflari, fizioterapiya kursi, mehnatga layoqatsizlik varaqasi holati. Muayyan stsenariy uchun qo'llanma undan meros oladi va o'z identifikatorlari, toifalari va kengaytmalarini qo'shadi. Reja bajarilishi kerak bo'lgan ishlar uchun so'rovlarni ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), [SupplyRequest](StructureDefinition-uz-core-supply-request.html) va boshqalar) birlashtiradi va bajarilgan ishni qayd etuvchi hodisalarni, masalan [Procedure](StructureDefinition-uz-core-procedure.html) ni bog'laydi. Reja bo'yicha bajarilgan Procedure, [Observation](StructureDefinition-uz-core-observation.html) yoki [Immunization](StructureDefinition-uz-core-immunization.html) unga `basedOn` orqali havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)). Tizim mavjud ma'lumotni Must Support elementlariga kiritishi va qabul qilinganda qayta ishlashi kerak. Aniq turlar, karralilik va bog'lanishlar [profilning rasmiy ko'rinishida](#profile) berilgan.

#### Har bir UZ Core CarePlan Must Have

Profil yangi majburiy karraliliklarni qo'shmaydi. Bazaviy FHIR talablariga amal qiling: `status`, `intent` va `subject`.

#### Har bir UZ Core CarePlan Must Support

- biznes identifikatorlar (`identifier`);
- reja tuzilgan ta'rif: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html), [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) yoki [Questionnaire](StructureDefinition-uz-core-questionnaire.html) (`instantiatesCanonical`), yoki tashqi protokol (`instantiatesUri`);
- boshqa rejalar bilan bog'liqlik: bajarilayotgan reja (`basedOn`), almashtirilayotgan reja (`replaces`) va ushbu reja qismi bo'lgan kattaroq reja (`partOf`);
- reja holati (`status`: draft / active / on-hold / revoked / completed / entered-in-error / unknown) va uning niyati (`intent`: proposal / plan / order / option / directive);
- reja turi (`category`), nomi (`title`) va matnli tavsifi (`description`);
- reja kim uchun tuzilgani (`subject`: [Patient](StructureDefinition-uz-core-patient.html) yoki [Group](StructureDefinition-uz-core-group.html)) va reja yaratilgan [Encounter](StructureDefinition-uz-core-encounter.html);
- reja amal qiladigan davr (`period`) va reja tuzilgan sana (`created`);
- reja uchun mas'ul (`custodian`), uni tuzishda ishtirok etganlar (`contributor`) va uni bajaradigan jamoa (`careTeam`);
- reja qaratilgan holatlar (`addresses`: [Condition](StructureDefinition-uz-core-condition.html)), u tayanadigan qo'shimcha ma'lumotlar (`supportingInfo`) va uning maqsadlari (`goal`: [Goal](StructureDefinition-uz-core-goal.html));
- rejalashtirilgan harakatlar (`activity`): har bir harakat uchun so'rov (`plannedActivityReference`), amalda bajarilgan ish (`performedActivity`) va bajarilish jarayoni yozuvlari (`progress`);
- izohlar (`note`).

### JSON ni bosqichma-bosqich tuzish

**1. Minimal reja.** Faqat uchta bazaviy element majburiy. `intent` beshta koddan birini oladi: tibbiyot xodimi amal qilmoqchi bo'lgan reja uchun `plan`, o'z tadbirlarini ruxsat etuvchi reja uchun `order`.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/example-jasur" }
}
```

**2. Rejani tavsiflash.** `category` rejaning turini SNOMED CT `734163000` Care plan avlodi bilan ko'rsatadi, bu yerda `773130005` Nursing care plan. `custodian` - reja uchun mas'ul, `period` - uning amal qilish muddati.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "language": "uz",
  "status": "active",
  "intent": "plan",
  "category": [{
    "coding": [{ "system": "http://snomed.info/sct", "code": "773130005", "display": "Nursing care plan" }]
  }],
  "title": "Yangi tug'ilgan chaqaloq patronaji",
  "subject": { "reference": "Patient/example-jasur" },
  "period": { "start": "2015-06-20", "end": "2015-07-20" },
  "created": "2015-06-22T09:00:00+05:00",
  "custodian": { "reference": "PractitionerRole/example-patronage-nurse-role" }
}
```

**3. Tadbirlarni qo'shish.** Har bir `activity` rejalashtirilgan yoki bajarilgan bo'ladi. Rejalashtirilgan tadbir - `plannedActivityReference` havola qiladigan so'rov. Bajarilgan tadbir - uni qayd etuvchi hodisa, `performedActivity` da; bu `CodeableReference`, shuning uchun havola bir daraja chuqurroqda, `reference` ichida joylashadi.

```json
"activity": [
  {
    "plannedActivityReference": { "reference": "ServiceRequest/example-nursing-newborn-home-visit-request" }
  },
  {
    "performedActivity": [{ "reference": { "reference": "Procedure/example-procedure" } }]
  }
]
```

To'liq namunalar: [yangi tug'ilgan chaqaloq patronaji rejasi](CarePlan-example-newborn-patronage-careplan.html) va [davolovchi massaj kursi](CarePlan-example-massage-careplan.html).

API so'rovlari uchun [Tezkor boshlash](#quick-start) bo'limiga qarang.
