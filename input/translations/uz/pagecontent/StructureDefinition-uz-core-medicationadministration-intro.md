UZ Core MedicationAdministration dori yuborish hodisasini - bemorga yuborilgan dozani yoki yuborilmagan holatni qayd etadi. U dori va qabul qiluvchini Encounter, ijrochi, vaqt, dozalash tafsilotlari hamda (mavjud bo'lsa) bajarilayotgan buyurtma bilan bog'laydi. Dori buyurtmasi uchun [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), dorini berib yuborish uchun [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), yuborish hodisasining o'zi uchun esa ushbu profildan foydalaning.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)). Tizim mavjud ma'lumotni Must Support elementlariga kiritishi va qabul qilinganda qayta ishlashi kerak. Aniq turlar, karralilik va bog'lanishlar [profilning rasmiy ko'rinishida](#profile) berilgan.

#### Har bir UZ Core MedicationAdministration Must Have

Ushbu profil yangi majburiy karralilik qo'shmaydi. Bazaviy FHIR talablariga, jumladan majburiy `status` va `subject` elementlariga rioya qiling.

#### Har bir UZ Core MedicationAdministration Must Support

- yuborish hodisasining identifikatori;
- `status` va dori yuborilmagan bo'lsa `statusReason`;
- yuborish joyi yoki sharoitini bildiruvchi `category`;
- UZ Core Medication ga havola yoki kodlangan dori sifatidagi `medication`;
- `subject` (UZ Core Patient yoki Group) va `encounter`;
- `occurence[x]` (yuborish vaqti yoki davri) va `recorded` (yozuv ilk bor kiritilgan vaqt);
- `performer.function` va `performer.actor`;
- tegishli bo'lsa `reason`, `request` va `device`;
- dozalash ma'lumotlari, jumladan doza, yuborish yo'li, joyi va tezligi;
- yuborish joyi extensioni; moliyalashtirish manbai ham qo'llab-quvvatlanadi.

### Allergiya xavfsizligi: ko'rsatma va reaksiya boshqa-boshqa

Agar dori allergiya yoki allergik holatni davolash uchun yuborilgan bo'lsa, `MedicationAdministration.reason` dan foydalaning. Bu maydon dori nima sababdan yuborilganini qayd etadi; dori allergik reaksiyaga sabab bo'lganini bildirmaydi.

Agar dori yuborilishi allergik reaksiyaga sabab bo'lsa, reaksiyani bemorning [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) resursidagi `reaction` ichida qayd eting va ushbu reaksiyani standart `openEHR-administration` extensioni bilan MedicationAdministration ga bog'lang. Extension reaction ichida bo'ladi, uning `valueReference` qiymati esa ushbu MedicationAdministration ga ishora qiladi. Bu sababiy bog'lanish uchun `reason` dan foydalanmang. Ikkala holat ham mavjud bo'lsa, ikkala munosabatni ham qayd eting.

### Dori yuborish yozuvi namunasi

Quyidagi misolda 500 mg paratsetamol og'iz orqali yuborilgan. Kodlangan dori `medication.concept` ichida, bemor va ijrochi esa havola sifatida berilgan; doza UCUM dan foydalanadi. FHIR elementining imlosi `occurence[x]` (bitta “r” bilan).

```json
{
  "resourceType": "MedicationAdministration",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"] },
  "status": "completed",
  "category": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/medication-admin-location", "code": "inpatient" }] }],
  "medication": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "387517004", "display": "Paracetamol" }] } },
  "subject": { "reference": "Patient/example-salim" },
  "request": { "reference": "MedicationRequest/example-medication-request" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "performer": [{ "function": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/med-admin-perform-function", "code": "performer" }] }, "actor": { "reference": { "reference": "Practitioner/example-practitioner" } } }],
  "reason": [{ "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "25064002", "display": "Headache" }] } }],
  "dosage": { "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" }, "route": { "coding": [{ "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" }] } }
}
```

`status` va dori tasnifi required; category, status reason, performer function, reason va site preferred; route extensible bog'lanishdan foydalanadi. `reason` `CodeableReference` bo'lib, kodlangan ko'rsatma `concept` ichiga, klinik resursga havola esa `reference` ichiga joylanadi.
