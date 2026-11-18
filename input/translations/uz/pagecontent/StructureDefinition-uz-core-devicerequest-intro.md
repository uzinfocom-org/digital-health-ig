> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core DeviceRequest bemorga berilishi yoki unga nisbatan qo'llanilishi kerak bo'lgan tibbiy buyum buyurtmasini qayd etadi: kontratsepsiya uchun bachadon ichi vositasi, eshitish apparati, sinishdan keyin qo'ltiqtayoqlar yoki uy sharoitidagi kislorod kontsentratori. Resurs qaysi buyum va qancha so'ralganini, qanday xususiyatlar bilan (masalan, o'lchami), qaysi bemor uchun, kim buyurganini va uni kim taqdim etishi so'ralganini, qachon va nima uchun ekanini ko'rsatadi. So'ralgan buyum [UZ Core Device](StructureDefinition-uz-core-device.html) ga havola yoki buyum turining kodi bilan beriladi. So'rov rejaning bir qismi bo'lganda [CarePlan](StructureDefinition-uz-core-careplan.html) unga `activity.plannedActivityReference` da havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core DeviceRequest quyidagilarga ega bo'lishi shart

Profil majburiy elementlar qo'shmaydi. Bazaviy resurs `intent`, so'ralgan buyum (`code`) va buyum mo'ljallangan [bemor](StructureDefinition-uz-core-patient.html) (`subject`) ni talab qiladi.

#### Har bir UZ Core DeviceRequest quyidagilarni qo'llab-quvvatlashi shart

- so'rov identifikatorlari (`identifier`) va birga buyurilgan so'rovlar uchun umumiy `groupIdentifier`;
- ushbu so'rov almashtirgan oldingi so'rov (`replaces`);
- so'rov holati `status` (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- ustuvorlik `priority` (routine / urgent / asap / stat) va so'rov buyumni taqiqlaganda `doNotPerform`;
- nechta buyum so'ralgani (`quantity`) va ularning talab qilingan xususiyatlari (`parameter`);
- so'rov berilgan [murojaat](StructureDefinition-uz-core-encounter.html);
- buyum qachon berilishi yoki qo'llanilishi kerakligi (`occurrence[x]`) va so'rov qachon rasmiylashtirilgani (`authoredOn`);
- buyurtmachi `requester` va buyumni taqdim etishi so'ralgan ijrochi `performer`;
- so'rov sababi `reason`, shuningdek buyum faqat zarurat bo'yicha kerakmi (`asNeeded`, `asNeededFor`);
- bemorning sug'urtasi `insurance`, `supportingInfo`, `note` va so'rov tarixi `relevantHistory`.

### Qaysi buyum va qanday xususiyatlar bilan

So'ralgan buyum [`code`](#k-DeviceRequest.code) da havola yoki kod sifatida ko'rsatiladi:

- `code.reference` muayyan buyum yoki model buyurtma qilinganda [UZ Core Device](StructureDefinition-uz-core-device.html) ga havola qiladi.
- `code.concept` faqat buyum turi muhim bo'lib, aniq buyumni yetkazib beruvchi tanlaganda kodni saqlaydi.

Har bir xususiyat uchun bitta `parameter` qo'shing. `parameter.code` qaysi xususiyat ekanini ko'rsatadi: [Buyum so'rovi parametrlari](ValueSet-device-request-parameter-code-vs.html) dan uzunlik (`410668003`), kenglik (`103355008`) yoki diametr (`81827009`), yoki ularning hech biri mos kelmasa boshqa SNOMED CT kodi. `parameter.value[x]` qiymatni saqlaydi, odatda UCUM `system` va `code` bilan `Quantity`.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli nusxadan to'liq buyurtmagacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [mis BIV buyurtmasi](DeviceRequest-example-devicerequest-iud.html).

#### Yuborish mumkin bo'lgan eng kichik DeviceRequest

Har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi, shunda server uni qaysi qoidalar bo'yicha tekshirishni biladi. Buyum so'roviga, shuningdek, maqsad `intent`, so'ralgan buyum va bemor kerak. Qabul qiluvchi so'rov amalda ekanini bilishi uchun `status` ni qo'shing:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "subject": { "reference": "Patient/example-nodira" }
}
```

`status`, `intent` va `priority` HL7 kodlaridan foydalanadi. Ularning inglizcha nomlari bazaviy kod tizimlaridan, o'zbekcha va ruscha nomlari esa DHP supplementlaridan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi.

#### Turi bo'yicha o'lchami bilan buyurilgan buyum

Faqat buyum turi muhim bo'lsa, `code.concept` da SNOMED CT kodini ko'rsating, aniq buyumni esa yetkazib beruvchi tanlaydi. Fizioterapevt nogironligi bor bemorga eskirgan mexanik nogironlik aravachasi o'rniga yangisini buyuradi. O'rindig'ining kengligi 44 dan 48 sm gacha bo'lgan har qanday model mos keladi:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "58938008", "display": "Wheelchair" } ] }
  },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueRange": {
        "low": { "value": 44, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" },
        "high": { "value": 48, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" }
      }
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-11-10T11:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-physiotherapist-role" },
  "reason": [ { "reference": { "reference": "Condition/example-disability" } } ]
}
```

Bu yerda `parameter.value[x]` - `Range`, chunki shu oraliqdagi har qanday kenglik mos keladi; bitta aniq o'lcham uchun `Quantity` dan foydalaning. Namunaviy nusxa - [nogironlik aravachasi buyurtmasi](DeviceRequest-example-devicerequest-wheelchair.html).

#### Muayyan mis BIV uchun bajarilgan buyurtma

10-fevraldagi maslahatda ginekolog kontratsepsiya uchun uni tanlagan bemorga poliklinikada mavjud bo'lgan mis bachadon ichi vositasini buyuradi. Poliklinika uni 18-fevral kuni o'rnatdi, shuning uchun buyurtma endi `completed`:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "replaces": [ { "reference": "DeviceRequest/example-devicerequest-implant" } ],
  "status": "completed",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "subject": { "reference": "Patient/example-nodira" },
  "encounter": { "reference": "Encounter/example-encounter-iud-consultation" },
  "occurrenceDateTime": "2026-02-18T09:00:00+05:00",
  "authoredOn": "2026-02-10T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/xonobod-medical-association" } },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ]
      }
    }
  ],
  "asNeeded": false,
  "note": [ { "text": "Copper T 380A from the polyclinic stock; insertion booked for 18 February." } ]
}
```

`requester` - bu [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), shuning uchun so'rov ham shifokorni, ham u buyurtma bergan muassasani qayd etadi. `performer` - [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) yoki [Organization](StructureDefinition-uz-core-organization.html) ga `CodeableReference`; `requester` dan farqli o'laroq, uning havolasi bir daraja chuqurroqda, `performer.reference` da joylashadi. `reason` takrorlanadi va xuddi shunday ishlaydi: kodlangan sabab uchun `concept`, tashxis qayd etilganda [UZ Core Condition](StructureDefinition-uz-core-condition.html) ga `reference`.

#### So'rovni o'zgartirish yoki bekor qilish

So'rov boshqa buyurtmaga tahrirlanmaydi. Uni o'zgartirish uchun, masalan boshqa o'lchamga, eski so'rovga `replaces` da havola qiluvchi yangi DeviceRequest yarating va eski so'rovning `status` ini `revoked` ga o'rnating. Yuqoridagi mis BIV buyurtmasi bemor BIV ni tanlaganda bekor qilingan oldingi [implant buyurtmasini](DeviceRequest-example-devicerequest-implant.html) almashtiradi. So'rovni almashtirmasdan bekor qilish uchun uning `status` ini `revoked` ga o'rnating. `entered-in-error` dan faqat so'rov umuman mavjud bo'lmasligi kerak bo'lganda foydalaning.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
