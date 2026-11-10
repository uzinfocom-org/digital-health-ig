> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core BiologicallyDerivedProduct transfuziya yoki transplantatsiya uchun mo'ljallangan inson kelib chiqishli materialni tavsiflaydi: bir birlik donor to'liq qoni, undan tayyorlangan eritrotsit, plazma yoki trombotsit komponenti, shuningdek to'qimalar va hujayralar. Resurs mahsulot nima ekanligini, uning birlik raqami va u olingan donatsiyani, u tayyorlangan mahsulotni, uni qayta ishlagan qon xizmatini, qachon tayyorlanganini, yaroqlilik muddatini, qanday saqlanishi kerakligini, shuningdek qon guruhi, hajmi va gematokritini qayd etadi. [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) mahsulot shifoxonaga yetkazilganda unga havola qiladi, [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) u omborda saqlanganda, [SupplyRequest](StructureDefinition-uz-core-supply-request.html) uni so'rashi mumkin, [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) esa uni transfuziya reaksiyasining taxminiy sababi sifatida ko'rsatishi mumkin. Har bir birlik o'z birlik raqami bilan identifikatsiya qilinadi, shuning uchun yangi mahsulot yaratishdan oldin [mavjudini qidirishingiz](#finding) kerak.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core BiologicallyDerivedProduct quyidagilarga ega bo'lishi shart

Bazaviy BiologicallyDerivedProduct resursida majburiy elementlar yo'q va ushbu profil ham ularni qo'shmaydi. Birlik raqami va donatsiya raqami o'z `system` va `value` iga, har bir `property` esa tur va qiymatga ega bo'lishi shart.

#### Har bir UZ Core BiologicallyDerivedProduct quyidagilarni qo'llab-quvvatlashi shart

- mahsulotni tayyorlagan yoki qayta ishlagan qon xizmati bergan birlik raqami, doim `system` va `value` bilan birga (qarang: [identifikator slayslari](#identifier-slices));
- mahsulot olingan donatsiya raqami (`biologicalSourceEvent`), `system` va `value` bilan;
- umumiy toifa `productCategory` (a'zo / to'qima / suyuqlik / hujayralar / biologik agent) va `productCode`, qon mahsuloti turi;
- qayta ishlangan yoki pullangan komponent uchun u tayyorlangan mahsulot yoki mahsulotlar (`parent`);
- holat `productStatus` (available / unavailable);
- yaroqlilik muddati `expirationDate`;
- tayyorlash: donor yoki manba tashkilot (`collection.source`), uni tayyorlagan tibbiyot xodimi (`collection.collector`) va qachon tayyorlangani (`collection.collected[x]`);
- mahsulotni qayta ishlagan qon xizmati (`processingFacility`);
- bitta mahsulot bo'lingan bo'lsa, porsiya yoki doza raqami, masalan 2/3 (`division`);
- saqlash harorati oralig'i (`storageTempRequirements`);
- mahsulot olingan yoki berilgan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) (`request`);
- mahsulot xossalari: ABO guruhi, RhD rezus-mansubligi, hajmi va gematokriti (`property`).

### Mavjud BiologicallyDerivedProduct ni qidirish {#finding}

Qon birligini qon xizmati bir marta yaratadi, keyin unga barcha yetkazib berishlar, ombor yozuvlari va transfuziyalar havola qiladi, shuning uchun uni yaratishdan oldin qidiring. `|` tizimni qiymatdan ajratadi va URL da `%7C` ko'rinishida kodlanadi:

```
# by unit number - the reliable match
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# every product from one donation, the whole blood unit and its components
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231

# by product type and availability
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|126251004&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=cells

# products issued for a transfusion order
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
```

Qayta ishlangan komponent manba mahsulotning donatsiya raqamini saqlaydi, shuning uchun donatsiya raqami bo'yicha qidiruv to'liq qon birligini va undan tayyorlangan har bir komponentni qaytaradi. Qolgan qidiruv parametrlari sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik foydali nusxadan to'liq qon donatsiyasi va undan tayyorlangan komponentgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [to'liq qon donatsiyasi](BiologicallyDerivedProduct-example-blood-donation-product.html) va [eritrotsit komponenti](BiologicallyDerivedProduct-example-blood-component-product.html).

#### Yuborishingiz kerak bo'lgan eng kichik BiologicallyDerivedProduct

Profil hech narsani majburiy qilmaydi, lekin har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi, bu serverga qaysi qoidalar bo'yicha validatsiya qilishni bildiradi. Mahsulot faqat u nima ekanini va mavjudligini aytganda foydali. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" }
}
```

`productCategory` va `productStatus` HL7 kodlaridan foydalanadi. Ularning inglizcha ko'rinadigan nomlari bazaviy kod tizimlaridan, o'zbekcha va ruschalari esa DHP qo'shimchalaridan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi. `productCode` [qon mahsuloti turi](ValueSet-blood-product-type-snomed-vs.html) qiymatlar to'plamidan SNOMED CT kodini qabul qiladi; bog'lanish `extensible`, shuning uchun to'qimalar va hujayralar uchun boshqa kodlar ishlatilishi mumkin.

#### To'liq qon donatsiyasi

Qon quyish stansiyasi bir birlik to'liq qon tayyorlaydi. Birlik o'z birlik raqamini, donatsiya esa donatsiya raqamini oladi, xossalar esa qon guruhi, hajm va gematokritni qayd etadi. To'g'ridan-to'g'ri donatsiyada `parent` bo'lmaydi:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-DON-2026-00123" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-20T08:00:00+05:00",
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2026-09-15T08:00:00+05:00"
  },
  "storageTempRequirements": {
    "low": { "value": 2, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" },
    "high": { "value": 6, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" }
  },
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 450, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 40, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

`property` o'z `type` i bo'yicha slayslarga bo'lingan:

| Xossa | `type` | Qiymat |
|---|---|---|
| ABO guruhi | SNOMED CT `63915006` (ABO qon guruhlari tizimi) | [qon guruhi](ValueSet-blood-group-vs.html) qiymatlar to'plamidan `valueCodeableConcept` |
| RhD rezus-mansubligi | SNOMED CT `115678000` (Rh qon guruhlari tizimi) | [RhD rezus-mansubligi](ValueSet-blood-rh-vs.html) qiymatlar to'plamidan `valueCodeableConcept` |
| Hajm | SNOMED CT `118565006` (hajm) | UCUM dagi `valueQuantity`, masalan `mL` |
| Gematokrit | LOINC `4544-3` (gematokrit) | `%` dagi `valueQuantity` |

Qon guruhi va RhD qiymat bog'lanishlari `required`. `collection.source` donorni ([Patient](StructureDefinition-uz-core-patient.html)) yoki material olingan [Organization](StructureDefinition-uz-core-organization.html) ni ko'rsatadi; donor platformada qayd etilmagan bo'lsa, uni ko'rsatmang. Donor identifikatorini hech qachon `biologicalSourceEvent` ga joylashtirmang.

#### Birlik va donatsiya raqamlari {#identifier-slices}

Ikkala raqam ham o'z `system` URI si bo'yicha solishtiriladi, shuning uchun tizim aniq mos kelishi shart:

| Raqam | Element | `system` | Kim beradi |
|---|---|---|---|
| [Qon birligi raqami](NamingSystem-uzb-blood-unit-number.html) | `identifier` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit` | Mahsulotni tayyorlagan yoki qayta ishlagan qon xizmati |
| [Qon donatsiyasi raqami](NamingSystem-uzb-blood-donation-number.html) | `biologicalSourceEvent` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` | Mahsulotni tayyorlagan qon xizmati |

Har bir mahsulot, jumladan har bir komponent, o'z birlik raqamini oladi va uni butun hayoti davomida saqlaydi. Donatsiyadan tayyorlangan komponent o'z manbasining donatsiya raqamini saqlaydi, bu raqam bitta donatsiyaning barcha mahsulotlarini bog'laydi.

#### Donatsiyadan tayyorlangan komponent

Qon quyish stansiyasi bemorning transfuziya buyurtmasi bo'yicha to'liq qon birligidan leykotsitlar miqdori kamaytirilgan eritrotsitlar tayyorlaydi. Komponentning o'z birlik raqami bor, u donatsiya raqamini saqlaydi va `parent` da to'liq qon birligiga havola qiladi:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "126251004", "display": "Leukocyte reduced red blood cells, human" }
    ]
  },
  "parent": [ { "reference": "BiologicallyDerivedProduct/example-blood-donation-product" } ],
  "request": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-15T23:59:00+05:00",
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 60, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

To'g'ridan-to'g'ri donatsiyalarda, jumladan aferez plazmasi va trombotsitlarida, `parent` bo'lmaydi. Pullangan mahsulot puldagi har bir birlikni sanab o'tadi, kriopretsipitat esa o'zining manba plazmasiga havola qiladi. Bitta komponent porsiyalarga bo'linganda `division` porsiya raqamini beradi, masalan `2/3`. `productStatus` faqat mahsulot mavjudligini bildiradi; uning batafsil ombor holati, masalan karantin, zaxira yoki berilganlik, uni saqlaydigan [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) da qayd etiladi.

API chaqiruvlari misollari va yaratishdan oldin qidirish tartibi ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
