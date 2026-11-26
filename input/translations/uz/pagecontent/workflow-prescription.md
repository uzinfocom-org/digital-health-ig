Ushbu jarayon dori vositasi elektron shaklda qanday tayinlanishi, dorixonada qanday berilishi va xarajatni qoplab berish uchun SHIF (State Health Insurance Fund - Davlat tibbiy sug'urta jamg'armasi)ga qanday yuborilishini ko'rsatadi. Jarayon ikkita resurs orqali ifodalanadi: [`MedicationRequest`](StructureDefinition-uz-core-medicationrequest.html) - retsept, ya'ni *nima* tayinlanganligi; [`MedicationDispense`](StructureDefinition-uz-core-medication-dispense.html) - dori vositasini berish fakti, ya'ni amalda *nima* berilganligi va *qancha miqdorda* berilganligi. Ikkala resurs ham dori vositasini odatda [`Medication`](StructureDefinition-uz-core-medication.html) orqali ko'rsatadi.

Ishtirokchilar: retsept yozuvchi klinitsist; farmatsevt; DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi); SHIF.

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Retsept yozish

Klinitsist elektron retseptni DMED yoki mahalliy tibbiy axborot tizimida `MedicationRequest` (`intent = order`) sifatida rasmiylashtiradi: retsept raqami `identifier` elementida, dori vositasi `medication` elementida, bemor `subject` elementida, retsept yozuvchi klinitsist `requester` elementida, dozalash bo'yicha ko'rsatmalar `dosageInstruction` elementida, klinik ko'rsatma `reason` elementida (davolanayotgan [Condition](StructureDefinition-uz-core-condition.html)), dorixona qancha miqdorda va qaysi muddatgacha berishi mumkinligi esa `dispenseRequest` elementida ko'rsatiladi. Retsept uni identifikatsiya qiluvchi QR-kod bilan chop etiladi.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "identifier": [{ "use": "official", "value": "[prescription number]" }],
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": { "value": 10, "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece" } } }
```

#### Dori vositasi qanday ko'rsatiladi

DMED dori vositasini aniq mahsulot tanlanishidan oldin xalqaro patentlanmagan nomi (INN) bo'yicha tayinlaydi. Bunda retseptning `medication` elementi faqat INN kodiga ega [Medication](StructureDefinition-uz-core-medication.html) ga havola qiladi, masalan [INN kod tizimidagi](CodeSystem-inn-medication-name-cs.html) `000439` amoksitsillin, aniq mahsulotni esa dorixona dori berishda ko'rsatadi. Medication umumiy katalog yozuvlaridir, shuning uchun yangisini yaratishdan oldin [mavjudini](StructureDefinition-uz-core-medication.html#finding) kod yoki identifikator bo'yicha qidiring. Kodni bevosita `medication.concept` ga ham yozish mumkin. Xuddi shu INN kodlari [allergen kodlariga](ValueSet-allergen-codes-vs.html) kiradi, shuning uchun [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) da qayd etilgan dori allergiyasi retseptdagi moddaning o'zini ko'rsatishi mumkin.

| Nima | Element | Kodlar yoki identifikatorlar |
|---|---|---|
| Ta'sir etuvchi modda | `Medication.code` | [Dori vositalari tasnifi](ValueSet-medication-classification-vs.html) qiymatlar to'plamiga majburiy (required) bog'lanish: INN kodi (`https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs`, masalan `005325` paratsetamol) yoki ATC kodi (`http://www.whocc.no/atc`, masalan `N02BE01` Paratsetamol) |
| Ro'yxatdan o'tgan mahsulot | `system` bo'yicha slayslarga bo'lingan `Medication.identifier` | Farmatsevtika qo'mitasi reyestridan: [ro'yxatga olish guvohnomasi raqami](NamingSystem-registration-certificate-id.html) (`https://uzpharminfo.uz/registrationNumber`) va [guruh qadog'i identifikatori](NamingSystem-uz-pharm-box-id.html) (`https://uzpharminfo.uz/boxGroupId`) - savdo nomi, dori shakli, dozasi va qadog'i uchun reyestr yozuvi; shuningdek [GTIN](NamingSystem-global-trade-item-id.html) (`https://mobile-api.aslbelgisi.uz/gtin`) va [IKPU kodi](NamingSystem-product-service-id.html) (`https://uzpharminfo.uz/icps`) |
| Jismoniy qadoq | `Medication.identifier` | [Asl Belgisi markirovka identifikatori](NamingSystem-uz-marking-id.html) (`https://mobile-api.aslbelgisi.uz/marking`) |
| Nima berilgani yoki yuborilgani | `MedicationDispense.medication`, `MedicationAdministration.medication` | Medication ga havola yoki `concept` dagi INN yoki ATC kodi (xuddi shu qiymatlar to'plamiga majburiy bog'lanish) |
| Tasdiqlangan narxlar | `MedicationKnowledge.associatedMedication` | Medication ga havola qiladi; 3-qadamga qarang |

### 2. Dori vositasini berish

Dorixonada farmatsevt `MedicationRequest` resursini olish uchun QR-kodni skanerlaydi, so'ng amalda berilgan dori vositasi haqidagi ma'lumotlarni `MedicationDispense` sifatida qayd etadi. INN bo'yicha yozilgan retsept uchun `medication` amalda berilgan ro'yxatdan o'tgan mahsulotni ko'rsatadi: uning Medication resursini ro'yxatga olish guvohnomasi raqami yoki GTIN bo'yicha toping. `MedicationDispense.authorizingPrescription` elementida retseptga reference ko'rsatiladi; aynan shu bog'lanish butun zanjirni kuzatish imkonini beradi:

```
GET [base]/Medication?identifier=https://uzpharminfo.uz/registrationNumber|[number]

POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "performer": [{ "actor": { "reference": "Organization/[id]" } }],
  "quantity": { "value": 10, "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece" },
  "whenHandedOver": "2026-03-02T11:00:00+05:00" }
```

`quantity.code` [umumiy hajm birliklariga](ValueSet-medication-total-volume-units-vs.html) majburiy bog'langan: massa va hajm uchun UCUM, donalab hisoblanadigan birliklar uchun `piece`. Dorixona retsept bo'yicha dori vositasini to'liq bir martada yoki qismlarga bo'lib berishi mumkin. Qisman berish amalda berilgan miqdor uchun `status = completed` bo'lgan `MedicationDispense` resursi bilan qayd etiladi; `MedicationRequest` esa qolgan miqdor uchun `active` holatda qoladi. Bemorga doza yuborilganda, masalan statsionarda, `request` elementi retseptga havola qiladigan [`MedicationAdministration`](StructureDefinition-uz-core-medicationadministration.html) ni qayd eting.

| Resurs | Statuslar o'zgarishi |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (to'liq berilgan) / `ended` (muddati tugagan yoki almashtirilgan) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; dori vositasi berilmagan bo'lsa `declined`, sababi `notPerformedReason` da |

Qaytarib olingan retsept o'chirilmaydi, balki yangilanadi: dori vositasining bir qismi berib bo'lingan bo'lsa `stopped`, hech narsa berilmagan bo'lsa `cancelled`, sababi esa `statusReason` da - [holat sabablari](ValueSet-medicationrequest-status-reason-vs.html) qiymatlar to'plamiga kengaytiriladigan (extensible) bog'lanish. DMED elektron retseptini bekor qilish uchun qiymatlar to'plamida SNOMED CT `438833006` Dori vositasini qo'llash qarshi ko'rsatilgan kodi bor.

### 3. SHIFga ma'lumot yuborish

Xarajati qoplab beriladigan dori vositasi uchun platforma retsept va dori vositasini berish haqidagi ma'lumotlarni qoplab berish hisobini yuritish uchun SHIFga yuboradi. Ma'lumot almashinuvi asinxron tarzda amalga oshiriladi: DHP resurslarni e'lon qiladi, SHIF esa ularni qabul qiladi; DHP qoplab berish talabini o'zi ko'rib chiqib, qaror qabul qilmaydi. `MedicationDispense.authorizingPrescription` orqali ko'rsatilgan reference SHIFga *nima tayinlangani* va *amalda nima berilganini* solishtirish imkonini beradi.

Xarajati qoplanadigan retsept `category` da [MedicationRequest buyurtma turlari](CodeSystem-medication-request-order-type-cs.html) kod tizimidan `rembr-0001-00001` Rembursatsiyali buyurtma kodini oladi va `insurance` da uni tasdiqlagan SHIF qaroriga - [ClaimResponse](StructureDefinition-uz-core-claim-response.html) ga havola qiladi. Xarajati qoplanadigan dori vositasi uchun [Claim](StructureDefinition-uz-core-claim.html) ning `type` qiymati `pharmacy` Pharmacy bo'ladi va u `prescription` da retseptga havola qiladi.

> DHP SHIF uchun zarur bo'lgan tibbiy ma'lumotlarni uzatadi; qoplab berish to'g'risidagi qaror va to'lov SHIFning o'z tizimida amalga oshiriladi. Faqat validatsiyadan o'tgan yozuvlar uzatiladi.

Mahsulotning tasdiqlangan narxlari - `price-type-0001-00001` Cheklangan narx, `price-type-0001-00002` Ulgurji narx, `price-type-0001-00003` Chakana narx va `price-type-0001-00004` DTSJ narx - mahsulotning Medication resursiga `associatedMedication` orqali havola qiladigan [`MedicationKnowledge`](StructureDefinition-uz-core-medicationknowledge.html) yozuvi sifatida modellashtiriladi; har bir narx o'z `type` va amal qilish davriga ega `cost` dir. DHP serverlari hozircha MedicationKnowledge endpoint'ini taqdim etmaydi, shuning uchun hozir bu narxlar katalogi modeli, bajarish mumkin bo'lgan so'rov emas.

### 4. Ma'lumotlarni olish

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
```

`authorizingPrescription` orqali ko'rsatilgan reference tufayli `MedicationDispense` ma'lumotlari doimo dori vositasini berish uchun asos bo'lgan retsept bilan birga olinadi. Shu sababli SHIF va bemor har bir tayinlash bo'yicha dori vositasini berishning to'liq tarixini ko'rishi mumkin. MedicationAdministration ham xuddi shunday `request` orqali olinadi.

### Bog'liq materiallar

- Profillar: [Medication](StructureDefinition-uz-core-medication.html) &middot; [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) &middot; [MedicationKnowledge](StructureDefinition-uz-core-medicationknowledge.html) &middot; [Claim](StructureDefinition-uz-core-claim.html) &middot; [ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- Komponent: [Retseptlar](components.html#prescription)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
