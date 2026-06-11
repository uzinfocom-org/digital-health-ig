> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Goal Raqamli sog'liqni saqlash platformasida bemor uchun sog'liq maqsadini qayd etadi - bemor erishishga intilayotgan mo'ljal, masalan, maqsadli vazn, maqsadli HbA1c, qon bosimi mo'ljali yoki jismoniy faollik mo'ljali. Maqsadlar ko'pincha bemor tomonidan portalda belgilanadi. Maqsad biror [Holatga](StructureDefinition-uz-core-condition.html) qaratilishi mumkin va uning natijasi [Kuzatuv](StructureDefinition-uz-core-observation.html) orqali o'lchanishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Goal quyidagilarga ega bo'lishi shart

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar bazaviy resursdan meros qilib olinadi: hayot tsikli holati, maqsad tavsifi va subyekt (u kimga mo'ljallangani).

#### Har bir UZ Core Goal quyidagilarni qo'llab-quvvatlashi shart



- identifikator (masalan, sug'urtalovchining yoki boshqa klinikaning tizimidagi raqam);
- lifecycleStatus (proposed, planned, accepted, active, on-hold, completed, cancelled, entered-in-error, rejected) - DHP goal-status qiymatlar to'plamiga bog'langan;
- achievementStatus (in-progress, improving, worsening, no-change, achieved, sustaining, not-achieved, no-progress, not-attainable) - DHP goal-achievement qiymatlar to'plamiga bog'langan;
- maqsadni turi bo'yicha guruhlovchi kategoriya (masalan, davolash, parhez, xulq-atvor, hamshiralik);
- continuous bayrog'i - maqsadga erishilgandan keyin ham harakat davom etishi kerak bo'lganda true (masalan, umrbod parhez);
- ustuvorlik (high, medium, low);
- maqsad nimadan iboratligi tavsifi (matn yoki kod);
- maqsad kimga belgilanganini bildiruvchi subyekt - [Bemor](StructureDefinition-uz-core-patient.html), Guruh yoki [Tashkilot](StructureDefinition-uz-core-organization.html);
- start[x] (maqsad ustida ish boshlanganda);
- maqsad - o'lchanadigan parametr (`target.measure`), erishiladigan ko'rsatkich yoki holat (`target.detail[x]`) va muddat (`target.due[x]`);
- joriy holat uchun statusDate va statusReason;
- manba - maqsadni kim belgilagani (CareTeam, [Bemor](StructureDefinition-uz-core-patient.html), [Tibbiyot xodimi](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) yoki RelatedPerson);
- maqsad qaratilgan tibbiy muammolar ([Holat](StructureDefinition-uz-core-condition.html), [Kuzatuv](StructureDefinition-uz-core-observation.html), Ijtimoiy-iqtisodiy kuzatuv, dori, ovqatlanish buyurtmasi, xizmat so'rovi, xavf bahosi yoki [Muolaja](StructureDefinition-uz-core-procedure.html));
- erkin matnli izohlar;
- yakuniy natija - erishilgan natijani qayd etuvchi [Kuzatuv](StructureDefinition-uz-core-observation.html).

> Maqsad hech qachon butunlay o'chirilmaydi. Uni qaytarib olish uchun `DELETE` chaqirish o'rniga `lifecycleStatus` ni o'zgartiring (masalan, `cancelled` yoki `completed` ga).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan tortib, maqsad va o'lchangan natijaga ega to'liq maqsadgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar nusxasi - [misol Goal](Goal-example-goal.html).

#### Yuborishingiz mumkin bo'lgan eng kichik Goal

Uchta element qat'iy majburiy: maqsad rejalashtirishning qaysi bosqichida turganini bildiruvchi `lifecycleStatus` (proposed, planned, accepted, active, on-hold, completed ...), maqsad nimadan iboratligi `description` va u kimga mo'ljallangani `subject` (oddiy [Bemor](StructureDefinition-uz-core-patient.html) havolasi). Tavsif SNOMED CT kodi yoki erkin matn bo'lishi mumkin. Har bir UZ Core resursi `meta.profile` da o'zi muvofiqlik da'vo qilayotgan profilni ham ko'rsatishi shart. Shu darajaning o'zi allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`lifecycleStatus` required bog'lanishdan foydalanadi, shuning uchun qiymat bog'langan qiymatlar to'plamidan olinishi shart. Mos kodga ega bo'lmagan maqsadni tasvirlash uchun `coding` o'rniga `description.text` ni yuboring.

#### Real maqsad

Amalda siz maqsadni kontekstda yuborasiz: u kimga mo'ljallangani (`subject`, odatda [Bemor](StructureDefinition-uz-core-patient.html)), qanday kechayotgani (`achievementStatus`), qanday guruhlangani (`category`), qanchalik muhimligi (`priority`), ish qachon boshlangani (`start[x]`) va kim belgilagani (`source`). `continuous` bayrog'i maqsadga erishilgandan keyin ham harakat davom etishi kerak bo'lganda true bo'ladi, masalan, umrbod parhez:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "achievementStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-achievement", "code": "in-progress", "display": "In progress" }]
  },
  "category": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-category", "code": "dietary", "display": "Dietary" }] }
  ],
  "continuous": true,
  "priority": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-priority", "code": "high-priority", "display": "High priority" }]
  },
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "startDate": "2024-01-01",
  "statusDate": "2024-01-15",
  "statusReason": "The patient started taking medications.",
  "source": { "reference": "Practitioner/example-practitioner" },
  "note": [
    { "text": "Weekly blood pressure monitoring." }
  ]
}
```

`achievementStatus`, `priority` va `lifecycleStatus` har biri required bog'lanishdan foydalanadi; `category` va `description` `example` sifatida bog'langan, shuning uchun mos kelgan joyda boshqa kodlardan foydalanishingiz mumkin. `subject` va `source` oddiy `Reference` qiymatlaridir (`{ "reference": "Type/id" }`).

#### O'lchanadigan maqsadni qo'shish

Ko'pchilik maqsadlar `target` ga ega bo'ladi - kuzatilayotgan parametr (`target.measure`), erishiladigan ko'rsatkich yoki holat (`target.detail[x]`) va muddat (`target.due[x]`). Muddat belgilangan sana (`dueDate`) yoki boshlanishidan keyingi davr (`dueDuration`) bo'lishi mumkin. Agar `target.detail[x]` ni to'ldirsangiz, `target.measure` ni ham yuborishingiz shart:

```json
"target": [
  {
    "measure": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
    },
    "detailQuantity": { "value": 120, "unit": "mmHg", "system": "http://unitsofmeasure.org", "code": "mm[Hg]" },
    "dueDate": "2024-06-01"
  }
]
```

Ushbu `target` massivi yuqoridagi real maqsad bilan bir xil resursga joylashadi. `detailQuantity` bo'yicha UCUM qoidalari uchun [Birliklar va miqdorlar](general-guidance.html#units-and-quantities) bo'limiga qarang.

#### Muammo va natijani bog'lash

Maqsad odatda qayd etilgan muammoni hal qilish uchun mavjud bo'ladi va keyinchalik o'lchov asosida baholanadi. `addresses` ni maqsad belgilangan [Holat](StructureDefinition-uz-core-condition.html) (yoki [Kuzatuv](StructureDefinition-uz-core-observation.html), [Muolaja](StructureDefinition-uz-core-procedure.html), dori yoki xizmat so'rovi) ga yo'naltiring va `outcome` ni natijani qayd etuvchi [Kuzatuv](StructureDefinition-uz-core-observation.html) ga yo'naltiring. Shaklidagi farqga e'tibor bering: `addresses` oddiy `Reference`, `outcome` esa `CodeableReference`, shuning uchun uning havolasi bir daraja chuqurroqda joylashadi:

```json
{
  "addresses": [
    { "reference": "Condition/example-headache" }
  ],
  "outcome": [
    { "reference": { "reference": "Observation/blood-pressure-example" } }
  ]
}
```

Ushbu kalitlar yuqoridagi real maqsad bilan bir xil resursga joylashadi. Maqsadni o'chirish o'rniga uni qaytarib olish uchun `lifecycleStatus` ni `cancelled` yoki `completed` ga o'rnating va sababini `statusReason` da qayd eting.

Misol API chaqiruvlari va namuna yuk ma'lumoti uchun ushbu sahifaning pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
