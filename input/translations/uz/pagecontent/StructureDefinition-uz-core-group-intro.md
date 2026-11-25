> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Group birgalikda ko'rib chiqiladigan odamlar yoki boshqa obyektlar to'plamini tavsiflaydi: skrining, emlash yoki donorlik dasturining maqsadli guruhi va undan hosil bo'ladigan kogortalar, masalan taklif etilgan, skriningdan o'tgan, emlangan yoki chiqarib tashlangan bemorlar yoki donorlikni amalga oshirgan va oshirmagan donorlar. Guruh o'z a'zolarini umumiy xususiyatlar bo'yicha belgilaydi (masalan, tana massasi indeksi 25 va undan yuqori bo'lgan kattalar) yoki ularni birma-bir sanab o'tadi. [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) dastur mo'ljallangan guruhni `subjectReference` da ko'rsatadi, [CarePlan](StructureDefinition-uz-core-careplan.html) yoki [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) esa guruhni o'z `subject` i sifatida olishi mumkin. A'zolar odatda [bemorlar](StructureDefinition-uz-core-patient.html), lekin tibbiyot xodimlari, tashkilotlar, joylar, qurilmalar, namunalar yoki boshqa guruhlar ham bo'lishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Group quyidagilarga ega bo'lishi shart

Profil o'zidan majburiy elementlar qo'shmaydi; majburiy elementlar bazaviy resursdan keladi: a'zolar turi `type` va a'zolik asosi `membership`. Har bir `characteristic` yuborilganda o'z `code` ini, qiymatini va `exclude` belgisini, har bir `member` esa o'zi havola qiladigan `entity` ni o'z ichiga olishi shart.

#### Har bir UZ Core Group quyidagilarni qo'llab-quvvatlashi shart

- guruhning biznes identifikatori (`identifier`) va guruh foydalanishdami (`active`);
- a'zolar turi `type` (person / practitioner / organization / location / device / specimen va boshqalar);
- a'zolik qanday belgilanadi (`membership`: definitional / enumerated);
- guruhning maqsadi yoki turi (`code`), masalan skriningning maqsadli guruhi yoki emlanganlar kogortasi;
- nomi `name`, tavsifi `description` va a'zolar soni (`quantity`);
- guruhni boshqaradigan tashkilot yoki shaxs (`managingEntity`);
- a'zolarni kiritadigan yoki chiqarib tashlaydigan xususiyatlar (`characteristic`, uning `code` i, qiymati, `exclude` belgisi va `period` i bilan);
- sanab o'tilgan a'zolar (`member`, `entity`, a'zolik davri `period` va `inactive` belgisi bilan).

### Belgilanadigan va sanab o'tiladigan guruhlar

Dasturga odatda ikkala tur ham kerak bo'ladi:

| `membership` | A'zolar | Odatiy qo'llanilishi |
|---|---|---|
| `definitional` | `characteristic` yozuvlariga mos keladigan hamma; `member` ro'yxati yo'q | Skrining, emlash yoki donorlik dasturining maqsadli guruhi |
| `enumerated` | `member` da sanab o'tilgan obyektlar | Natija kogortasi: taklif etilgan, skriningdan o'tgan, emlangan yoki chiqarib tashlangan bemorlar, donorlikni amalga oshirgan donorlar |

Bular turli `code` qiymatlariga ega alohida Group resurslari. Belgilanadigan guruh `quantity` da mos keladigan odamlarning taxminiy sonini ko'rsatishi mumkin.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli nusxadan belgilanadigan maqsadli guruh va sanab o'tiladigan kogortagacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [2-tur qandli diabet skriningining maqsadli guruhi](Group-example-diabetes-screening-target-group.html) va [qizamiqqa qarshi emlanganlar kogortasi](Group-example-measles-vaccinated-group.html).

#### Yuborishingiz kerak bo'lgan eng kichik Group

Majburiy elementlar bazaviy resursdan keladi. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, shunda server uni qaysi qoidalar bo'yicha tekshirishni biladi. Shuncha ma'lumot validatsiyadan o'tadi:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "type": "person",
  "membership": "enumerated"
}
```

`type` va `membership` - oddiy kodlar, shuning uchun qiymatning o'zini yuboring. Bemorlar guruhining `type` i `person`.

#### Xususiyatlar bilan belgilangan skrining maqsadli guruhi

2-tur qandli diabet skrining dasturining maqsadli guruhi tana massasi indeksi 25 kg/m2 va undan yuqori bo'lgan kattalarni o'z ichiga oladi va bu tashxisi allaqachon qo'yilgan bemorlarni chiqarib tashlaydi:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "definitional",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00001" }
    ],
    "text": "Screening target group"
  },
  "name": "Type 2 diabetes screening target group",
  "description": "Adults with a BMI of 25 kg/m2 or higher, excluding patients already diagnosed with type 2 diabetes",
  "quantity": 1875,
  "managingEntity": { "reference": "Organization/example-organization" },
  "characteristic": [
    {
      "code": { "coding": [ { "system": "http://loinc.org", "code": "39156-5" } ], "text": "Body mass index (BMI)" },
      "valueRange": {
        "low": { "value": 25, "unit": "kg/m2", "system": "http://unitsofmeasure.org", "code": "kg/m2" }
      },
      "exclude": false
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-characteristic-kind-local-cs",
            "code": "diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "E11" } ] },
      "exclude": true
    }
  ]
}
```

`characteristic.code` nima tekshirilishini ko'rsatadi: o'lchov yoki baholash uchun LOINC kodi, masalan yosh yoki tana massasi indeksi, yoki LOINC qamrab olmaydigan belgi uchun mahalliy kod, masalan yashash hududi, tibbiyot tashkiloti, tashxis yoki ilgari o'tilgan skrining. Qiymat `valueRange`, `valueQuantity`, `valueCodeableConcept`, `valueBoolean` yoki `valueReference` ko'rinishida beriladi; tashxislar uchun ICD-10 kodlaridan foydalaning. `exclude: true` xususiyatni chiqarib tashlashga aylantiradi. Barcha xususiyatlar birgalikda qo'llaniladi. Guruh `code` i va mahalliy xususiyat kodlarining asosiy ko'rinadigan nomlari o'zbekcha, shuning uchun yoki bu yerdagidek `display` ni ko'rsatmang va `text` dan foydalaning, yoki resurs `language` ini yuborayotgan `display` ga moslab o'rnating.

#### Sanab o'tilgan kogorta

2026-yilning birinchi choragida poliklinikada qizamiq komponentli vaksina olgan bemorlar birma-bir sanab o'tilgan. `member.period.start` - har bir bemor kogortaga qo'shilgan sana:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00008" }
    ],
    "text": "Vaccinated patients"
  },
  "name": "Measles-vaccinated patients cohort",
  "quantity": 2,
  "managingEntity": { "reference": "Organization/example-organization" },
  "member": [
    {
      "entity": { "reference": "Patient/example-salim" },
      "period": { "start": "2026-01-15" },
      "inactive": false
    },
    {
      "entity": { "reference": "Patient/example-emma" },
      "period": { "start": "2026-02-03" },
      "inactive": false
    }
  ]
}
```

Biror kishini tarixni yo'qotmasdan kogortadan chiqarish uchun yozuvni o'chirmang, balki `inactive` ni `true` ga o'rnating va uning `period` ini yoping. `quantity` ni faol a'zolar soniga teng saqlang. `managingEntity` - guruh uchun mas'ul Organization, Practitioner, PractitionerRole yoki RelatedPerson.

Bulk Data Access dagi [Group eksporti](https://hl7.org/fhir/uv/bulkdata/en/export.html#endpoint---group-of-patients) orqali barcha a'zolarning ma'lumotlarini bitta so'rov bilan olish (`GET [base]/Group/[id]/$export`) rejalashtirilgan, lekin hozircha mavjud emas.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
