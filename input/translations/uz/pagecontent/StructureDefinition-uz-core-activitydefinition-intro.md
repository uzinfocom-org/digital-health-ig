> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ActivityDefinition bitta tadbirni umumiy ko'rinishda, aniq bemordan qat'i nazar tavsiflaydi: preparati, yuborish yo'li va dozasi bilan vaksina dozasini yoki bemorni skriningga taklif qilishni. Bu qanday so'rov yaratish va unga nima kiritishni ko'rsatuvchi qayta ishlatiladigan shablon. [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) bunday tadbirlardan milliy jadval tuzadi va jadvalning har bir amali `definitionCanonical` yoki `definitionUri` orqali ulardan biriga ishora qiladi. Tadbir bemorga qo'llanganda ilova `kind` da ko'rsatilgan so'rovni yaratadi, masalan [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) yoki [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [CarePlan](StructureDefinition-uz-core-careplan.html) esa ta'rifga `instantiatesCanonical` da havola qilishi mumkin. Boshqa resurslar ActivityDefinition ga uning kanonik `url` i orqali havola qiladi, shuning uchun yangi ta'rifni nashr etishdan oldin mavjudini `url` bo'yicha qidiring. Jadval va uning tadbirlari ishda [immunizatsiya ish jarayoni](workflow-immunization.html) da ko'rsatilgan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core ActivityDefinition quyidagilarga ega bo'lishi shart

Profil majburiy elementlar qo'shmaydi. Bazaviy resurs `status` ni (draft / active / retired / unknown) talab qiladi. `dynamicValue` mavjud bo'lsa, unda `path` ham, `expression` ham bo'lishi shart.

#### Har bir UZ Core ActivityDefinition quyidagilarni qo'llab-quvvatlashi shart

- kanonik `url`, biznes identifikatori `identifier`, `version` va versiyalarni solishtirish algoritmi (`versionAlgorithm[x]`);
- mashina o'qiy oladigan nom `name` va o'zbekcha sarlavha `title`, uning ruscha va qoraqalpoqcha shakllari tarjimalar sifatida;
- nashr holati `status`, `date`, `publisher`, `description` va ta'rifning amal qilish davri (`effectivePeriod`);
- tadbir mo'ljallangan subyekt turi (`subject[x]`, odatda Patient);
- tadbir yaratadigan so'rov turi (`kind`) va bu so'rov mos kelishi kerak bo'lgan profil (`profile`);
- nima qilinishi kerakligi (`code`), maqsad (`intent`: proposal / plan / order va boshqalar), shoshilinchlik (`priority`) va tadbirni bajarmaslik kerakligi belgisi (`doNotPerform`);
- u qachon bo'lishi kerakligi (`timing[x]`);
- unda kim ishtirok etishi (`participant`: uning `type` i, ishtirokchi turining ta'rifi yoki unga havola, uning `role` va `function` i);
- ishlatiladigan preparat (`product[x]`: vaksina kodi yoki havola), miqdor `quantity` va `dosage`;
- `bodySite`;
- nima talab qilinishi yoki yaratilishi: namunalar (`specimenRequirement`), kuzatuvlar (`observationRequirement`) va ularning natijalari (`observationResultRequirement`);
- so'rov ta'rifdan qanday quriladi: StructureMap (`transform`) yoki alohida qiymatlar (`dynamicValue`: to'ldiriladigan yo'l `path` va uni hisoblaydigan ifoda `expression`).

### So'rov resurslari turlari

`kind` ushbu ta'rif qo'llanganda yaratiladigan resursni bildiradi, masalan, laboratoriya tekshiruvi uchun `ServiceRequest` yoki emlash uchun `ImmunizationRecommendation`. Har qanday [FHIR R5 so'rov resursi turi](ValueSet-request-resource-types-vs.html) qo'llanishi mumkin; Observation yoki QuestionnaireResponse kabi hodisa resurslari qo'llanmaydi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik foydali ta'rifdan skriningga taklif shablonigacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [bolalarni emlash tadbiri](ActivityDefinition-example-activity-definition.html).

#### Yuborishingiz kerak bo'lgan eng kichik ActivityDefinition

Faqat `status` majburiy, har bir UZ Core resursi esa o'z profilini `meta.profile` da ko'rsatadi. Ta'rif faqat boshqalar ishora qila oladigan kanonik `url`, `name`, yaratiladigan so'rov turi `kind` va tadbir kodi `code` bilan foydali. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "name": "DiabetesScreeningInvitation",
  "status": "draft",
  "kind": "ServiceRequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  }
}
```

Nashr etilgandan keyin `url` o'zgarmasligi kerak, chunki jadvallar va parvarish rejalari unga havola qiladi. `name` bo'sh joylarsiz yoziladi. `code` SNOMED CT protsedurasini yoki ICHI aralashuvini qabul qiladi.

#### Vaksina dozasi

Tug'ilganda beriladigan gepatit B ga qarshi vaksina dozasi, milliy emlash jadvalining amali unga qanday havola qilsa, shu ko'rinishda. `kind` - `ImmunizationRecommendation`, `code` - SNOMED CT `33879002` Administration of vaccine to produce active immunity, vaksina esa `productCodeableConcept` ga yoziladi:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-hepatitis-b-birth-dose",
  "version": "1.0.0",
  "versionAlgorithmCoding": { "system": "http://hl7.org/fhir/version-algorithm", "code": "semver" },
  "name": "HepatitisBBirthDose",
  "title": "Gepatit B ga qarshi tug'ruqxonada emlash",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Вакцинация против гепатита B в роддоме" }
        ]
      }
    ]
  },
  "status": "active",
  "subjectCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/fhir-types", "code": "Patient" } ]
  },
  "date": "2026-08-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "First dose of hepatitis B vaccine, given within 24 hours of birth.",
  "effectivePeriod": { "start": "2026-08-01" },
  "kind": "ImmunizationRecommendation",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "33879002",
        "display": "Administration of vaccine to produce active immunity"
      }
    ]
  },
  "intent": "plan",
  "priority": "routine",
  "doNotPerform": false,
  "participant": [ { "type": "practitioner" } ],
  "productCodeableConcept": {
    "coding": [ { "system": "http://hl7.org/fhir/sid/cvx", "code": "08" } ]
  },
  "dosage": [
    {
      "route": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "78421000", "display": "Intramuscular route" } ]
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 0.5, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" } }
      ]
    }
  ]
}
```

`title` o'zbek tilida; ruscha va qoraqalpoqcha sarlavhalar `_title` dagi `translation` kengaytmalarida uzatiladi. `code` `33879002` bo'lganda preparat vaksina kodlaridan bo'lishi shart. Doza beriladigan yosh odatda ushbu ta'rifga havola qiluvchi jadval amalida (`PlanDefinition.action.timing[x]`) ko'rsatiladi, shuning uchun bitta ta'rif bir nechta dozaga xizmat qilishi mumkin. `participant.type` majburiy bog'lanishdan foydalanadi (practitioner, patient, related person va boshqalar).

#### Skriningga taklif shabloni

Taklif shabloni uchun mavjud profil `kind = ServiceRequest`, `intent = plan` va [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga ishora qiluvchi `profile` bilan qo'llanadi:

```json
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition"] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-diabetes-screening-invitation",
  "version": "1.0.0",
  "name": "DiabetesScreeningInvitation",
  "title": "Diabetes screening invitation",
  "status": "active",
  "date": "2026-09-01",
  "publisher": "Ministry of Health of the Republic of Uzbekistan",
  "description": "Template for the invitation a patient receives to attend diabetes screening.",
  "kind": "ServiceRequest",
  "profile": "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" } ]
  },
  "intent": "plan",
  "priority": "routine"
}
```

Ilova bemor so'rovini yaratganda bemorni, taklif toifasini, dastur identifikatorini va PlanDefinition ning aniq versiyasiga havolani to'ldiradi. Ta'riflar natijalarni baholamaydi va so'rov holatini o'zgartirmaydi. Skrining misollari va ilova kontrakti Integrations da berilgan.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
