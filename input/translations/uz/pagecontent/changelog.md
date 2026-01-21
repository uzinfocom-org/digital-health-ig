### Ishlab chiqish jarayonida

UZ Core Clinical Condition resursiga ICD-10 asosidagi klinik holatlar va ICD-10 ga kirmaydigan holatlarni farqlash uchun qo‘shimcha kiritildi.

Bemorning nogironlik holati Patient resursidan (FHIR standart kengaytmasi orqali ko‘rsatilgan) Condition resursiga ko‘chirildi.

NamingSystem identifikatorlaridagi pastki chiziqlar olib tashlandi.

DHP tomonidan qo‘llab-quvvatlanadigan resurslar, profillar, operatsiyalar va qidiruv parametrlari tasvirlangan CapabilityStatement qo‘shildi.

Implementatsiya qo‘llanmasiga IP statements, globals table va dependency tables bo‘limlari qo‘shildi.

NamingSystem kanonik URL-lari endi https://terminology.dhp.uz bilan boshlanadi.

Observation Interpretation code system supplement nomi to‘g‘rilandi.

Foydalanuvchi interfeysini lokalizatsiya qilish uchun o‘zbek tilida yaratilgan CodeSystems va THO supplements bilan ko‘p tillilik terminologiya strategiyasi ishlab chiqildi.

ConceptMaps ishlatilishi va ularga oid strategiya hujjatlashtirildi.

Slice name’lar FHIRning tavsiya etilgan lowerCamelCase nomlash konventsiyasiga mos ravishda yangilandi.

Patient, Practitioner va RelatedPerson resurslarida xalqaro manzillarni qo‘llab-quvvatlash qo‘shildi.

O‘zbekcha tarjimalar kiritildi.

### Versiya 0.3.0

Encounter, EpisodeOfCare va Observation uchun UZ Core profillari qo'shildi.

Kanonik URL manzillari conformance resurslari uchun `https://dhp.uz/fhir/core`, terminologiya resurslari uchun esa `https://terminology.dhp.uz/fhir/core` tarzida o'zgartirildi, bu esa kelajakdagi IG'lar uchun `https://dhp.uz/fhir/<ig>`namunaviy shaklini qo'llash imkonini beradi.

Ruscha tarjimalar qo'shildi.

### Versiya 0.2.0

Bu IG'ning birinchi, ishlab chiqish jarayonidagi versiyasi bo'lib, barcha resurslarning kanonik URL manzillarini yakuniy variantlariga yangilaydi.

#### Asosiy o'zgarishlar
AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance va Socioeconomic Observation uchun UZ Core profillari qo'shildi.

Profil, terminologiya resurslari va IG'ning kanonik URL manzillari vaqtinchalik `medcore.uz` domenidan rasmiy `dhp.uz` domeniga o'zgartirildi.

