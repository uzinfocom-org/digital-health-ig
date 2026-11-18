> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Task Referral Approval davlat hisobidan beriladigan yo'llanma yoki kasalxonaga yotqizishni kelishishdagi bitta bosqichni kuzatadi; tartib Vazirlar Mahkamasining 04.11.2025 yildagi 694-son qaroriga 1-ilovada belgilangan. Yo'llanmaning o'zi - davlat tarifi to'lov turiga ega [ServiceRequest](StructureDefinition-uz-core-servicerequest.html); u nima qilinishi kerakligini ko'rsatadi. Har bir Task bitta bosqichda yo'llanmani kim ko'rib chiqishi kerakligini (oilaviy shifokor, mutaxassis, mintaqaviy yoki respublika komissiyasi, sug'urta fondi, qabul qiluvchi kasalxona), qaysi muddatgacha va bu bosqich qanchalik ilgarilaganini ko'rsatadi. Platforma Task larni jarayon hodisalari bo'yicha yaratadi va yangilaydi hamda yo'llanma holatini ular bilan muvofiqlashtiradi; foydalanuvchilar Task ni hech qachon to'g'ridan-to'g'ri yopmaydi. Bosqichlar tartibi hamda yo'llanma va uning Task larini muvofiq ushlab turuvchi qoidalar [yo'llanma ish jarayoni](workflow-referral.html) da berilgan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Task Referral Approval quyidagilarga ega bo'lishi shart

Har bir Task yo'llanmaga ikki marta havola qilishi shart: `basedOn` da - u bajaradigan so'rovga, `focus` da - ustida amal bajariladigan so'rovga. Profil ikkalasini ham majburiy qiladi va har biridan aynan bittasiga ruxsat beradi. Bazaviy resurs `status` va `intent` ni ham talab qiladi.

#### Har bir UZ Core Task Referral Approval quyidagilarni qo'llab-quvvatlashi shart

- vazifaning biznes identifikatori (`identifier`, ko'pi bilan bitta);
- kelishuv bosqichi (`code`: oilaviy shifokor / mutaxassis / mintaqaviy komissiya / respublika komissiyasi / sug'urta fondi / kasalxonaga yotqizish);
- vazifa tegishli bo'lgan yo'llanma (`basedOn` va `focus`) va u qismi bo'lgan kattaroq vazifa (`partOf`);
- hayot sikli holati (`status`: requested / accepted / in-progress / on-hold / completed / rejected / failed va boshqalar) va foydalanuvchilarga ko'rsatiladigan holat (`businessStatus`: ko'rib chiqilmoqda / tasdiqlangan / muddati o'tgan va boshqalar);
- maqsad (`intent`, odatda order);
- yo'llanma beriladigan [bemor](StructureDefinition-uz-core-patient.html) (`for`);
- ushbu bosqichda kim harakat qilishi kerakligi (`owner`: [Organization](StructureDefinition-uz-core-organization.html) yoki [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html));
- bosqich muddati (`requestedPeriod`, uning boshi va oxiri) va u ustidagi ish haqiqatda qachon boshlanib, qachon tugagani (`executionPeriod`).

### Ikki holat

Task ikki holatga ega va ular turli savollarga javob beradi. `status` - vazifaning FHIR dagi hayot sikli, u yo'llanmani boshqaradi: oxirgi kelishuv Task i `completed` bo'lganda ServiceRequest `completed` bo'ladi, komissiya Task i `rejected` yoki `failed` bo'lganda esa ServiceRequest `revoked` bo'ladi. `businessStatus` - bosqichning foydalanuvchilar ko'radigan holati, [vazifalarning milliy biznes holatlari](CodeSystem-task-business-status-cs.html) dan. Profil bitta qoida qo'shadi (`uzcore-tsk-1`, ogohlantirish): vazifa bajarilmagan, bekor qilinmagan yoki muvaffaqiyatsiz tugamagan bo'lsa va uning `requestedPeriod.end` i o'tib ketgan bo'lsa, `businessStatus` `overdue` bo'lishi kerak. Muddati o'tgan bosqich yo'llanma holatini o'zgartirmaydi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik nusxadan muddatini o'tkazib yuborgan bosqichgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar [oilaviy shifokor kelishuvi](Task-example-task-family-doctor.html) dan boshlanadi, ular tegishli bo'lgan yo'llanma esa - [kasalxonaga yotqizishga yo'llanma](ServiceRequest-example-hospitalization-referral.html).

#### Yuborishingiz kerak bo'lgan eng kichik Task

`basedOn`, `focus`, `status` va `intent` majburiy, har bir UZ Core resursi esa o'z profilini `meta.profile` da ko'rsatadi. Vazifa faqat `code` dagi bosqich bilan foydali. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-family-doctor",
        "display": "Oilaviy shifokorning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" }
}
```

Bosqich kodlarining ko'rsatiladigan nomlari o'zbekcha, shuning uchun resurs `language` ni `uz` ga o'rnatadi. `basedOn` va `focus` bir xil ServiceRequest ga havola qiladi. Yangi bosqich `requested` holati bilan boshlanadi.

#### Ko'rib chiqilayotgan bosqich

Qabul qiluvchi kasalxona mutaxassisi yo'llanmani ko'rib chiqmoqda. `owner` - harakat qilishi kerak bo'lgan tashkilot, `for` - bemor, `requestedPeriod` - ushbu bosqich uchun belgilangan muddat, `executionPeriod.start` esa ko'rib chiqish boshlangan vaqt:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-specialist",
        "display": "Mutaxassisning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "in-progress",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "in-review",
        "display": "Ko'rib chiqilmoqda"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-06T09:00:00+05:00", "end": "2026-12-31T18:00:00+05:00" },
  "executionPeriod": { "start": "2026-03-06T10:15:00+05:00" },
  "owner": { "reference": "Organization/tashkent-diseases-hospital" }
}
```

`owner` - komissiya yoki muassasa uchun [Organization](StructureDefinition-uz-core-organization.html), bitta shifokor harakat qilishi kerak bo'lganda esa [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html). Bosqich tugaganda `executionPeriod.end` ni to'ldiring.

#### Muddati o'tgan bosqich

Mintaqaviy komissiya qaror qabul qilmadi va `requestedPeriod.end` dagi muddat o'tib ketdi. Vazifa hali ham `requested` holatida, shuning uchun `businessStatus` `overdue` ga teng:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-regional-commission",
        "display": "Mintaqaviy komissiyaning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "overdue",
        "display": "Muddati o'tgan"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-07T09:00:00+05:00", "end": "2026-03-08T18:00:00+05:00" },
  "owner": { "reference": "Organization/example-organization" }
}
```

Bu yerda `overdue` bo'lmasa, validator `uzcore-tsk-1` qoidasi bajarilmagani haqida ogohlantiradi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
