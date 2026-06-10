> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ImmunizationRecommendation - bu Raqamli sog'liqni saqlash platformasida bemorga qaysi vaktsinalar muddati kelganligi, kechikkanligi yoki rejalashtirilganligini hisoblab chiqilgan prognozdir. U faol milliy emlash kalendari (qarang [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html)), bemorning [Immunization](StructureDefinition-uz-core-immunization.html) tarixi va uning demografik ma'lumotlari asosida avtomatik tarzda yaratiladi - u qo'lda kiritilmaydi. Har bir tavsiya yozuvi vaktsina va/yoki maqsadli kasallikni, prognoz holatini (muddati kelgan, kechikkan va hokazo), seriyadagi doza raqamini va tavsiyani belgilab beruvchi sanalarni ko'rsatadi. U prognoz tegishli bo'lgan [Patient](StructureDefinition-uz-core-patient.html)ga havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi talab qilinmaydi, lekin tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, tiplar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core ImmunizationRecommendation quyidagilarga ega bo'lishi shart

Har bir ImmunizationRecommendation prognoz tegishli bo'lgan bemorni, tavsiya yaratilgan sanani va kamida bitta tavsiya yozuvini ko'rsatishi kerak. Har bir yozuv prognoz holatini (muddati kelgan, kechikkan, rejalashtirilgan va hokazo) hamda vaktsina kodi yoki maqsadli kasallikdan birini ko'rsatishi kerak - uzcore-imrec-1 qoidasi ulardan kamida bittasini talab qiladi - va sana mezoni berilgan joyda uning ham kodi (qaysi turdagi sana) ham qiymati (sananing o'zi) majburiydir.

#### Har bir UZ Core ImmunizationRecommendation quyidagilarni qo'llab-quvvatlashi kerak



- biznes identifikatori va mas'ul vakolatli tashkilot;
- har bir tavsiya yozuvi ichida: vaktsina kodi, maqsadli kasallik, har qanday qarshi ko'rsatilgan vaktsina kodi, prognoz sababi va sana mezoni (masalan, berishning eng erta sanasi, muddati kelgan sana, kechikkan sana);
- tavsif, seriya nomi, doza raqami va seriyadagi dozalar umumiy soni;
- prognoz asoslangan qo'llab-quvvatlovchi emlash yozuvlari va qo'llab-quvvatlovchi bemor ma'lumotlari.

> Ushbu resurs tavsiya beruvchi dvigatel (engine) tomonidan ishlab chiqariladi. Mijozlar nima muddati kelganligini bilish uchun uni o'qiydilar; ular uni bevosita yaratmasliklari kerak.

### JSON ni bosqichma-bosqich qurish

Ushbu resurs tavsiya beruvchi dvigatel tomonidan ishlab chiqariladi, lekin uni o'qiganingizda uning shaklini bilish foydalidir. Quyidagi misollar eng kichik to'g'ri instansdan to to'liq to'ldirilgan prognozgacha boradi - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq malumotnoma instansi sahifaning pastki qismida havola qilingan ([tavsiya misoli](ImmunizationRecommendation-example-uz-core-immunization-recommendation.html)).

#### Eng kichik to'g'ri tavsiya

Tavsiya u tegishli bo'lgan `patient` ni, u yaratilgan `date` ni va kamida bitta `recommendation` yozuvini talab qiladi. Har bir yozuv `forecastStatus` ni hamda `vaccineCode` yoki `targetDisease` dan birini ko'rsatishi kerak (`uzcore-imrec-1` qoidasi ulardan kamida bittasini talab qiladi). Har bir UZ Core resursi shuningdek `meta.profile` da u muvofiqligini da'vo qiladigan profilni nomlaydi. Shuncha narsa allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      }
    }
  ]
}
```

`patient` - bu [Patient](StructureDefinition-uz-core-patient.html)ga oddiy `Reference`. `vaccineCode` milliy vaktsina qiymatlar to'plamiga bog'langan (yuqorida CVX), va `forecastStatus` (muddati kelgan, kechikkan, rejalashtirilgan, ...) bemor kalendarda qayerda turganini bildiradi.

#### To'liq to'ldirilgan prognoz

Amalda dvigatel ancha ko'proq narsa chiqaradi: mas'ul `authority` tashkiloti, vaktsina himoya qiladigan `targetDisease`, holat ortidagi `forecastReason`, `dateCriterion` (doza qachon eng erta, muddati kelgan yoki kechikkan), `series`/`doseNumber`/`seriesDoses`, hamda prognoz asoslangan `supportingImmunization` va `supportingPatientInformation`:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "authority": { "reference": "Organization/example-organization" },
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "14189004", "display": "Measles" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      },
      "forecastReason": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "77386006", "display": "Pregnancy" }] }
      ],
      "dateCriterion": [
        {
          "code": { "coding": [{ "system": "http://loinc.org", "code": "30981-5", "display": "Earliest date to give" }] },
          "value": "2025-08-10T09:00:00+05:00"
        }
      ],
      "description": "Patient is recommended to receive measles vaccination according to the national immunization schedule.",
      "series": "Routine measles immunization series",
      "doseNumber": "1",
      "seriesDoses": "2",
      "supportingImmunization": [ { "reference": "Immunization/example-measles-immunization" } ],
      "supportingPatientInformation": [ { "reference": "Condition/example-pregnancy" } ]
    }
  ]
}
```

`authority`, `supportingImmunization` ([Immunization](StructureDefinition-uz-core-immunization.html)ga) va `supportingPatientInformation` - bularning barchasi oddiy `Reference` tiplaridir. `dateCriterion.code` `value` qaysi sana ekanligini tanlaydi (berishning eng erta, muddati kelgan, kechikkan); bog'langan qiymatlar to'plamlari uchun [Terminologiya](general-guidance.html#terminology) ga qarang.

Misol API chaqiruvlari va namunaviy yuk (payload) uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
