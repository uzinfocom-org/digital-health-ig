> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Device bitta jismoniy tibbiy buyumni tavsiflaydi: kompyuter tomografi kabi shifoxona uskunasini yoki bachadon ichi spirali kabi alohida buyumni. Profil buyum nima ekanligini (SNOMED CT bo'yicha turi va toifasi), uni kim va qachon ishlab chiqarganini, ushbu birlikni boshqalardan ajratib turadigan model, seriya raqami va partiya raqamini, buyum faol va foydalanish uchun mavjudligini, shuningdek u tegishli bo'lgan tashkilot va joyni qayd etadi. Buyum tibbiy yordamda ishtirok etganda boshqa resurslar unga havola qiladi. [Observation](StructureDefinition-uz-core-observation.html) `device` da o'lchovni bajargan buyumni, [Procedure](StructureDefinition-uz-core-procedure.html) ijrochi yoki subyektni, [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) taxminiy sababni, [SupplyRequest](StructureDefinition-uz-core-supply-request.html), [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) va [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) esa yetkazib beriladigan yoki omborda saqlanadigan buyumni ko'rsatadi. Device - bu haqiqiy birlik haqidagi umumiy yozuv, shuning uchun yangisini yaratishdan oldin [mavjud Device ni](#finding) seriya raqami yoki identifikator bo'yicha qidiring.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Device quyidagilarga ega bo'lishi shart

Asosiy Device resursida majburiy elementlar yo'q va ushbu profil ham ularni qo'shmaydi. Ixtiyoriy `name` ichida `value` ham, `type` ham majburiy.

#### Har bir UZ Core Device quyidagilarni qo'llab-quvvatlashi shart

- identifikator, har doim o'z `system` i bilan yuboriladi ([Identifikatorlar](identifiers.html) ga qarang);
- yozuv holati `status` (active / inactive / entered-in-error) va mavjudlik holati `availabilityStatus` (available / lost / damaged / destroyed), har biri majburiy bog'lanishli qiymatlar to'plamidan ([buyum holati](ValueSet-device-status-vs.html), [mavjudlik holati](ValueSet-device-availability-status-vs.html));
- `displayName` va har bir `name` - uning `value` qiymati, [nom turlari qiymatlar to'plamidan](ValueSet-device-name-type-vs.html) `type` (ro'yxatdan o'tgan, foydalanuvchiga qulay yoki bemor tomonidan bildirilgan nom) va `display` belgisi bilan;
- [buyum turlari qiymatlar to'plamidan](ValueSet-device-type-vs.html) SNOMED CT bilan kodlangan `type` va [buyum toifalari qiymatlar to'plamidan](ValueSet-device-category-vs.html) `category`;
- `manufacturer`, `modelNumber` va `partNumber`;
- `serialNumber`, `lotNumber`, `manufactureDate` va `expirationDate`;
- egasi `owner` - [Organization](StructureDefinition-uz-core-organization.html) ga havola - va joyi `location` - [Location](StructureDefinition-uz-core-location.html) ga havola;
- buyum uchun `contact` aloqa ma'lumotlari va matnli `note` izohlari.

### Mavjud Device ni topish {#finding}

Bitta birlik ikki marta qayd etilmasligi uchun buyumni ro'yxatdan o'tkazishdan oldin uni qidiring (`|` tizimni qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanadi):

```
# by serial number - the reliable match for one unit
GET [base]/Device?serial-number=SN-2023-001456

# by type, within one organization
GET [base]/Device?type=http://snomed.info/sct|54953005&organization=Organization/[id]

# by manufacturer and model, or by batch
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?lot-number=CU-2025-0412
```

`type` bo'yicha qidiruv `type` dagi istalgan kodlashga mos keladi. Qolgan so'rovlar sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik foydali nusxadan to'liq tavsiflangan birlikkacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [kompyuter tomografi misoli](Device-example-ct-scanner.html).

#### Yuborishingiz kerak bo'lgan eng kichik Device

Profil hech narsani majburiy qilmaydi, lekin har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi - server shu orqali qaysi qoidalar bo'yicha validatsiya qilishni biladi. Buyum yozuvi faqat buyum nima ekanligini aytadigan `type` va `status` bilan foydali. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ]
}
```

`type` - SNOMED CT ning jismoniy buyumlar ierarxiyasidan (`49062001 |Device|` va undan pastda) kodlangan `CodeableConcept` lar ro'yxati. `status` - yozuv holati: buyum foydalanishda bo'lganda `active`, foydalanishdan chiqarilgandan keyin `inactive`, xato bilan yaratilgan yozuv uchun esa `entered-in-error`.

#### Shifoxonadagi uskuna

Shifoxona uskunasi odatda qanday ro'yxatdan o'tgan bo'lsa, shunday tavsiflanadi: ishlab chiqaruvchi, model va seriya raqami, ro'yxatdan o'tgan nom `name`, shuningdek buyum qaysi tashkilotga tegishli ekanligi va qayerda turishini ko'rsatadigan `owner` va `location`. `availabilityStatus` buyumdan hozir foydalanish mumkinligini `status` dan alohida bildiradi:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "displayName": "SOMATOM Edge CT scanner",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Siemens Healthineers",
  "manufactureDate": "2023-05-15",
  "serialNumber": "SN-2023-001456",
  "name": [
    { "value": "SOMATOM Edge", "type": "registered-name", "display": true }
  ],
  "modelNumber": "SOMATOM Edge",
  "category": [
    {
      "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "dme" } ]
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/tashkent-diseases-hospital" },
  "location": { "reference": "Location/example-location" }
}
```

`name.type` - `CodeableConcept` emas, oddiy `code` (`registered-name`, `user-friendly-name` yoki `patient-reported-name`). Sukut bo'yicha ko'rsatilishi kerak bo'lgan nomda `display` ni `true` ga o'rnating. `displayName` - foydalanuvchi interfeysi ko'rsatadigan yorliq. `availabilityStatus` va `category` HL7 kodlaridan foydalanadi. Ularning inglizcha ko'rinadigan nomlari asosiy kod tizimlaridan, o'zbekcha va ruscha nomlari esa DHP qo'shimchalaridan (supplements) olinadi, shuning uchun `display` ni ko'rsatmaslik mumkin - server uni o'zi to'ldiradi. `owner` va `location` - oddiy `Reference` lar.

#### Partiyali bir martalik buyum

Implant yoki bir martalik buyum uzoq muddatli aktiv sifatida emas, balki partiyasi bo'yicha kuzatiladi: qadoqdagi `lotNumber` va `expirationDate` ni hamda buyum qanday ishlatilishini bildiradigan `category` kodlarini yuboring. `category` takrorlanadi, shuning uchun bitta buyum bir vaqtning o'zida `implantable` ham, `single-use` ham bo'lishi mumkin:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Pregna International",
  "manufactureDate": "2025-04-10",
  "expirationDate": "2030-03-31",
  "lotNumber": "CU-2025-0412",
  "name": [
    { "value": "Copper T 380A", "type": "registered-name", "display": true }
  ],
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "implantable" } ] },
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "single-use" } ] }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "268460000",
          "display": "Intrauterine contraceptive device"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/example-organization" }
}
```

`expirationDate` va `manufactureDate` `dateTime` turida, shuning uchun oddiy sana yetarli. UZ Core [buyum turlari qiymatlar to'plami](ValueSet-device-type-vs.html) kontratseptiv buyum turlarining o'zbekcha va ruscha nomlarini o'z ichiga oladi: bachadon ichi kontratseptiv vositasi, prezervativ, dori moddasi ajratuvchi kontratseptiv implant va kontratseptiv vosita.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
