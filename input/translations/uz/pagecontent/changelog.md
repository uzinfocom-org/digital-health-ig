### Ishlab chiqish jarayonida

Klinik (ICD-10 asosidagi) va ICD-10 ga asoslanmagan holatlarni farqlash uchun UZ Core Clinical Condition qo'shildi.

Bemorning nogironlik holati FHIR standarti kengaytmasi orqali Patient resursidan Condition resursiga ko'chirildi.

NamingSystem identifikatorlaridagi pastki chiziqlar (underscore) olib tashlandi.

DHP tomonidan qo'llab-quvvatlanadigan resurslar, profillar, amallar va searchParameterlarni tavsiflovchi capabilitystatement qo'shildi.

IG (Implementation Guide) ga IP bayonotlari, global jadval va bog'liqlik jadvali qo'shildi.

NamingSystemlarning kanonik URL manzillari endi `https://terminology.dhp.uz` bilan boshlanadi.

Observation Interpretation kod tizimi qo'shimchasining nomi to'g'rilandi.

Foydalanuvchi interfeysini mahalliylashtirish uchun o'zbek tilida yaratilgan CodeSystemlar va THO supplementlarni o'z ichiga olgan ko'p tilli terminologiya strategiyasi qo'shildi.

ConceptMaplardan foydalanish va ularning qo'llash strategiyasi hujjatlashtirildi.

Slice nomlari endi eng yaxshi amaliyotga muvofiq — lower camelCase formatida yangilandi.

Patient, Practitioner va RelatedPerson resurslarida xalqaro manzillarni qo'llab-quvvatlash imkoniyati qo'shildi.

### Versiya 0.3.0

Encounter, EpisodeOfCare va Observation uchun UZ Core profillari qo'shildi.

Kanonik URL manzillari conformance resurslari uchun `https://dhp.uz/fhir/core`, terminologiya resurslari uchun esa `https://terminology.dhp.uz/fhir/core` tarzida o'zgartirildi, bu esa kelajakdagi IG'lar uchun `https://dhp.uz/fhir/<ig>`namunaviy shaklini qo'llash imkonini beradi.

Ruscha tarjimalar qo'shildi.

### Versiya 0.2.0

Bu IG'ning birinchi, ishlab chiqish jarayonidagi versiyasi bo'lib, barcha resurslarning kanonik URL manzillarini yakuniy variantlariga yangilaydi.

#### Asosiy o'zgarishlar
AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance va Socioeconomic Observation uchun UZ Core profillari qo'shildi.

Profil, terminologiya resurslari va IG'ning kanonik URL manzillari vaqtinchalik `medcore.uz` domenidan rasmiy `dhp.uz` domeniga o'zgartirildi.

