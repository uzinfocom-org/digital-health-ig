> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core DeviceRequest bemorga berilishi yoki unga nisbatan qo'llanilishi kerak bo'lgan tibbiy buyum buyurtmasini qayd etadi: kontratsepsiya uchun bachadon ichi vositasi, eshitish apparati, sinishdan keyin qo'ltiqtayoqlar yoki uy sharoitidagi kislorod kontsentratori. Resurs qaysi buyum va qancha so'ralganini, qanday xususiyatlar bilan (masalan, o'lchami), qaysi bemor uchun, kim buyurganini va uni kim taqdim etishi so'ralganini, qachon va nima uchun ekanini ko'rsatadi. So'ralgan buyum [UZ Core Device](StructureDefinition-uz-core-device.html) ga havola yoki buyum turining kodi bilan beriladi. So'rov rejaning bir qismi bo'lganda [CarePlan](StructureDefinition-uz-core-careplan.html) unga `activity.plannedActivityReference` da havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core DeviceRequest quyidagilarga ega bo'lishi shart

- so'rov maqsadi `intent` (proposal / plan / order va boshqalar);
- so'ralgan buyum (`code`);
- sub'yekt `subject`: buyum mo'ljallangan [bemor](StructureDefinition-uz-core-patient.html).

Bu uchtasi bazaviy DeviceRequest resursida majburiy; ushbu profil boshqa majburiy elementlar qo'shmaydi.

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

`code` turi `CodeableReference`, shuning uchun buyumni ikki usulda ko'rsatish mumkin:

| Usul | Qachon |
|---|---|
| [UZ Core Device](StructureDefinition-uz-core-device.html) ga `code.reference` | Muayyan buyum yoki muassasa alohida resurs sifatida yuritadigan buyum modeli |
| Kod bilan `code.concept` | Faqat buyum turi ma'lum, aniq buyumni esa yetkazib beruvchi tanlaydi |

`parameter` takrorlanadi, har bir xususiyat uchun bitta yozuv. `parameter.code` qaysi xususiyat ekanini ko'rsatadi va [Buyum so'rovi parametrlari](ValueSet-device-request-parameter-code-vs.html) to'plamiga (extensible) bog'langan:

| Kod ([SNOMED CT](https://browser.ihtsdotools.org/)) | Ko'rinish | O'zbekcha | Ruscha |
|---|---|---|---|
| `410668003` | Length | Uzunlik | Длина |
| `103355008` | Width | Kenglik | Ширина |
| `81827009` | Diameter | Diametr | Диаметр |

Boshqa koddan faqat bularning hech biri mos kelmaganda foydalaning. `parameter.value[x]` - o'lchangan o'lcham uchun `Quantity`, ruxsat etilgan oraliq uchun `Range`, kodlangan sozlama uchun `CodeableConcept` yoki `boolean`. `Quantity` ni UCUM `system` va `code` bilan birga yuboring.

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

#### Kengligi ko'rsatilgan mis BIV buyurtmasi

Ginekolog kontratsepsiya uchun uni tanlagan bemorga kengligi 28 mm bo'lgan bitta mis bachadon ichi vositasini buyuradi. Vosita klinikada 20-noyabr kuni o'rnatiladi:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueQuantity": { "value": 28, "unit": "mm", "system": "http://unitsofmeasure.org", "code": "mm" }
    }
  ],
  "subject": { "reference": "Patient/example-nodira" },
  "occurrenceDateTime": "2026-11-20T09:00:00+05:00",
  "authoredOn": "2026-11-16T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/example-organization" } },
  "reason": [
    { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ] } }
  ],
  "asNeeded": false
}
```

`requester` - bu [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), shuning uchun so'rov ham shifokorni, ham u buyurtma bergan muassasani qayd etadi. `performer` - [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) yoki [Organization](StructureDefinition-uz-core-organization.html) ga `CodeableReference`; `requester` dan farqli o'laroq, uning havolasi bir daraja chuqurroqda, `performer.reference` da joylashadi. `reason` takrorlanadi va xuddi shunday ishlaydi: kodlangan sabab uchun `concept`, tashxis qayd etilganda [UZ Core Condition](StructureDefinition-uz-core-condition.html) ga `reference`.

#### So'rovni o'zgartirish yoki bekor qilish

So'rov boshqa buyurtmaga tahrirlanmaydi. Uni o'zgartirish uchun, masalan boshqa o'lchamga, eski so'rovga `replaces` da havola qiluvchi yangi DeviceRequest yarating va eski so'rovning `status` ini `revoked` ga o'rnating. So'rovni almashtirmasdan bekor qilish uchun uning `status` ini `revoked` ga o'rnating. `entered-in-error` dan faqat so'rov umuman mavjud bo'lmasligi kerak bo'lganda foydalaning.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
