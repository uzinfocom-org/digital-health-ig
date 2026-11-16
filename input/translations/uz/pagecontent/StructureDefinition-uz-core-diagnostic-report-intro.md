> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core DiagnosticReport - laboratoriya yoki boshqa diagnostika xizmati bemor uchun chiqaradigan hisobot: umumiy qon tahlili, koagulogramma, siydik tahlili. U [laboratoriya buyurtmasidan natijagacha](workflow-lab.html) zanjirini yakunlaydi. Hisobot o'zi javob beradigan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga (`basedOn`) havola qiladi, o'zi umumlashtiradigan [Observation](StructureDefinition-uz-core-observation.html) natijalarini (`result`) va ular o'lchangan [Specimen](StructureDefinition-uz-core-specimen.html) ni sanab o'tadi hamda chiqarilgan hisobotni PDF ko'rinishida saqlashi mumkin. Qiymatlarning o'zi Observation larda saqlanadi; hisobot ularni birlashtiradi va ularni kim va qachon chiqarganini qayd etadi. [Encounter](StructureDefinition-uz-core-encounter.html) va [DeviceUsage](StructureDefinition-uz-core-deviceusage.html) hisobotga o'z sababi sifatida havola qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core DiagnosticReport quyidagilarga ega bo'lishi shart

Profil majburiy elementlar qo'shmaydi. Bazaviy resurs `status` ni va hisobot turini ko'rsatuvchi `code` ni talab qiladi.

#### Har bir UZ Core DiagnosticReport quyidagilarni qo'llab-quvvatlashi shart

- chiqaruvchi tizim bergan hisobot identifikatori;
- hisobot javob beradigan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) (`basedOn`);
- hisobot `status` i (registered / partial / preliminary / final / amended / corrected / cancelled / entered-in-error);
- xizmat toifasi `category` (gematologiya / biokimyo / mikrobiologiya ...);
- hisobot turi (`code`);
- hisobot kim yoki nima haqida (`subject`), odatda [bemor](StructureDefinition-uz-core-patient.html);
- tekshiruv buyurilgan [murojaat](StructureDefinition-uz-core-encounter.html);
- klinik ahamiyatga ega vaqt (`effective[x]`), odatda namuna olingan vaqt;
- ijrochi (`performer`): hisobot uchun mas'ul mutaxassis, lavozim yoki tashkilot;
- hisobot asoslangan [namunalar](StructureDefinition-uz-core-specimen.html);
- [Observation](StructureDefinition-uz-core-observation.html) natijalari (`result`);
- hisobotga bog'liq tasvirlar yoki boshqa ma'lumotlar (`media`), har biri `link` havolasi va ixtiyoriy `comment` izohi bilan;
- chiqarilgan ko'rinishdagi butun hisobot (`presentedForm`), masalan PDF.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik valid hisobotdan buyurtma, namuna va natijalarga ega to'liq laboratoriya hisobotigacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [umumiy qon tahlili hisoboti](DiagnosticReport-uz-core-diagnostic-report-example.html), [o'z kodiga ega tashqi hisobot](DiagnosticReport-example-external-lab-report-coded.html) va [faqat matnli tashqi hisobot](DiagnosticReport-example-external-lab-report-text-only.html).

#### Yuborishingiz kerak bo'lgan eng kichik DiagnosticReport

Hisobotga `status` va `code` kerak. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, hisobot esa faqat u tegishli bo'lgan bemor bilan foydali bo'ladi:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` milliy [laboratoriya hisobotlari turlari](CodeSystem-lab-report-types-cs.html) ma'lumotnomasidan olinadi, bu yerda `lab-rep-01` (umumiy qon tahlili). `status` HL7 kodlaridan foydalanadi, ularning o'zbekcha va ruscha ko'rinishlari DHP qo'shimchalaridan olinadi, shuning uchun `display` ni ko'rsatmaslik mumkin.

#### Buyurtma bo'yicha laboratoriya hisoboti

Odatiy hisobot buyurtmaga javob beradi va uning natijalarini umumlashtiradi. `basedOn` [ServiceRequest](ServiceRequest-example-cbc-order.html) ga, `specimen` namunaga, `result` esa Observation larga havola qiladi. Bu yerda `result` - umumiy qon tahlili panelining bitta Observation i, uning analitlari esa uning komponentlari:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "language": "uz",
  "identifier": [
    { "system": "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id", "value": "DR-2026-0001" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-cbc-order" } ],
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "HM" } ] }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs",
        "code": "lab-rep-01",
        "display": "Umumiy qon tahlili"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "issued": "2026-02-06T11:00:00+05:00",
  "performer": [ { "reference": "Organization/tashkent-hospital" } ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "result": [ { "reference": "Observation/cbc-panel-example" } ]
}
```

Laboratoriya hisobotlari turlari ma'lumotnomasi o'zbek tilida yuritiladi, shuning uchun yuboriladigan `display` o'zbekcha bo'lishi, resurs esa `"language": "uz"` ni ko'rsatishi kerak. `category` xizmat toifalarining milliy qiymatlar to'plamidan (HL7 v2 0074 jadvali) kod oladi; uning yonida boshqa tizimlarning kodlari ham bo'lishi mumkin. `effective[x]` - natija klinik jihatdan tegishli bo'lgan vaqt, odatda namuna olingan vaqt; `issued` - hisobot chiqarilgan vaqt. Hisobot raqami uchun [diagnostika hisoboti identifikatori](NamingSystem-diagnostic-report-id.html) tizimidan foydalaning.

#### Chiqarilgan hisobot va tasvirlarni biriktirish

`presentedForm` hisobotni bemor yoki shifokor ko'radigan ko'rinishda, odatda PDF sifatida saqlaydi. Uning `contentType` ini va yo mazmunning o'zini `data` da (base64), yoki Binary ga `url` ni ko'rsating. `media` hisobotga tegishli tasvirlar yoki boshqa hujjatlarni bog'laydi, har biri DocumentReference ga `link` va ixtiyoriy `comment` orqali:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "result": [ { "reference": "Observation/cbc-panel-example" } ],
  "media": [
    {
      "comment": "Blood smear, x1000",
      "link": { "reference": "DocumentReference/example-blood-smear-image" }
    }
  ],
  "presentedForm": [
    {
      "contentType": "application/pdf",
      "title": "Complete Blood Count report",
      "url": "Binary/example-cbc-report-pdf"
    }
  ]
}
```

PDF kodlangan natijalar o'rnini bosmaydi: boshqa tizimlar qiymatlarni o'qiy olishi uchun Observation larni ham `result` da yuboring.

#### Milliy ro'yxatda bo'lmagan hisobot turi

`code` bog'lanishi kengaytiriladigan (extensible). Laboratoriya milliy kodi bo'lmagan hisobot chiqarganda, laboratoriya axborot tizimining o'z kodini o'z `system` i bilan, hisobot nomini esa `text` da yuboring:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "LAB" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://lis.aurora-lab.uz/fhir/CodeSystem/report-type", "code": "AUR-0142" } ],
    "text": "Special immunology assay reported by Aurora LIS"
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "performer": [ { "reference": "Practitioner/example-practitioner" } ]
}
```

Yuqoridagi kod tizimi URL manzili faqat misol; laboratoriya tizimingiz e'lon qilgan manzildan foydalaning. Manba tizimda umuman kod bo'lmasa, `code` ni faqat `text` bilan yuboring, [faqat matnli misoldagi](DiagnosticReport-example-external-lab-report-text-only.html) kabi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
