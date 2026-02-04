### Ishlab chiqish jarayonida

Hujjat identifikatori nomlar maydoni (doc) identifikator tizimlariga qo'shildi.

### Versiya 0.4.0

> Eslatma: Ushbu bo'lim mashina tarjimasi bo'lib, hali sifat nazoratidan o'tmagan.

UZ Core Goal profili tegishli kod tizimlari va qiymatlar to'plamlari bilan qo'shildi.

UZ Core Questionnaire va QuestionnaireResponse profillari tarjima qilingan javob variantlari uchun ko'p tillilik qo'llab-quvvatlashi bilan qo'shildi.

Pensiya guvohnomasi identifikator turi (Номер пенсионного удостоверения) Patient resursida NamingSystem qo'llab-quvvatlashi bilan qo'shildi.

Modellashtirish ko'rsatmalarida bog'lash kuchi (binding strength) talablari aniqlashtirildi.

DHP Connectathon 1 dan olingan fikr-mulohazalar qo'llandi.

Profil havolalari imkon qadar asosiy FHIR resurslari o'rniga UZ Core profillaridan foydalanish uchun tuzatildi.

Bemor fuqaroligi endi maxsus MVD kodlari o'rniga ISO 3166-1 alpha-2 kodlaridan foydalanadi.

OrganizationalSpecialization kod izchilligi tuzatildi (101 → 101.0).

OrganizationalSubordinationGroup dagi I_3 uchun ruscha tarjima tuzatildi.

NomenclatureGroup, OrganizationalStructure va OrganizationalServiceGroup uchun tavsiflar ularning maqsadi va ierarxiyasini tushuntirish uchun aniqlashtirildi.

Bemor boshqaruvchi tashkilotga biriktirilgan vaqtni kuzatish uchun boshqaruvchi tashkilot biriktirish kengaytmasi qo'shildi.

MVD mamlakat kodlarini ISO 3166-1 alpha-2 kodlariga tarjima qilish uchun ConceptMap qo'shildi.

Mamlakat kodi qo'llab-quvvatlashi bilan chet el pasport raqamlari va haydovchilik guvohnomalari uchun aniq bo'limlar (slices) qo'shildi.

EpisodeOfCare tavsifi yangilandi.

PINFL aniqligi va alpha-2 mamlakat kodlariga o'tishni o'z ichiga olgan identifikator hujjatlari yaxshilandi.

Hayotiy ko'rsatkichlar bo'limi ko'rsatmalar va misollar bilan qo'shildi.

MultilingualName qoidalar to'plamida qoraqalpoq tili (kaa) qo'llab-quvvatlashi qo'shildi.

Intellektual mulk egasi Sog'liqni saqlash vazirligiga yangilandi.

UZ Core Clinical Condition klinik (ICD-10) va ICD-10 ga asoslanmagan holatlarni farqlash uchun qo'shildi.

Bemor nogironlik holati Patient resursidan (FHIR standart kengaytmasidan foydalangan holda) Condition resursiga ko'chirildi.

NamingSystem identifikatorlaridan pastki chiziqlar olib tashlandi.

DHP qo'llab-quvvatlaydigan resurslar, profillar, operatsiyalar va qidiruv parametrlarini tavsiflovchi CapabilityStatement qo'shildi.

IG ga IP bayonotlari, globals jadvali va dependency jadvali qo'shildi.

NamingSystem larning kanonik URL manzillari endi `https://terminology.dhp.uz` bilan boshlanadi.

Observation Interpretation kod tizimi to'ldiruvchisi nomi tuzatildi.

UI lokalizatsiyasi uchun o'zbek tilida yaratilgan CodeSystemlar va THO to'ldiruvchilari bilan ko'p tillilik terminologiya strategiyasi qo'shildi.

ConceptMaplar va ularning tegishli strategiyasidan foydalanish hujjatlashtirildi.

Bo'lim nomlari (slice names) eng yaxshi amaliyot nomlash konvensiyasi - lowerCamelCase ga mos ravishda yangilandi.

Patient, Practitioner va RelatedPerson resurslarida xalqaro manzillarni qo'llab-quvvatlash qo'shildi.

O'zbekcha tarjimalar qo'shildi.

### Versiya 0.3.0

Encounter, EpisodeOfCare va Observation uchun UZ Core profillari qo'shildi.

Kanonik URL manzillari conformance resurslari uchun `https://dhp.uz/fhir/core`, terminologiya resurslari uchun esa `https://terminology.dhp.uz/fhir/core` tarzida o'zgartirildi, bu esa kelajakdagi IG'lar uchun `https://dhp.uz/fhir/<ig>` namunaviy shaklini qo'llash imkonini beradi.

Ruscha tarjimalar qo'shildi.

### Versiya 0.2.0

Bu IG'ning birinchi, ishlab chiqish jarayonidagi versiyasi bo'lib, barcha resurslarning kanonik URL manzillarini yakuniy variantlariga yangilaydi.

#### Asosiy o'zgarishlar
AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance va Socioeconomic Observation uchun UZ Core profillari qo'shildi.

Profil, terminologiya resurslari va IG'ning kanonik URL manzillari vaqtinchalik `medcore.uz` domenidan rasmiy `dhp.uz` domeniga o'zgartirildi.

