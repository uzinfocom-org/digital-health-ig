### Ishlab chiqish jarayonida

(Hozircha o'zgarishlar yo'q)

### Versiya 0.5.0

O'zbekistonda ishlatiladigan panellar va analitlar uchun [laboratoriya kuzatuv kodlari](CodeSystem-observation-lab-research-codes-cs.html) qo'shildi.

[Hujjat identifikatori nomlar maydoni](identifiers.html#document-identifiers) (doc) identifikator tizimlariga qo'shildi.

#### Organization profili o'zgarishlari

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationType]` bo'limi endi HL7 xalqaro `organization-type` kodlar tizimi o'rniga [OrganizationTypeUZCS](CodeSystem-organization-types-uz-cs.html) dan foydalanadi. Masalan, `$organization-type-cs#prov` ni `organization-types-uz-cs` dagi tegishli kodga almashtirish kerak (masalan, `#I` "Boshqaruv boyicha taqsimlanishi"). To'g'ridan-to'g'ri moslik yo'q - har bir tashkilotni yangi tizimda (I-V kodlar) qayta tasniflash kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) asosida muassasalarni batafsil guruhlash uchun `type.coding[organizationGrouping]` bo'limi qo'shildi (masalan, `#104` "Ixtisoslashgan shifoxonalar", `#210` "Oilaviy poliklinika"). Dasturchilar ushbu yangi bo'limni to'ldirishlari kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationalServiceGroup]` va `type.coding[specialization]` kardinallik darajasi 0..1 dan 0..\* ga kengaytirildi. Endi bitta tashkilot uchun bir nechta xizmat guruhi va ixtisoslik kodlarini ko'rsatish mumkin.

[OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html) ga I_6 "Xorijiy sarmoyadorlar ishtirokidagi muassasalar" kodi qo'shildi. Dasturchilar tegishli tashkilotlar uchun `type.coding[subordinationGroup]` da ushbu kodni ishlatishlari kerak.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) ambulatoriya muassasalari (masalan, `#200` poliklinikalar), ta'lim muassasalari (`#300`), qon quyish markazlari (`#400`), sanitariya-epidemiologiya xizmatlari (`#500`) va boshqalar uchun yangi kodlar bilan kengaytirildi. Ba'zi mavjud tarjimalar tuzatildi (masalan, `#116` "Medical center center" dan "Medical center" ga tuzatildi). Dasturchilar o'z muassasalari uchun aniqroq kod mavjudligini tekshirishlari kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga tashkilot xizmat ko'rsatadigan ma'muriy hududni ko'rsatish uchun [xizmat hududi kengaytmasi](StructureDefinition-coverage-area.html) qo'shildi, [StateVS](ValueSet-state-vs.html) ga bog'langan. SSV hudud kodlarini StateCS ga [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) yordamida o'zgartirish mumkin.

MIS2 JSON formatidagi tashkilotni ConceptMap yordamida UZ Core Organization resursiga o'girishni ko'rsatuvchi [misol](Organization-xonobod-medical-association.html) qo'shildi.

MIS2 kodlarini UZ Core terminologiyasiga tarjima qilish uchun ConceptMap qo'shildi: [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) `type.coding[organizationalStructure]` uchun, [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) `type.coding[subordinationGroup]` uchun va [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) `type.coding[organizationalServiceGroup]` uchun. MIS2 dan tarjima qilayotgan dasturchilar tegishli bo'limlarni to'ldirish uchun ushbu xaritalardan foydalanishlari kerak.

[UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) profili tegishli CodeSystem va ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)) hamda lokal allergen va reaksiya ko‘rinishi kodlarini SNOMED CT ga tarjima qiluvchi ConceptMap bilan qo‘shildi. Allergiyalarni qayd qilayotgan dasturchilar ushbu profildan foydalanishlari kerak.

`UZCoreClinicalCondition` olib tashlandi va [UZ Core Condition](StructureDefinition-uz-core-condition.html) bilan birlashtirildi. Dasturchilar `uz-core-clinical-condition` ga bo‘lgan havolalarni `uz-core-condition` ga yangilashlari kerak. `Condition.code` uchun endi ICD-10 va SNOMED CT kodlarini birlashtiruvchi yangi [ConditionCodeVS](ValueSet-condition-code-vs.html) qiymatlar to‘plami (preferred bog‘lanish) ishlatiladi.

[Bemor qoniqishi so‘rovnomasi](Questionnaire-PatientSatisfactionQuestionnaire.html) da `answerOption` kodlari Questionnaire’ning o‘z URL’idan alohida [PatientSatisfactionCS](CodeSystem-patient-satisfaction-cs.html) kod tizimiga ko‘chirildi. Ushbu so‘rovnoma uchun QuestionnaireResponse javoblarini to‘ldiruvchi dasturchilar Coding `system` qiymatini `https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire` dan `https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs` ga o‘zgartirishlari kerak. Kodlarning o‘zi o‘zgarmagan.

[UZ Core Observation](StructureDefinition-uz-core-observation.html) da [ObservationCodesVS](ValueSet-observation-codes-vs.html) bog‘lanishi required dan **preferred** ga o‘zgartirildi va endi LOINC va lokal kodlar bilan bir qatorda SNOMED CT kodlarini ham o‘z ichiga oladi. Dasturchilar mos joylarda SNOMED CT kodlaridan foydalanishlari mumkin.

[UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) da `category.coding` va `type.coding` endi slayslarga bo‘linib, [LabServiceCategoriesVS](ValueSet-lab-service-categories-vs.html) ga bog‘langan yangi `labCategory` slaysini qo‘llab-quvvatlaydi (kodlar [LabCategoriesCS](CodeSystem-lab-categories-cs.html) dan). Laboratoriya xizmatlari mavjud `dhpCategory` slaysiga qo‘shimcha ravishda `labCategory` slaysini ham to‘ldirishi kerak.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) da [MahallaVS](ValueSet-mahalla-vs.html) (`address.city` uchun ishlatiladi) yangi [Mahalla COATO](CodeSystem-mahalla-coato-cs.html) kod tizimidagi kodlar bilan kengaytirildi va mavjud MahallaCS kodlariga qo‘shimcha ravishda 2 600 dan ortiq COATO asosidagi mahalla identifikatorlarini taqdim etadi.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) da [identifikatorlar hujjati](identifiers.html) milliy identifikator **JSHSHIR** (Jismoniy shaxsning shaxsiy identifikatsiya raqami) ekanligini aniqlashtirish uchun yangilandi, shuningdek `medicalRecordTemp` va `unknownPatient` identifikatorlaridan foydalanish o‘rtasidagi farq aniqlashtirildi.

Dasturchilar uchun namuna sifatida [tranzaksion bandl misoli](Bundle-example-transaction-bundle.html) va [erkin matnli malaka bilan PractitionerRole misoli](PractitionerRole-example-practitionerrole-freetext.html) qo‘shildi.

[UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) dagi **BenefitCS** kod tizimi yangi kodlar bilan kengaytirildi (masalan, `#regis0004.00020`, `#regis0004.00021`, `#regis0004.00022`, `#regis0004.00023`).

[UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) dagi **EducationCS** kod tizimiga yangi kodlar qo‘shildi (masalan, `#regis0005.00011` "Ma’lumoti yo‘q", `#regis0005.00012` "Ixtisoslik").

[UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) dagi **SocialStatusCS** kod tizimi kengaytirildi (masalan, `#regis0010.00010` "O‘quvchi", `#regis0010.00011` "Imtiyoz toifasi mavjud").

[DisabilityCS](CodeSystem-disability-cs.html) kod tizimiga yangi termin qo‘shildi (`#regis0011.00005` "Nogironlik belgilanmagan").

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) uchun yangi [AdmitSourceLocalCS](CodeSystem-admit-source-local-cs.html) kod tizimi yaratildi va unga yangi kodlar qo‘shildi (masalan, `#mserv-0006-00001` "Yo‘llanmasiz", `#mserv-0006-00002` "Dispanser", `#mserv-0006-00003` "Tuman psixiatriyasi", `#mserv-0006-00004` "Tez tibbiy yordam", `#mserv-0006-00005` "Sud ajrimi asosida", `#mserv-0006-00006` "Ekspertizaga").

Qo‘shimcha ravishda, [AdmitSourceHomeCS](CodeSystem-admit-source-home-cs.html) dagi kodlarni o‘z ichiga oluvchi yangi [AdmissionOriginVS](ValueSet-admission-origin-vs.html) qiymatlar to‘plami yaratildi.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) uchun [EncounterPriorityCS](CodeSystem-encounter-priority-cs.html) HL7 `v3-ActPriority` asosidagi yetishmayotgan kodlar bilan to‘ldirildi (masalan, `#A`, `#CR`, `#EL`, `#R`, `#RR`, `#S`, `#T`, `#UD`, `#UR`), shuningdek lokal ustuvorlik kodlari (masalan, `#transferred`, `#mandatory-treatment`, `#involuntary-hospitalization`) bilan yangi [EncounterPriorityLocalCS](CodeSystem-encounter-local-priority-cs.html) kod tizimi yaratildi.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) uchun qayta yotqizish holatlari uchun yangi [ReAdmissionLocalCS](CodeSystem-re-admission-local-cs.html) kod tizimi yaratildi (masalan, `#first-time`, `#repeat-current-year`).

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) uchun [EncounterDischargeDispositionHomeCS](CodeSystem-encounter-discharge-disposition-home-cs.html) kod tizimi kengaytirildi (masalan, `#mserv-0004-00004` "Chiqarildi", `#mserv-0004-00002` "Vafot etdi", `#mserv-0004-00005` "IIV muassasasiga o‘tkazildi", `#mserv-0004-00006` "Muruvvat uyiga o‘tkazildi").

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) uchun bemor holatini ifodalovchi yangi [EncounterLocalSubjectStatusCS](CodeSystem-encounter-local-subject-status-cs.html) kod tizimi yaratildi (masalan, `#loc-cs-001` "Tuzaldi", `#loc-cs-002` "Ijobiy o‘zgarish bilan", `#loc-cs-003` "O‘zgarishsiz", `#loc-cs-004` "Og‘irlashdi").

Coverage uchun UZCoreda Profile mavjud bo'lmasa ham, ssv formlardan biriga zarurligi sababli yangi **CoverageTypeCS** kod tizimi yaratildi va unga DTSJ va ijtimoiy jamg‘armalar orqali moliyalashtirish turlari qo‘shildi (masalan, `#dtsj-treated-case`, `#dtsj-privileged-category`, `#saxovat-komak-fund`, `#womens-notebook-fund`, `#youth-notebook-fund`).



### Versiya 0.4.0

[UZ Core Goal](StructureDefinition-uz-core-goal.html) profili tegishli kod tizimlari va qiymatlar to'plamlari bilan qo'shildi.

[UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) va [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) profillari tarjima qilingan javob variantlari uchun ko'p tillilik qo'llab-quvvatlashi bilan qo'shildi.

[Pensiya guvohnomasi identifikator turi](NamingSystem-patient-id-uzb-pension-number.html) (Номер пенсионного удостоверения) [Patient](StructureDefinition-uz-core-patient.html) resursida NamingSystem qo'llab-quvvatlashi bilan qo'shildi.

[Modellashtirish ko'rsatmalari](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md)da bog'lash kuchi (binding strength) talablari aniqlashtirildi.

DHP Connectathon 1 dan olingan fikr-mulohazalar qo'llandi.

Profil havolalari imkon qadar asosiy FHIR resurslari o'rniga UZ Core profillaridan foydalanish uchun tuzatildi.

[Bemor](StructureDefinition-uz-core-patient.html) fuqaroligi endi maxsus MVD kodlari o'rniga ISO 3166-1 alpha-2 kodlaridan foydalanadi.

[OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) kod izchilligi tuzatildi (101 → 101.0).

[OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html) dagi I_3 uchun ruscha tarjima tuzatildi.

[NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html) va [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) uchun tavsiflar ularning maqsadi va ierarxiyasini tushuntirish uchun aniqlashtirildi.

Bemor boshqaruvchi tashkilotga biriktirilgan vaqtni kuzatish uchun [boshqaruvchi tashkilot biriktirish kengaytmasi](StructureDefinition-managing-organization-attachment.html) qo'shildi.

MVD mamlakat kodlarini ISO 3166-1 alpha-2 kodlariga tarjima qilish uchun [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) qo'shildi.

Mamlakat kodi qo'llab-quvvatlashi bilan chet el pasport raqamlari va haydovchilik guvohnomalari uchun aniq bo'limlar (slices) qo'shildi.

[EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) tavsifi yangilandi.

PINFL aniqligi va alpha-2 mamlakat kodlariga o'tishni o'z ichiga olgan [identifikator hujjatlari](identifiers.html) yaxshilandi.

[Hayotiy ko'rsatkichlar bo'limi](vital-signs.html) ko'rsatmalar va misollar bilan qo'shildi.

MultilingualName qoidalar to'plamida qoraqalpoq tili (kaa) qo'llab-quvvatlashi qo'shildi, bu [Organization](StructureDefinition-uz-core-organization.html) va [Location](StructureDefinition-uz-core-location.html) profillarida ko'p tilli nomlar uchun ishlatiladi.

Intellektual mulk egasi Sog'liqni saqlash vazirligiga yangilandi.

[UZ Core Clinical Condition](StructureDefinition-uz-core-clinical-condition.html) klinik (ICD-10) va ICD-10 ga asoslanmagan holatlarni farqlash uchun qo'shildi.

Bemor nogironlik holati [Patient](StructureDefinition-uz-core-patient.html) resursidan (FHIR standart kengaytmasidan foydalangan holda) [Condition](StructureDefinition-uz-core-condition.html) resursiga ko'chirildi.

NamingSystem identifikatorlaridan pastki chiziqlar olib tashlandi.

DHP qo'llab-quvvatlaydigan resurslar, profillar, operatsiyalar va qidiruv parametrlarini tavsiflovchi [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) qo'shildi.

IG ga IP bayonotlari, globals jadvali va dependency jadvali qo'shildi.

NamingSystem larning kanonik URL manzillari endi `https://terminology.dhp.uz` bilan boshlanadi.

[Observation Interpretation](CodeSystem-observation-interpretation-cs.html) kod tizimi to'ldiruvchisi nomi tuzatildi.

UI lokalizatsiyasi uchun o'zbek tilida yaratilgan CodeSystemlar va THO to'ldiruvchilari bilan ko'p tillilik terminologiya strategiyasi qo'shildi.

ConceptMaplar va ularning tegishli strategiyasidan foydalanish hujjatlashtirildi.

Bo'lim nomlari (slice names) eng yaxshi amaliyot nomlash konvensiyasi - lowerCamelCase ga mos ravishda yangilandi.

[Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html) va [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) resurslarida xalqaro manzillarni qo'llab-quvvatlash qo'shildi.

O'zbekcha tarjimalar qo'shildi.

### Versiya 0.3.0

[Encounter](StructureDefinition-uz-core-encounter.html), [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) va [Observation](StructureDefinition-uz-core-observation.html) uchun UZ Core profillari qo'shildi.

Kanonik URL manzillari conformance resurslari uchun `https://dhp.uz/fhir/core`, terminologiya resurslari uchun esa `https://terminology.dhp.uz/fhir/core` tarzida o'zgartirildi, bu esa kelajakdagi IG'lar uchun `https://dhp.uz/fhir/<ig>` namunaviy shaklini qo'llash imkonini beradi.

Ruscha tarjimalar qo'shildi.

### Versiya 0.2.0

Bu IG'ning birinchi, ishlab chiqish jarayonidagi versiyasi bo'lib, barcha resurslarning kanonik URL manzillarini yakuniy variantlariga yangilaydi.

#### Asosiy o'zgarishlar
AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance va Socioeconomic Observation uchun UZ Core profillari qo'shildi.

Profil, terminologiya resurslari va IG'ning kanonik URL manzillari vaqtinchalik `medcore.uz` domenidan rasmiy `dhp.uz` domeniga o'zgartirildi.
