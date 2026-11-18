> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ServiceRequest - bemorga xizmat ko'rsatish uchun so'rov: laboratoriya tahlili yoki paneli, vizualizatsiya tekshiruvi, mutaxassisga yoki rejali kasalxonaga yotqizishga yo'llanma, uyga hamshiralik tashrifi yoki qon quyish. Resurs nima so'ralganini, kim uchun, kim tomonidan, qanchalik shoshilinch, qanday sabab bilan va qanday to'lanishini ko'rsatadi. ServiceRequest faqat so'rovning o'zini qayd etadi, nima qilinganini emas. Uni bajaradigan hodisalar unga havola qiladi: [Specimen](StructureDefinition-uz-core-specimen.html) `request` dan, [Observation](StructureDefinition-uz-core-observation.html), [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) yoki [Procedure](StructureDefinition-uz-core-procedure.html) `basedOn` dan. [CarePlan](StructureDefinition-uz-core-careplan.html) uni rejalashtirilgan tadbir sifatida kiritadi, qon komponentlari uchun [SupplyRequest](StructureDefinition-uz-core-supply-request.html) qon quyish tayinloviga asoslanadi, [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) yoki [Claim](StructureDefinition-uz-core-claim.html) esa o'zi asoslangan yo'llanmaga havola qiladi. Davlat hisobidan beriladigan yo'llanma uchun platforma har bir kelishuv bosqichini ServiceRequest ga `focus` orqali ishora qiluvchi [Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) sifatida kuzatadi. To'liq ketma-ketlik [laboratoriya](workflow-lab.html) va [yo'llanma](workflow-referral.html) ish jarayonlarida berilgan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core ServiceRequest quyidagilarga ega bo'lishi shart

Profil majburiy elementlar qo'shmaydi. Bazaviy resurs `status`, `intent` va `subject` ni talab qiladi.

#### Har bir UZ Core ServiceRequest quyidagilarni qo'llab-quvvatlashi shart

- buyurtma yoki yo'llanmaning biznes identifikatori (`identifier`) va birga yaratilgan so'rovlarni, masalan bitta namunadagi barcha tahlillarni birlashtiruvchi umumiy identifikator (`requisition`);
- so'rov holati (draft / active / on-hold / revoked / completed / entered-in-error / unknown) va uning maqsadi (proposal / plan / order va uning turlari);
- xizmat turi (`category`), ko'pi bilan bitta milliy toifa bilan, masalan laboratoriya bo'limi yoki kasalxonaga yotqizish;
- shoshilinchlik (`priority`: routine / urgent / asap / stat) va xizmatni bajarmaslik kerakligi belgisi (`doNotPerform`);
- so'ralgan xizmat (`code`);
- so'rov kim yoki nima uchun ekanligi (`subject`: [bemor](StructureDefinition-uz-core-patient.html) yoki [joy](StructureDefinition-uz-core-location.html)) va u yaratilgan [Encounter](StructureDefinition-uz-core-encounter.html);
- xizmat qachon ko'rsatilishi kerakligi (`occurrence[x]`) va so'rov qachon yozilgani (`authoredOn`);
- uni kim yozgani (`requester`: tibbiyot xodimi, tibbiyot xodimining lavozimi, tashkilot, bemor yoki qarindosh);
- xizmat nima uchun kerakligi (`reason`): ICD-10 yoki SNOMED CT kodi yoki [Condition](StructureDefinition-uz-core-condition.html) ga havola;
- xizmat qanday to'lanishi ([to'lov turi](StructureDefinition-payment-type.html) kengaytmasi: bepul / pullik / sug'urta / davlat tarifi / boshqalar) va sug'urta qoplamasi (`insurance`);
- so'rovni asoslovchi boshqa ma'lumotlar (`supportingInfo`) va tekshiriladigan [namuna](StructureDefinition-uz-core-specimen.html) (`specimen`);
- bemor uchun ko'rsatmalar, masalan qanday tayyorlanish kerakligi (`patientInstruction`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik foydali nusxadan davlat hisobidan beriladigan yo'llanmagacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [laboratoriya buyurtmasi](ServiceRequest-UZCoreServiceRequest-Example01.html), [qon quyish tayinlovi](ServiceRequest-transfusion-order-01.html) va [uyga hamshiralik tashrifi](ServiceRequest-example-nursing-newborn-home-visit-request.html).

#### Yuborishingiz kerak bo'lgan eng kichik ServiceRequest

Bazaviy resurs `status`, `intent` va `subject` ni talab qiladi, har bir UZ Core resursi esa o'z profilini `meta.profile` da ko'rsatadi. So'rov faqat `code` dagi xizmat bilan foydali, shuning uchun uni ham yuboring. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` - `CodeableReference`, shuning uchun kodlash `concept` ichida joylashadi. Xizmatni ko'rsatishga ruxsat beruvchi so'rov uchun `intent` `order` dan foydalaning. Milliy laboratoriya panellari kodlarining ko'rsatiladigan nomlari o'zbekcha, shuning uchun resurs `language` ni `uz` ga o'rnatadi; `status` va `intent` kabi HL7 kodlarida `display` ni ko'rsatmang.

#### Laboratoriya buyurtmasi

Oilaviy shifokor qabul paytida shoshilinch umumiy qon tahlilini buyuradi. Klinika tizimidagi buyurtma raqami `identifier` ga yoziladi, `requisition` esa bitta qon namunasidagi barcha tahlillar uchun umumiy raqamni o'z ichiga oladi. Milliy toifa laboratoriya bo'limlaridan olinadi, sabab - ICD-10 kodi, `specimen` esa namuna olingandan keyin unga havola qiladi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0001",
            "display": "Bepul"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "LAB-2026-004512" } ],
  "requisition": { "system": "https://mis.dmed.uz", "value": "REQ-2026-001877" },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-02",
          "display": "Gematologiya"
        }
      ]
    }
  ],
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-01-16T09:30:00+05:00",
  "authoredOn": "2026-01-16T09:10:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D50.9" } ]
      }
    }
  ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "patientInstruction": [ { "instructionMarkdown": "Tahlilni och qoringa topshiring." } ]
}
```

`category` va `reason` qiymat bo'yicha bo'laklarga ajratilgan. `category` [ServiceRequest ning milliy toifalari](ValueSet-service-request-categories-vs.html) dan (laboratoriya bo'limlari va SNOMED CT xizmat turlari) ko'pi bilan bitta kodni o'z ichiga oladi, uning yonida boshqa toifalar ham bo'lishi mumkin. `reason` milliy holat kodlaridan ICD-10 yoki SNOMED CT kodlarini qabul qiladi; qayd etilgan tashxisga havola qilish uchun `concept` o'rniga `"reference": { "reference": "Condition/[id]" }` dan foydalaning. `patientInstruction` takrorlanadi, har bir yozuv markdown matni yoki hujjatga havola.

#### Davlat hisobidan kasalxonaga yotqizishga yo'llanma

Oilaviy shifokor bemorni davlat tarifi bo'yicha rejali kasalxonaga yotqizishga yo'naltiradi. Xizmat - SNOMED CT `306206005` Referral to service, toifa - `32485007` Admission to hospital, `performer` esa bemor yo'naltirilgan [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) ni ko'rsatadi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0004",
            "display": "Davlat tarifi"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "REF-2026-000318" } ],
  "status": "active",
  "intent": "order",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "32485007" } ] }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "306206005" } ] }
  },
  "subject": { "reference": "Patient/example-nodira" },
  "occurrencePeriod": { "start": "2026-03-10", "end": "2026-03-31" },
  "authoredOn": "2026-03-05T13:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [ { "reference": "HealthcareService/example-healthcareservice" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "K80.2" } ]
      }
    }
  ]
}
```

Keyingi qadamni to'lov turi belgilaydi. Davlat tarifida platforma [kelishuv Task](StructureDefinition-uz-core-referral-approval-task.html) lari zanjirini boshlaydi va ServiceRequest `status` ini ular bilan muvofiqlashtiradi; boshqa har qanday to'lov turida yo'llanma to'g'ridan-to'g'ri ijrochiga o'tadi. `occurrencePeriod` - xizmat ko'rsatilishi kerak bo'lgan oraliq; aniq vaqt uchun `occurrenceDateTime` dan foydalaning.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
