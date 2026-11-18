> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Composition - tibbiy hujjat yoki raqamli shaklning sarlavhasi: bemorning tibbiy kartasi, jurnal, ma'lumotnoma, imzolangan xulosa. U hujjat turini (`type`, tibbiy hujjatlar shakllarining milliy ro'yxatidan), u kim haqida ekanini, uni kim yozganini, kim tasdiqlaganini va qaysi tashkilot saqlashini ko'rsatadi hamda mazmunni sarlavhali bo'limlarga (`section`) ajratadi. Har bir bo'limda inson o'qiy oladigan matn `text` va ma'lumotlarni saqlaydigan resurslarga havolalar bor, masalan [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) yoki [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html); Composition ularni nusxalamaydi, balki ularga havola qiladi. Yakuniy hujjat birinchi yozuvi Composition bo'lgan document turidagi Bundle sifatida yuboriladi va [Provenance](StructureDefinition-uz-core-provenance.html) orqali imzolanadi; hujjatlarni yig'ish va imzolash tartibi [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) da tavsiflangan. Joriy klinik faktlarni alohida resurslar sifatida saqlang, Composition dan esa faqat yakuniy hujjat kerak bo'lganda foydalaning.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Composition quyidagilarga ega bo'lishi shart

- `status` (preliminary / final / amended / entered-in-error ...);
- hujjat turi `type`;
- hujjat oxirgi tahrirlangan sana `date`;
- kamida bitta muallif `author`;
- sarlavha `title`.

Bularning barchasi bazaviy resursdan keladi. Har bir `attester` da `mode` bo'lishi, bo'limning `text` i ko'rsatilgan bo'lsa, unda `status` va `div` bo'lishi shart.

#### Har bir UZ Core Composition quyidagilarni qo'llab-quvvatlashi shart

- `status` va hujjat turi `type` (tibbiy hujjatlar milliy ro'yxatidagi shakl);
- hujjat toifasi `category` (tibbiy karta / jurnal / blank);
- hujjat kim haqida (`subject`), odatda [bemor](StructureDefinition-uz-core-patient.html);
- `date`, mualliflar `author` (mutaxassis, lavozim, tashkilot, qarindosh, bemor yoki qurilma) va sarlavha `title`;
- tasdiqlovchilar `attester`: ular qanday tasdiqlagani (personal / professional / legal / official) va ular kim (`party`);
- hujjatni saqlaydigan [tashkilot](StructureDefinition-uz-core-organization.html) (`custodian`);
- bo'limlar `section`, har biri o'z `title`, `code`, `author`, matn `text`, yozuvlar tartibi (`orderedBy`), `entry` havolalari va bo'sh bo'lish sababi (`emptyReason`) bilan.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik valid Composition dan bo'limlarga ega hujjatgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [tibbiy karta](Composition-example-medical-composition.html).

#### Yuborishingiz kerak bo'lgan eng kichik Composition

Composition ga `status`, `type`, `date`, `author` va `title` kerak:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi"
}
```

`type` milliy [tibbiy hujjatlar turlari](CodeSystem-composition-type-cs.html) ma'lumotnomasidan olinishi shart, bu yerda `emdoc-0010-0003` (bemorning tibbiy kartasi). Bu ma'lumotnoma o'zbek tilida yuritiladi, shuning uchun yuboriladigan `display` o'zbekcha bo'lishi, resurs esa `"language": "uz"` ni ko'rsatishi kerak; yoki `display` ni ko'rsatmang. `date` hujjat har safar tahrirlanganda o'zgaradi; hujjatni bir nechta odam yoki tizim yozgan bo'lsa, `author` takrorlanadi.

#### Sub'ekt, tasdiqlovchi va saqlovchi

Tibbiy karta bemorga tegishli, u uchun mas'ul shifokor tomonidan tasdiqlanadi va tibbiyot muassasasida saqlanadi:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs",
          "code": "Comp-001-0001",
          "display": "Tibbiy karta"
        }
      ]
    }
  ],
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "attester": [
    {
      "mode": { "coding": [ { "system": "http://hl7.org/fhir/composition-attestation-mode", "code": "legal" } ] },
      "time": "2026-03-05T10:15:00+05:00",
      "party": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "custodian": { "reference": "Organization/tashkent-hospital" }
}
```

`category` milliy [hujjat toifalari](CodeSystem-composition-category-cs.html) ma'lumotnomasidan kod oladi (tibbiy karta / jurnal / blank); uning yonida boshqa tizimlarning kodlari ham bo'lishi mumkin. Tasdiqlovchi ko'rsatilgan bo'lsa, `attester.mode` majburiy. Tasdiqlash - hujjat ichidagi bayonot; unga yuridik kuch beradigan raqamli imzo - alohida [Provenance](StructureDefinition-uz-core-provenance.html).

#### Bo'limlarni qo'shish

Har bir `section` da `title`, uning mazmunini ko'rsatuvchi `code`, matn `text` va uning ortidagi resurslarga `entry` havolalari bor. Xabar qiladigan narsasi bo'lmagan bo'lim o'z `text` ini saqlaydi va yozuvlar o'rniga `emptyReason` ni ko'rsatadi:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "emdoc-0010-0003" }
    ]
  },
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "section": [
    {
      "title": "Anamnez",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "10164-2" } ] },
      "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bosh og'rig'i, 3 kundan beri.</div>"
      },
      "orderedBy": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-order", "code": "event-date" } ] },
      "entry": [ { "reference": "Condition/example-headache" } ]
    },
    {
      "title": "Allergiyalar",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "48765-2" } ] },
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ma'lum allergiyalar yo'q.</div>"
      },
      "emptyReason": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-empty-reason", "code": "nilknown" } ]
      }
    }
  ]
}
```

Bo'limda `text`, `entry` yoki ichki `section` dan kamida bittasi bo'lishi shart, `emptyReason` esa faqat yozuvsiz bo'limda ruxsat etiladi. Bo'lim `code` lari odatda LOINC hujjat bo'limlari kodlaridan olinadi, bu yerda 10164-2 (hozirgi kasallik tarixi) va 48765-2 (allergiyalar). Matn yozuvlardan hosil qilingan bo'lsa, `text.status` - `generated`, yozuvlardan ko'proq narsani aytsa - `additional`. `orderedBy` o'quvchiga yozuvlar qanday tartiblanganini bildiradi, bu yerda hodisa sanasi bo'yicha. Bo'lim `author` i faqat hujjat muallifidan farq qilganda kerak.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
