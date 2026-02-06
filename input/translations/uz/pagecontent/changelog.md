### Ishlab chiqish jarayonida

O'zbekistonda ishlatiladigan panellar va analitlar uchun [laboratoriya kuzatuv kodlari](CodeSystem-observation-lab-research-codes-cs.html) qo'shildi.

[Hujjat identifikatori nomlar maydoni](identifiers.html#document-identifiers) (doc) identifikator tizimlariga qo'shildi.

### Versiya 0.4.0

> Eslatma: Ushbu bo'lim mashina tarjimasi bo'lib, hali sifat nazoratidan o'tmagan.

[UZ Core Goal](StructureDefinition-UZCoreGoal.html) profili tegishli kod tizimlari va qiymatlar to'plamlari bilan qo'shildi.

[UZ Core Questionnaire](StructureDefinition-UZCoreQuestionnaire.html) va [QuestionnaireResponse](StructureDefinition-UZCoreQuestionnaireResponse.html) profillari tarjima qilingan javob variantlari uchun ko'p tillilik qo'llab-quvvatlashi bilan qo'shildi.

[Pensiya guvohnomasi identifikator turi](NamingSystem-patient-id-uzb-pension-number.html) (Номер пенсионного удостоверения) [Patient](StructureDefinition-UZCorePatient.html) resursida NamingSystem qo'llab-quvvatlashi bilan qo'shildi.

[Modellashtirish ko'rsatmalari](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md)da bog'lash kuchi (binding strength) talablari aniqlashtirildi.

DHP Connectathon 1 dan olingan fikr-mulohazalar qo'llandi.

Profil havolalari imkon qadar asosiy FHIR resurslari o'rniga UZ Core profillaridan foydalanish uchun tuzatildi.

[Bemor](StructureDefinition-UZCorePatient.html) fuqaroligi endi maxsus MVD kodlari o'rniga ISO 3166-1 alpha-2 kodlaridan foydalanadi.

[OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) kod izchilligi tuzatildi (101 → 101.0).

[OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html) dagi I_3 uchun ruscha tarjima tuzatildi.

[NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html) va [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) uchun tavsiflar ularning maqsadi va ierarxiyasini tushuntirish uchun aniqlashtirildi.

Bemor boshqaruvchi tashkilotga biriktirilgan vaqtni kuzatish uchun [boshqaruvchi tashkilot biriktirish kengaytmasi](StructureDefinition-ManagingOrganizationAttachment.html) qo'shildi.

MVD mamlakat kodlarini ISO 3166-1 alpha-2 kodlariga tarjima qilish uchun [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) qo'shildi.

Mamlakat kodi qo'llab-quvvatlashi bilan chet el pasport raqamlari va haydovchilik guvohnomalari uchun aniq bo'limlar (slices) qo'shildi.

[EpisodeOfCare](StructureDefinition-UZCoreEpisodeOfCare.html) tavsifi yangilandi.

PINFL aniqligi va alpha-2 mamlakat kodlariga o'tishni o'z ichiga olgan [identifikator hujjatlari](identifiers.html) yaxshilandi.

[Hayotiy ko'rsatkichlar bo'limi](vital-signs.html) ko'rsatmalar va misollar bilan qo'shildi.

MultilingualName qoidalar to'plamida qoraqalpoq tili (kaa) qo'llab-quvvatlashi qo'shildi, bu [Organization](StructureDefinition-UZCoreOrganization.html) va [Location](StructureDefinition-UZCoreLocation.html) profillarida ko'p tilli nomlar uchun ishlatiladi.

Intellektual mulk egasi Sog'liqni saqlash vazirligiga yangilandi.

[UZ Core Clinical Condition](StructureDefinition-UZCoreClinicalCondition.html) klinik (ICD-10) va ICD-10 ga asoslanmagan holatlarni farqlash uchun qo'shildi.

Bemor nogironlik holati [Patient](StructureDefinition-UZCorePatient.html) resursidan (FHIR standart kengaytmasidan foydalangan holda) [Condition](StructureDefinition-UZCoreCondition.html) resursiga ko'chirildi.

NamingSystem identifikatorlaridan pastki chiziqlar olib tashlandi.

DHP qo'llab-quvvatlaydigan resurslar, profillar, operatsiyalar va qidiruv parametrlarini tavsiflovchi [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) qo'shildi.

IG ga IP bayonotlari, globals jadvali va dependency jadvali qo'shildi.

NamingSystem larning kanonik URL manzillari endi `https://terminology.dhp.uz` bilan boshlanadi.

[Observation Interpretation](CodeSystem-observation-interpretation-cs.html) kod tizimi to'ldiruvchisi nomi tuzatildi.

UI lokalizatsiyasi uchun o'zbek tilida yaratilgan CodeSystemlar va THO to'ldiruvchilari bilan ko'p tillilik terminologiya strategiyasi qo'shildi.

ConceptMaplar va ularning tegishli strategiyasidan foydalanish hujjatlashtirildi.

Bo'lim nomlari (slice names) eng yaxshi amaliyot nomlash konvensiyasi - lowerCamelCase ga mos ravishda yangilandi.

[Patient](StructureDefinition-UZCorePatient.html), [Practitioner](StructureDefinition-UZCorePractitioner.html) va [RelatedPerson](StructureDefinition-UZCoreRelatedPerson.html) resurslarida xalqaro manzillarni qo'llab-quvvatlash qo'shildi.

O'zbekcha tarjimalar qo'shildi.

### Versiya 0.3.0

[Encounter](StructureDefinition-UZCoreEncounter.html), [EpisodeOfCare](StructureDefinition-UZCoreEpisodeOfCare.html) va [Observation](StructureDefinition-UZCoreObservation.html) uchun UZ Core profillari qo'shildi.

Kanonik URL manzillari conformance resurslari uchun `https://dhp.uz/fhir/core`, terminologiya resurslari uchun esa `https://terminology.dhp.uz/fhir/core` tarzida o'zgartirildi, bu esa kelajakdagi IG'lar uchun `https://dhp.uz/fhir/<ig>` namunaviy shaklini qo'llash imkonini beradi.

Ruscha tarjimalar qo'shildi.

### Versiya 0.2.0

Bu IG'ning birinchi, ishlab chiqish jarayonidagi versiyasi bo'lib, barcha resurslarning kanonik URL manzillarini yakuniy variantlariga yangilaydi.

#### Asosiy o'zgarishlar
AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance va Socioeconomic Observation uchun UZ Core profillari qo'shildi.

Profil, terminologiya resurslari va IG'ning kanonik URL manzillari vaqtinchalik `medcore.uz` domenidan rasmiy `dhp.uz` domeniga o'zgartirildi.

