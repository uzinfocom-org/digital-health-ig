> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core BiologicallyDerivedProductDispense [biologik mahsulot](StructureDefinition-uz-core-biologically-derived-product.html), masalan qon komponenti, [bemor](StructureDefinition-uz-core-patient.html) uchun uni qo'llaydigan klinik jamoaga berilganini qayd etadi. U qaysi mahsulot kim uchun berilganini, qaysi buyurtma bajarilayotganini, kim ishtirok etganini, mahsulot qayerdan berilgani va qayerga yuborilganini hamda qachon topshirilganini ko'rsatadi. Berish odatda [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ni bajaradi. Transfuziyaning o'zi [Procedure](StructureDefinition-uz-core-procedure.html) sifatida qayd etiladi va u berishga qo'shimcha ma'lumot sifatida havola qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core BiologicallyDerivedProductDispense quyidagilarga ega bo'lishi shart

`status`, beriladigan mahsulot (`product`) va u mo'ljallangan bemor (`patient`). Uchala element ham bazaviy resursda majburiy. Har bir `performer` o'z `actor` ini ko'rsatishi shart, berish raqami esa doim o'z `system` i bilan yuboriladi.

#### Har bir UZ Core BiologicallyDerivedProductDispense quyidagilarni qo'llab-quvvatlashi shart

- beruvchi tizim bergan berish raqami, doim `system` bilan birga (qarang: [identifikator slayslari](#identifier-slices));
- berish bajarayotgan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) (`basedOn`);
- berish `status` i (preparation / in-progress / allocated / issued / unfulfilled / returned / entered-in-error / unknown);
- beriladigan mahsulot (`product`) va u mo'ljallangan bemor (`patient`);
- ishtirok etgan tibbiyot xodimlari (`performer.actor`);
- mahsulot amalda topshirilgan vaqt (`whenHandedOver`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik valid nusxadan qaytarilgan birlikkacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [minimal](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.html), [berilgan](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html) va [qaytarilgan](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html) berishlar.

#### Yuborish mumkin bo'lgan eng kichik BiologicallyDerivedProductDispense

Har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi - server uni qaysi qoidalar bo'yicha tekshirishni shundan biladi. Bundan tashqari uchta majburiy element yetarli:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" }
}
```

`status` - HL7 berish holatlari ro'yxatidagi kod. Uning inglizcha nomi bazaviy kod tizimidan, o'zbekcha va ruscha nomlari esa DHP supplementidan olinadi. `product` - [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) ga `Reference`, `patient` esa [UZ Core Patient](StructureDefinition-uz-core-patient.html) ga `Reference`.

#### Bemor uchun berilgan qon komponenti

Qon quyish bo'limi buyurtma asosida bemor uchun birlik beradi. Bo'limning berish raqami `identifier` ga yoziladi, `basedOn` [buyurtmaga](ServiceRequest-example-bdp-dispense-request.html) ishora qiladi, `performer` birlikni berishga ruxsat bergan tibbiyot xodimini, `location` u berilgan joyni, `destination` esa u yuborilgan joyni ko'rsatadi:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense", "value": "ISS-2026-0002" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "performer": [
    {
      "function": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function",
            "code": "release"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "location": { "reference": "Location/example-location-1" },
  "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "preparedDate": "2026-09-20T10:15:00+05:00",
  "whenHandedOver": "2026-09-20T10:30:00+05:00",
  "destination": { "reference": "Location/example-location-2" }
}
```

`basedOn` va `performer` takrorlanadi; `location` va `destination` takrorlanmaydi va ikkalasi ham [UZ Core Location](StructureDefinition-uz-core-location.html) ga `Reference`. `performer.actor` - [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html) ga `Reference`. `performer.function` - HL7 ijrochi funksiyalari ro'yxatidagi kodga ega `CodeableConcept`. `quantity` - amalda berilgan miqdor; qon komponenti odatda butun birlik sifatida beriladi. `preparedDate` - mahsulot ushbu berish uchun tanlangan vaqt, manba mahsulot tayyorlangan vaqt emas; `whenHandedOver` - u amalda jo'natilgan yoki topshirilgan vaqt.

#### Berish raqami {#identifier-slices}

`identifier` `system` URI bo'yicha slayslarga bo'lingan, shuning uchun tizim aniq mos kelishi kerak:

| Identifikator | `system` | Kim beradi |
|---|---|---|
| [Berish raqami](NamingSystem-uzb-bdp-dispense-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense` | Mahsulotni beruvchi tizim, masalan qon quyish bo'limi |

Donatsiya raqami va mahsulot birligi raqami berishni emas, mahsulotni identifikatsiya qiladi va [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) da qoladi.

#### Qaytarilgan birlik

Yuqoridagi berishdan ikki kun oldin xuddi shu birlik xuddi shu buyurtma bo'yicha berilgan va ishlatilmasdan qaytarilgan, shuning uchun o'sha berishning `status` i `returned` bo'lgan. Bu misolda ixtiyoriy kodlar ham to'ldirilgan: donor va retsipiyent o'rtasidagi munosabat, o'tkazilgan moslashtirish turi va ijrochining funksiyasi:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense", "value": "ISS-2026-0001" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "returned",
  "originRelationshipType": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-origin-relationship",
        "code": "allogeneic"
      }
    ]
  },
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "matchStatus": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-match-status",
        "code": "crossmatched"
      }
    ]
  },
  "performer": [
    {
      "function": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function",
            "code": "receipt"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "whenHandedOver": "2026-09-18T14:00:00+05:00"
}
```

`originRelationshipType`, `matchStatus` va `performer.function` - har biri tegishli element uchun HL7 kod tizimidagi kodga ega `CodeableConcept`; `display` ni ko'rsatmasangiz ham bo'ladi. `matchStatus` qaysi turdagi moslashtirish o'tkazilganini bildiradi. ABO va Rh bo'yicha moslik natijalarining o'zi Observation da qayd etiladi. `status` transfuziya natijasini emas, mahsulotni berishni tavsiflaydi: to'xtatilgan transfuziya mahsulotni `returned` qilmaydi, uning natijasi esa [Procedure](StructureDefinition-uz-core-procedure.html) da qayd etiladi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
