Ushbu jarayon sog'liqni saqlash tashkiloti ta'minot buyumlarini qanday so'rashini, yetkazib beruvchi yetkazib berishni qanday qayd etishini hamda kelib tushgan zaxiralar qanday saqlanishi va hisobga olinishini ko'rsatadi. Jarayon to'rtta resurs orqali ifodalanadi: [SupplyRequest](StructureDefinition-uz-core-supply-request.html) *nima* kerakligini, qancha va kim uchun kerakligini ko'rsatadi; [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) *nima topshirilganini* qayd etadi; [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) - saqlanayotgan buyum va u ombor hisobining qaysi bosqichida turgani; [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) - saqlash joyidagi zaxiralar hisobi.

Ishtirokchilar: so'rov yuboruvchi shifoxona (bo'lim, dorixona yoki ombor); yetkazib beruvchi (qon xizmati, shifoxonaning o'z markaziy ombori yoki distribyutor); platforma (DHP - Digital Health Platform, Raqamli sog'liqni saqlash platformasi); ma'lumotlardan analitika uchun foydalanadigan sog'liqni saqlashni boshqarish organlari.

Qon komponentlari ham shu sxema bo'yicha o'tadi. Qon xizmati tomoni, donatsiyadan transfuziyagacha, DHP Integrations IG dagi [Qon xizmati](https://dhp.uz/fhir/integrations/uz/blood-service.html) jarayonida tavsiflangan: [Zaxiralarni hisobga olish](https://dhp.uz/fhir/integrations/uz/blood-service.html#stock) va [Komponentlarni so'rash va yetkazib berish](https://dhp.uz/fhir/integrations/uz/blood-service.html#supplying) bo'limlariga qarang.

<div>{% include supplies-sequence.svg %}</div><br clear="all"/>

### 1. Ta'minot buyumlarini so'rash

Shifoxona `SupplyRequest` resursini yaratadi: buyum `item` elementida, miqdor `quantity` elementida, uni yetkazib berishi kerak bo'lgan tashkilot `supplier` elementida, yetkazish joyi esa `deliverTo` elementida ko'rsatiladi. Shifoxonaning o'z so'rov raqami `identifier` elementida `https://dhp.uz/fhir/core/sid/doc/uz/supply-request` tizimi bilan ko'rsatiladi. `category` so'rov turini [so'rov turi](CodeSystem-request-type-cs.html) kod tizimi bo'yicha ko'rsatadi:

| `category` kodi | Ma'nosi | Odatiy tarkibi |
|---|---|---|
| `req-type-0001-0001` | Zaxira | `deliverFor` yo'q, `requester` - shifoxonaning o'zi, `deliverTo` - ombor ([Location](StructureDefinition-uz-core-location.html)) |
| `req-type-0001-0002` | Shaxsiy | `deliverFor` - bemor, `basedOn` - shifokor tayinlovi ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html)) |
| `req-type-0001-0003` | Muassasalar o'rtasida | ta'minot buyumlarini bir muassasadan boshqasiga o'tkazish |

Eritrotsitlar uchun shaxsiy so'rov:

```
POST [base]/SupplyRequest
{ "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" }],
  "basedOn": [{ "reference": "ServiceRequest/[id]" }],
  "status": "active",
  "category": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }] },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" }] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "requester": { "reference": "Practitioner/[id]" },
  "supplier": [{ "reference": "Organization/[id]" }],
  "deliverTo": { "reference": "Organization/[id]" } }
```

Qon komponenti uchun ikkita `parameter` elementi birliklar mos kelishi kerak bo'lgan qon guruhini ko'rsatadi: `63915006` kodi (ABO blood group system - AB0 qon guruhlari tizimi), masalan, `112144000` (Blood group A - A qon guruhi) qiymati bilan, va `115678000` kodi (Rh blood group system - rezus tizimi), masalan, `165747007` (RhD positive - RhD musbat) qiymati bilan. `priority` qiymati `routine`, `urgent`, `asap` yoki `stat`. [Profil sahifasida](StructureDefinition-uz-core-supply-request.html) to'liq shaxsiy so'rov va zaxirani to'ldirish so'rovi bosqichma-bosqich tuzilgan; to'liq misol - [eritrotsitlar uchun so'rov](SupplyRequest-example-supply-request.html).

### 2. Birga yuborilgan so'rovlarni guruhlash

SupplyRequest bitta buyumni o'z ichiga oladi. Shifoxonaga bir vaqtda bir nechta buyum kerak bo'lsa, masalan bitta operatsiya uchun eritrotsitlar va `346447007` (Fresh frozen plasma - yangi muzlatilgan plazma), u har bir buyum uchun alohida so'rov yuboradi va ularning barchasiga [guruh identifikatori](StructureDefinition-supplyrequest-group-identifier.html) kengaytmasida, har bir so'rovning o'z raqami yonida, bitta guruh raqamini beradi:

```
"extension": [{
  "url": "https://dhp.uz/fhir/core/StructureDefinition/supplyrequest-group-identifier",
  "valueIdentifier": { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-group", "value": "GR-0001",
                       "assigner": { "reference": "Organization/[id]" } } }]
```

- Har bir yangi to'plam uchun yangi guruh raqamidan foydalaning va raqamni hech qachon qayta ishlatmang. So'rovlar yuborilgach, guruh yopiladi: keyinroq kerak bo'lgan qo'shimcha buyum yangi guruh raqami bilan yangi so'rovda yuboriladi.
- Har bir so'rov o'z statusini saqlaydi. Plazmani bekor qilish eritrotsitlarni bekor qilmaydi.
- Bitta so'rovni o'qish, yangilash yoki unga havola qilish uchun guruh raqamidan emas, so'rov raqamidan foydalaning.

Guruhlangan [eritrotsitlar](SupplyRequest-example-supply-request-group-red-cells.html) va [yangi muzlatilgan plazma](SupplyRequest-example-supply-request-group-plasma.html) misollariga qarang.

> Qo'llanma butun guruhni topish uchun [`group-identifier`](SearchParameter-uz-core-supplyrequest-group-identifier.html) qidiruv parametrini belgilaydi, biroq na sinov, na ishlab chiqarish serveri uni hali o'z CapabilityStatement ida ko'rsatmaydi. Shu vaqtgacha so'rovlarni so'rov raqami, `patient` yoki `supplier` bo'yicha qidiring.

### 3. So'rovlarni olish

Yetkazib beruvchi o'ziga yuborilgan ochiq so'rovlarni muntazam so'rab turadi:

```
GET [base]/SupplyRequest?supplier=Organization/[id]&status=active
GET [base]/SupplyRequest?supplier=Organization/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs|req-type-0001-0002
```

Server `patient`, `requester`, `date` (so'rov yaratilgan sana) va `identifier` parametrlarini ham qo'llab-quvvatlaydi. `|` belgisi `%7C` sifatida kodlanadi.

### 4. Yetkazib berish

Yetkazib beruvchi yetkazib berishni `SupplyDelivery` sifatida qayd etadi: unda o'zining yetkazib berish raqami (`https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery` tizimi) va `basedOn` elementida bajarilayotgan so'rovga reference ko'rsatiladi. Bitta yetkazib berish bir nechta so'rovni, masalan guruhlangan to'plamni bajarsa, `basedOn` da ularning barchasi sanab o'tiladi. `supplier` va `receiver` buyumlarni kim yuborgani va kim qabul qilganini, [deliver-from](StructureDefinition-supplydelivery-deliver-from.html) kengaytmasi va `destination` esa qaysi saqlash joyidan ([Location](StructureDefinition-uz-core-location.html)) qaysi joyga yetkazilganini ko'rsatadi.

```
POST [base]/SupplyDelivery
{ "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
                  "valueReference": { "reference": "Location/[id]" } }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }],
  "basedOn": [{ "reference": "SupplyRequest/[id]" }],
  "status": "in-progress",
  "patient": { "reference": "Patient/[id]" },
  "type": { "coding": [{ "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct", "display": "Biologically Derived Product" }] },
  "suppliedItem": [{ "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
                     "itemReference": { "reference": "BiologicallyDerivedProduct/[id]" } }],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  "receiver": [{ "reference": "Organization/[id]" }] }
```

`type` qiymati `medication` (Dori-darmon), `device` (Qurilma) yoki `biologicallyderivedproduct` (Biologik hosila mahsulot). `suppliedItem.itemReference` `InventoryItem` ga ham reference ko'rsatishi mumkin. Buyumlar topshirilgach, yetkazib beruvchi yetkazib berishni `completed` holatiga, shifoxona esa so'rovni `completed` holatiga (yoki endi kerak bo'lmasa, `cancelled` holatiga) o'tkazadi. Yangilash oxirgi o'qishdagi `ETag` ni `If-Match` sarlavhasida yuborgan holda to'liq `PUT` bilan bajariladi; eskirgan versiya `412 Precondition Failed` bilan rad etiladi. [Bir vaqtdalik](api-access.html#concurrency) bo'limiga qarang.

Bitta shifoxonaning ikki ombori o'rtasidagi ko'chirish ham SupplyDelivery sifatida rasmiylashtiriladi: `supplier` va `receiver` bitta tashkilot bo'ladi, saqlash joylari esa faqat deliver-from kengaytmasi va `destination` orqali farqlanadi. Ko'chirishni hech kim so'ramagan bo'lsa, `basedOn` ko'rsatilmaydi. [Omborlar o'rtasida ko'chirish](SupplyDelivery-example-warehouse-transfer-supply-delivery.html) misoliga qarang.

| Resurs | Statuslar o'zgarishi |
|----------|-------------|
| `SupplyRequest` | `draft` &rarr; `active` &rarr; `completed`; to'xtatib turilganda `suspended`; endi kerak bo'lmasa `cancelled` |
| `SupplyDelivery` | `in-progress` &rarr; `completed`; yetkazib berish amalga oshmagan bo'lsa `abandoned` |

Xato bilan yaratilgan yozuvlar uchun ikkala resurs ham `entered-in-error` dan foydalanadi.

### 5. Zaxiralarni hisobga olish

Saqlanayotgan har bir birlik yoki partiya - bu `InventoryItem`: mahsulot `productReference` elementida ([Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) yoki NutritionProduct), zaxirani boshqaruvchi tashkilotning inventar raqami `identifier` elementida (`https://dhp.uz/fhir/core/sid/doc/uz/inventory-item` tizimi), jismoniy birlik esa `instance` elementida ko'rsatiladi: partiya raqami, yaroqlilik muddati, u kim uchun saqlanayotgan bemor yoki tashkilot va saqlash joyi (`Location`).

```
POST [base]/InventoryItem
{ "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }],
  "status": "active",
  "inventoryStatus": [{ "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs", "code": "available" }] }],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": { "lotNumber": "LOT20241201", "expiry": "2027-12-01",
                "subject": { "reference": "Organization/[id]" },
                "location": { "reference": "Location/[id]" } },
  "productReference": { "reference": "Medication/[id]" } }
```

Ombor pozitsiyasining ikkita statusi bor. `status` yozuv foydalanilayotganini ko'rsatadi (`active`, `inactive`, `entered-in-error`, `unknown`). `inventoryStatus` buyum ombor hisobining qaysi bosqichida turganini milliy [ombor hisobi statuslari](ValueSet-inventoryitem-inventory-status-vs.html) ro'yxati bo'yicha ko'rsatadi. Ko'p uchraydigan qiymatlar:

| `inventoryStatus` kodi | Ma'nosi |
|---|---|
| `accepted` | Qabul qilingan |
| `quarantine` / `awaiting-tests` | Karantinda / Tekshiruvlarni kutmoqda |
| `available` | Mavjud |
| `reserved` | Zaxiralangan, masalan `instance.subject` da ko'rsatilgan bemor uchun ajratib qo'yilgan qon birligi |
| `issued` | Berildi |
| `expired` &rarr; `discarded` | Muddati o'tgan &rarr; Utilizatsiya qilindi |

Muddati o'tgan birlik `status = active` holatida qoladi, `inventoryStatus` esa `expired` ga o'tkaziladi. Zaxira boshqa saqlash joyiga ko'chirilganda SupplyDelivery ko'chirishni qayd etadi, `instance.location` esa yangilanadi. Yetkazib berish va zaxira o'zgarishini birga saqlash uchun ularni bitta transaction turidagi Bundle da yuboring. [Umumiy tavsiyalar &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset) bo'limiga qarang.

> Qo'llanma ikki tashkilot o'rtasidagi yetkazib berishdan so'ng qabul qiluvchi o'zining InventoryItem resursini yaratishi yoki yetkazib beruvchining yozuvi yangilanishini hali belgilamagan. Ulardan biriga tayanishdan oldin buni DHP jamoasi bilan kelishib oling.

### 6. Zaxiralarni sanash (rejalashtirilgan)

Saqlash joyidagi zaxiralar hisobi - bu `InventoryReport`. `countType = snapshot` mavjud miqdorni ko'rsatadi; `countType = difference` qancha kelgani yoki chiqqanini ko'rsatadi: `operationType` da, masalan, `invop-0001-00001` (Kirim), `operationTypeReason` da esa sabab, masalan, `invrs-0001-00004` (Yangi kirim) yoki `invrs-0001-00010` (Hisobdan chiqarish: muddati o'tgan). Har bir `inventoryListing` sanalgan saqlash joyini `location` elementida ko'rsatadi.

> InventoryReport profili nashr etilgan, biroq na sinov, na ishlab chiqarish serveri InventoryReport ni hali qabul qilmaydi: u ularning CapabilityStatement ida yo'q. Shu vaqtgacha joriy zaxiralar InventoryItem dan o'qiladi.

### 7. Ma'lumotlarni olish

```
GET [base]/SupplyRequest?patient=Patient/[id]
GET [base]/SupplyRequest?requester=Organization/[id]&date=ge2026-11-01
GET [base]/SupplyDelivery?receiver=Organization/[id]&status=in-progress
GET [base]/SupplyDelivery?patient=Patient/[id]
GET [base]/InventoryItem?subject=Patient/[id]
GET [base]/InventoryItem?identifier=https://dhp.uz/fhir/core/sid/doc/uz/inventory-item|TDH-WH-2026-0315
```

Serverlarda yetkazib berishning `basedOn` elementi, pozitsiyaning `inventoryStatus` elementi yoki saqlash joyi bo'yicha qidiruv parametrlari yo'q. `receiver`, `patient` yoki `subject` bo'yicha qidiring va bu elementlar bo'yicha o'z klientingizda filtrlang. Sog'liqni saqlashni boshqarish organlari resurslar mavjudligini hududlar va tashkilotlar kesimida ko'rish uchun xuddi shu resurslarni o'qiydi.

### Uskunalar

Tibbiy uskuna - bu [Device](StructureDefinition-uz-core-device.html): `owner` - unga egalik qiluvchi tashkilot, `location` - u turgan joy, `availabilityStatus` esa undan hozir foydalanish mumkinligini ko'rsatadi: `available` (Mavjud), `damaged` (Shikastlangan), `lost` (Yo'qolgan) yoki `destroyed` (Yo'q qilingan). Nosoz uskuna - bu `availabilityStatus = damaged` bo'lgan Device. Device profili nashr etilgan, biroq Device hali serverlarning CapabilityStatement ida yo'q.

Boshqa kritik zaxiralarni (reanimatsiya koykalari, mutaxassisliklar bo'yicha mavjud shifokorlar) konsolidatsiya qilish hamda davlat tomonidan bepul yoki imtiyozli shartlarda beriladigan dori vositalari va tibbiy buyumlar ro'yxati [Ta'minot](components.html#supplies) komponentiga kiradi, biroq ular uchun bu qo'llanmada hali jarayon yo'q.

### Bog'liq materiallar

- Profillar: [SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) &middot; [Device](StructureDefinition-uz-core-device.html) &middot; [Location](StructureDefinition-uz-core-location.html)
- Komponent: [Ta'minot](components.html#supplies)
- DHP Integrations IG: [Qon xizmati](https://dhp.uz/fhir/integrations/uz/blood-service.html)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
