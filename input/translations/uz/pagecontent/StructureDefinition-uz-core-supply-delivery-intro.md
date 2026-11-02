> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core SupplyDelivery ta'minot buyumlari topshirilganini qayd etadi: qon xizmati tomonidan bemor uchun shifoxonaga yuborilgan qon komponenti, tibbiyot muassasasiga yetkazilgan dori yoki tibbiy buyumlar partiyasi yoki bitta tashkilot ichida bir ombordan boshqasiga ko'chirilgan zaxira. Resurs nima va qancha yetkazilganini, kim va qaysi joydan yuborganini, qayerga borganini va kim qabul qilganini, shuningdek qachonligini ko'rsatadi. Yetkazib berish odatda [SupplyRequest](StructureDefinition-uz-core-supply-request.html) ni bajaradi va kattaroq yetkazib berish yoki shartnomaning bir qismi bo'lishi mumkin. Yetkazilgan buyum kod yoki [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html), Substance, NutritionProduct yoki InventoryItem ga havola bilan beriladi. Yetkazib berish rejalashtirilgan tadbirni bajarganda [CarePlan](StructureDefinition-uz-core-careplan.html) unga `activity.performedActivity` da havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core SupplyDelivery quyidagilarga ega bo'lishi shart

Bazaviy SupplyDelivery resursida majburiy elementlar yo'q va ushbu profil ham ularni qo'shmaydi. Yetkazib berish raqami doim o'z `system` i bilan yuboriladi, deliver-from kengaytmasi esa doim joyni o'z ichiga oladi.

#### Har bir UZ Core SupplyDelivery quyidagilarni qo'llab-quvvatlashi shart

- yetkazib beruvchi bergan yetkazib berish raqami, doim `system` bilan birga (qarang: [identifikator slayslari](#identifier-slices));
- yetkazib berish bajaradigan [SupplyRequest](StructureDefinition-uz-core-supply-request.html) (`basedOn`) hamda u qismi bo'lgan kattaroq yetkazib berish yoki shartnoma (`partOf`);
- yetkazib berish holati `status` (in-progress / completed / abandoned / entered-in-error);
- buyumlar bitta bemor uchun mo'ljallangan bo'lsa, o'sha bemor `patient`;
- yetkazilgan buyum turi `type` (dori / tibbiy buyum / biologik kelib chiqishli mahsulot);
- yetkazilgan buyum va uning miqdori `quantity`;
- yetkazib berish vaqti (`occurrence[x]`);
- yetkazib beruvchi `supplier`, buyumlar yuborilgan joy (deliver-from kengaytmasi), manzil `destination` va qabul qiluvchi `receiver`.

### Kim, qayerdan yubordi va kim, qayerda qabul qildi

Yetkazib berishning ikki tomonini to'rtta element tavsiflaydi. Ularni aralashtirmang:

| | Kim | Qayer |
|---|---|---|
| Yuborish tomoni | `supplier`: yetkazib berish uchun javobgar tashkilot, tibbiyot xodimi yoki uning roli | [deliver-from](StructureDefinition-supplydelivery-deliver-from.html) kengaytmasi: buyumlar jo'natilgan [Location](StructureDefinition-uz-core-location.html), masalan jo'natuvchi ombor |
| Qabul qilish tomoni | `receiver`: buyumlarni qabul qilgan tashkilot yoki shaxs | `destination`: buyumlar yetkazilgan [Location](StructureDefinition-uz-core-location.html) |

FHIR bazaviy SupplyDelivery resursida jo'natish joyi uchun element yo'q, shuning uchun UZ Core deliver-from kengaytmasini qo'shadi. U yetkazib berish tomonidagi `SupplyRequest.deliverFrom` ga mos keladi: so'rov buyumlar qayerdan kelishi kerakligini, yetkazib berish esa ular aslida qayerdan kelganini ko'rsatadi. Bitta shifoxonaning ikki ombori o'rtasidagi ko'chirishda `supplier` va `receiver` bir xil tashkilot bo'ladi va yetkazib berishlarni faqat ikki joy farqlaydi.

`supplier` [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) bo'lsa ham, jo'natish joyini kengaytmada yuboring. `PractitionerRole.location` shaxs ishlaydigan joylarni sanab o'tadi, ular bir nechta bo'lishi va vaqt o'tishi bilan o'zgarishi mumkin, shuning uchun bu element ma'lum bir yetkazib berish qaysi ombordan jo'natilganini ko'rsatmaydi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik foydali nusxadan omborlar o'rtasidagi ko'chirishgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [qon komponentini yetkazib berish](SupplyDelivery-example-blood-product-supply-delivery.html) va [omborlar o'rtasidagi ko'chirish](SupplyDelivery-example-warehouse-transfer-supply-delivery.html).

#### Yuborishingiz kerak bo'lgan eng kichik SupplyDelivery

Profil hech narsani majburiy qilmaydi, lekin har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi, shunda server uni qaysi qoidalar bo'yicha tekshirishni biladi. Yetkazib berish faqat `status`, buyum turi `type` va nima yetkazilgani bilan foydali bo'ladi. Shuncha ma'lumot validatsiyadan o'tadi:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ]
}
```

`status` va `type` HL7 kodlaridan foydalanadi. Ularning inglizcha nomlari bazaviy kod tizimlaridan, o'zbekcha va ruscha nomlari esa DHP supplementlaridan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi. `suppliedItem.item[x]` - bu `itemCodeableConcept` yoki `itemReference`; buyum alohida resurs sifatida qayd etilgan bo'lsa, havoladan foydalaning.

#### Bemor uchun yetkazilgan qon komponenti

Qon xizmati shifoxonaga ma'lum bir bemor uchun bir birlik eritrotsit massasini yetkazadi. Qon xizmatining yetkazib berish raqami `identifier` ga yoziladi, `basedOn` shifoxonaning [so'roviga](SupplyRequest-example-supply-request.html) havola qiladi, `occurrencePeriod` esa jo'natishdan topshirishgacha bo'lgan vaqtni qamrab oladi:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }
  ],
  "basedOn": [ { "reference": "SupplyRequest/example-supply-request" } ],
  "status": "completed",
  "patient": { "reference": "Patient/example-salim" },
  "type": {
    "coding": [
      { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct" }
    ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
      "itemReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
    }
  ],
  "occurrencePeriod": { "start": "2026-09-15T09:00:00+05:00", "end": "2026-09-15T10:00:00+05:00" },
  "supplier": { "reference": "Organization/andijan-station" },
  "destination": { "reference": "Location/example-location" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

`receiver` takrorlanadi, `destination` esa takrorlanmaydi. `occurrence[x]` - bitta lahza uchun `dateTime`, vaqt talab qiladigan yetkazib berish uchun `Period` yoki `Timing`.

#### Yetkazib berish raqami {#identifier-slices}

`identifier` `system` URI bo'yicha slayslarga bo'lingan, shuning uchun tizim aniq mos kelishi kerak:

| Identifikator | `system` | Kim beradi |
|---|---|---|
| [Yetkazib berish raqami](NamingSystem-uzb-supply-delivery-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery` | Yetkazib beruvchi, masalan qon komponentlarini beruvchi qon xizmati |

#### Omborlar o'rtasidagi ko'chirish

Shifoxona paratsetamolni markaziy omboridan jarrohlik bo'limining omborxonasiga ko'chiradi. Shifoxona ham `supplier`, ham `receiver` bo'lgani uchun jo'natuvchi ombor deliver-from kengaytmasiga, omborxona esa `destination` ga yoziladi:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/example-central-warehouse" }
    }
  ],
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "TR-2026-0042" }
  ],
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ],
  "occurrenceDateTime": "2026-10-28T11:30:00+05:00",
  "supplier": { "reference": "Organization/tashkent-diseases-hospital" },
  "destination": { "reference": "Location/example-surgery-storeroom" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

Kengaytma qiymati [UZ Core Location](StructureDefinition-uz-core-location.html) ga `Reference` bo'lib, ko'pi bilan bir marta uchraydi. Ko'chirishda `patient` bo'lmaydi. Ko'chirish uchun so'rov bo'lmagan bo'lsa, `basedOn` ni ko'rsatmang.
