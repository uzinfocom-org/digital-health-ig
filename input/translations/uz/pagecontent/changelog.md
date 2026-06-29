### Ishlab chiqish jarayonida

#### Yangi profillar

Laboratoriya va diagnostika hisobotlari uchun [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) profili qo'shildi, [xizmat toifasi](ValueSet-diagnostic-report-service-category-vs.html), [holat](ValueSet-diagnostic-report-status-vs.html) va [hisobot turlari](ValueSet-lab-report-types-vs.html) uchun tegishli terminologiya bilan birga.

Laboratoriya tahlillari va panellarini buyurtma qilish uchun [UZ Core ServiceRequest Laboratory](StructureDefinition-uz-core-servicerequest-laboratory.html) profili qo'shildi, jumladan [to'lov turi](ValueSet-payment-type-vs.html) va [so'rov holati](ValueSet-service-request-status-vs.html) terminologiyasi bilan.

Klinik namunalar uchun [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) profili qo'shildi, [yig'ish usuli](ValueSet-specimen-collection-method-vs.html), [namuna turi](ValueSet-specimen-types-vs.html), [rol](ValueSet-specimen-role-vs.html) va [holat](ValueSet-specimen-status-vs.html) terminologiyasi bilan birga. U laboratoriya ServiceRequest va DiagnosticReport profillaridan havola qilinadi.

Tizimlar laboratoriya tahlillari ta'riflarini - ruxsat etilgan o'lchov birliklari, o'lchash usullari va jinsga xos referens diapazonlarini - Bemor portali va integratsiyalashayotgan tizimlar uchun e'lon qila olishi maqsadida [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) profili qo'shildi.

Emlashlarni qayd etish uchun [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) profili qo'shildi, [maqsadli kasallik](ValueSet-target-disease-vs.html), [yuborish joyi](ValueSet-immunization-site-vs.html), [yo'l](ValueSet-route-code-vs.html) va [moliyalashtirish manbasi](ValueSet-funding-source-vs.html) terminologiyasi bilan birga, shuningdek [milliy DMED vaktsina kodlarini CVX ga](ConceptMap-dmed-vaccine-to-cvx-cm.html) tarjima qiluvchi ConceptMap bilan.

Emlash bashoratlari uchun [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) profili qo'shildi, [bashorat holati](ValueSet-recommendation-forecast-status-vs.html), [sana mezoni](ValueSet-recommendation-date-criterion-vs.html) va [sabab](ValueSet-recommendation-reason-vs.html) terminologiyasi bilan.

Milliy emlash jadvallari uchun [UZ Core Immunization PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) profili qo'shildi.

Muayyan bemordan mustaqil ravishda qayta foydalaniladigan klinik faoliyatlarni (protseduralar, tahlillar, dori protokollari) belgilash uchun [UZ Core ActivityDefinition](StructureDefinition-uz-core-activity-definition.html) profili qo'shildi.

Nojo'ya hodisalar haqida xabar berish uchun [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) profili qo'shildi, [haqiqiylik](ValueSet-adverse-event-actuality-vs.html), [jiddiylik](ValueSet-adverse-event-seriousness-vs.html), [natija](ValueSet-adverse-event-outcome-vs.html) va [holat](ValueSet-adverse-event-status-vs.html) terminologiyasi bilan.

O'zbekistonga xos dori identifikatorlari (markirovka ID, ro'yxatdan o'tkazish guvohnomasi, GTIN, quti agregatsiya ID, milliy mahsulot va xizmatlar tasnifi kodi) va ATC asosidagi [tasnif](ValueSet-medication-classification-vs.html) hamda [dori shakli](ValueSet-medication-doseform-vs.html) terminologiyasi bilan [UZ Core Medication](StructureDefinition-uz-core-medication.html) profili qo'shildi.

[UZ Core Procedure](StructureDefinition-uz-core-procedure.html) profili qo'shildi, [protsedura holati](ValueSet-procedure-event-status-vs.html), SNOMED CT asosidagi [protsedura kodlari](ValueSet-procedure-code-vs.html) va [natija](ValueSet-procedure-outcome-vs.html) terminologiyasi bilan birga, shuningdek qoplama hisobotlari uchun namuna sifatida [SNOMED CT dan ICHI ga](ConceptMap-snomed-to-ichi-procedures.html) ConceptMap bilan.

#### Terminologiya va bog'lanish o'zgarishlari

[Laboratoriya usuli kodlari](CodeSystem-lab-methods-cs.html) qo'shildi, laboratoriya [panel va analit kodlari](ConceptMap-lab-pan-codes-to-loinc.html) ni LOINC ga va [usul kodlari](ConceptMap-lab-methods-to-loinc.html) ni SNOMED CT ga moslashtiruvchi ConceptMaplar bilan. Usul kodlari [laboratoriya usullari qiymatlar to'plami](ValueSet-lab-method-vs.html) sifatida taqdim etilgan va [UZ Core Observation](StructureDefinition-uz-core-observation.html) profilining `method` elementiga bog'langan.

[UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) dagi `code` endi [lavozim va kasb ValueSet](ValueSet-position-and-profession-vs.html) ga (required) bog'langan (ilgari - shifokor roli qiymatlar to'plami); `specialty` esa avvalgidek [kasb ixtisosligi ValueSet](ValueSet-profession-specialization-vs.html) ga (required) bog'langan. Dasturchilar shifokor rollarini ushbu qiymatlar to'plamlaridagi kodlar bilan to'ldirishlari shart.

Laboratoriya xizmatlarida natija kutilayotgan vaqtni ko'rsatish uchun [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) ga [natija kutish vaqti kengaytmasi](StructureDefinition-turnaround-time.html) qo'shildi. Ushbu profildagi toifa va tur bog'lanishlari ham required dan extensible ga yumshatildi, shu sababli dasturchilar lokal kodlar qo'sha olishlari mumkin.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) va [UZ Core EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) dagi `type`, hamda [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) dagi `signature.type` endi slayslarga bo'lingan, shu sababli milliy kod talab qilinadi, qo'shimcha kodlashlar esa ruxsat etilgan bo'lib qoladi.

Bir nechta profillardagi havola maqsadlari endi mavjud bo'lgan joylarda UZ Core profillariga ishora qiladi - masalan, [UZ Core Observation](StructureDefinition-uz-core-observation.html) dagi `specimen` UZ Core Specimen ga va `partOf` UZ Core Procedure/Immunization ga, [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) dagi `administeredProduct` UZ Core Medication ga, hamda [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) dagi `suspectEntity` UZ Core Medication ga. Havola qilingan resurslar endi tegishli UZ Core profiliga mos kelishi shart.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) dagi `reason` va [UZ Core Observation](StructureDefinition-uz-core-observation.html) dagi `basedOn` endi ImmunizationRecommendation ga havola qilishi mumkin.

Identifikator-domeni va EpisodeOfCare qiymatlar to'plamlarining (shuningdek chet el pasporti va haydovchilik guvohnomasi qiymatlar to'plamlarining) kanonik URL manzillari `https://dhp.uz/fhir/core/ValueSet/...` dan `https://terminology.dhp.uz/fhir/core/ValueSet/...` ga ko'chirildi. Ushbu kanonik manzillarga to'g'ridan-to'g'ri havola qiluvchi dasturchilar ularni yangilashlari shart.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi [fuqarolik qiymatlar to'plami](ValueSet-nationality-vs.html) asosidagi [fuqarolik CodeSystem'i](CodeSystem-nationality-cs.html) yangilangan dmp.uz fuqarolik ro'yxati asosida qayta qurildi: u 306 tadan 512 taga oshdi, nomlar katta harflarga standartlashtirildi, ruscha va inglizcha tarjimalar qo'shildi, kodlar esa qayta tayinlandi - bitta kod endi boshqa millatni anglatishi mumkin (masalan, `#1` "Ruslar" dan "ADIGEY" ga o'zgardi). Bu buzuvchi o'zgarish: oldingi versiyada saqlangan fuqarolik kodlari qayta moslashtirilishi kerak.

[OrganizationalSpecializationCS](CodeSystem-organizational-specialization-cs.html) dagi inglizcha ko'rsatuv nomlari tuzatildi (izchil katta-kichik harflar; "Children" "Pediatric" ga o'zgartirildi). Kodlar o'zgarmagan.

Milliy DMED tizimidan ma'lumotlarni qabul qilish uchun DMED terminologik ko'priklari qo'shildi: [mamlakat kodlari](ConceptMap-dmed-country-to-dhp-country-cm.html) ISO 3166 ga, [o'lchov birliklari](ConceptMap-dmed-measure-unit-to-dhp-cm.html) UCUM ga moslashtirildi, DMED kasblari esa ham [SNOMED CT](ConceptMap-dmed-position-to-snomed-cm.html) ga, ham [DHP lavozimlari](ConceptMap-dmed-position-to-dhp-position-cm.html) ga moslashtirildi.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi `gender` endi ruscha va o'zbekcha tarjimalari bilan yangi [ma'muriy jins ValueSet](ValueSet-administrative-gender-vs.html) ga (required) bog'langan.

#### Tashkilot va identifikatorlar

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga Davlat sog'liqni saqlash sug'urtasi jamg'armasi (DTSJ) va Sog'liqni saqlash vazirligi (Minzdrav) identifikator slayslari qo'shildi. DTSJ tomonidan tayinlangan provayder kodlari `PRN` (provayder raqami) sifatida tiplangan. Yangi [to'lovchini identifikatsiya qilish](payor-identification.html) sahifasi to'lovchilar va ular bilan shartnoma tuzgan provayderlar qanday identifikatsiya qilinishini tushuntiradi.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) va [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) da lokal pasport identifikatori endi `use` ni `official` ga qat'iy belgilamaydi: joriy ID karta uchun `official`, bir xil tizimni ulashadigan eskirgan qog'oz pasport uchun esa `old` dan foydalaning. [Identifikatorlar](identifiers.html) sahifasiga qarang.

#### Hujjatlashtirish

Joriy etish bo'yicha ko'rsatma sahifalari - [ushbu qo'llanmani qanday o'qish kerak](how-to-read.html), [umumiy ko'rsatmalar](general-guidance.html) va [Must Support](must-support.html) - hamda [laboratoriya](workflow-lab.html), [emlash](workflow-immunization.html), [yo'naltirish](workflow-referral.html), [bemor yo'li](workflow-patient-journey.html) va [retsept](workflow-prescription.html) jarayonlari uchun to'liq [ish jarayoni ko'rsatmalari](workflows.html) qo'shildi. Endi har bir profilda matnli kirish va izohlar bo'limlari ham mavjud.

Buyruq qatori validatori va validator.fhir.org yordamida [resurslarni UZ Core ga nisbatan tekshirish bo'yicha ko'rsatmalar](api-access.html#validation) qo'shildi.

[API kirishi](api-access.html) ko'rsatmalari yangilandi: hozircha playgroundda faqat ICD-10 va HL7 kod tizimlari validatsiyadan o'tadi, frontend mijozlar uchun PKCE majburiy, va autentifikatsiya tafsilotlari endi tashqi SSO hujjatlariga havola qiladi.

Services sahifasi [Components](components.html) ga o'zgartirildi va komponent tavsiflari hamda ruscha va o'zbekcha tarjimalar bilan kengaytirildi.

### Versiya 0.5.0

O'zbekistonda ishlatiladigan panellar va analitlar uchun [laboratoriya kuzatuv kodlari](CodeSystem-lab-pan-cs.html) qo'shildi.

[Hujjat identifikatori nomlar maydoni](identifiers.html#document-identifiers) (doc) identifikator tizimlariga qo'shildi.

#### Organization profili o'zgarishlari

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationType]` bo'limi endi HL7 xalqaro `organization-type` kodlar tizimi o'rniga OrganizationTypeUZCS dan foydalanadi. Masalan, `$organization-type-cs#prov` ni `organization-types-uz-cs` dagi tegishli kodga almashtirish kerak (masalan, `#I` "Boshqaruv boyicha taqsimlanishi"). To'g'ridan-to'g'ri moslik yo'q - har bir tashkilotni yangi tizimda (I-V kodlar) qayta tasniflash kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) asosida muassasalarni batafsil guruhlash uchun `type.coding[organizationGrouping]` bo'limi qo'shildi (masalan, `#104` "Ixtisoslashgan shifoxonalar", `#210` "Oilaviy poliklinika"). Dasturchilar ushbu yangi bo'limni to'ldirishlari kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationalServiceGroup]` va `type.coding[specialization]` kardinallik darajasi 0..1 dan 0..\* ga kengaytirildi. Endi bitta tashkilot uchun bir nechta xizmat guruhi va ixtisoslik kodlarini ko'rsatish mumkin.

[OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html) ga I_6 "Xorijiy sarmoyadorlar ishtirokidagi muassasalar" kodi qo'shildi. Dasturchilar tegishli tashkilotlar uchun `type.coding[subordinationGroup]` da ushbu kodni ishlatishlari kerak.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) ambulatoriya muassasalari (masalan, `#200` poliklinikalar), ta'lim muassasalari (`#300`), qon quyish markazlari (`#400`), sanitariya-epidemiologiya xizmatlari (`#500`) va boshqalar uchun yangi kodlar bilan kengaytirildi. Ba'zi mavjud tarjimalar tuzatildi (masalan, `#116` "Medical center center" dan "Medical center" ga tuzatildi). Dasturchilar o'z muassasalari uchun aniqroq kod mavjudligini tekshirishlari kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga tashkilot xizmat ko'rsatadigan ma'muriy hududni ko'rsatish uchun [xizmat hududi kengaytmasi](StructureDefinition-coverage-area.html) qo'shildi, [StateVS](ValueSet-state-vs.html) ga bog'langan. SSV hudud kodlarini StateCS ga [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) yordamida o'zgartirish mumkin.

MIS2 JSON formatidagi tashkilotni ConceptMap yordamida UZ Core Organization resursiga o'girishni ko'rsatuvchi [misol](Organization-xonobod-medical-association.html) qo'shildi.

MIS2 kodlarini UZ Core terminologiyasiga tarjima qilish uchun ConceptMap qo'shildi: [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) `type.coding[organizationalStructure]` uchun, [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) `type.coding[subordinationGroup]` uchun va [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) `type.coding[organizationalServiceGroup]` uchun. MIS2 dan tarjima qilayotgan dasturchilar tegishli bo'limlarni to'ldirish uchun ushbu xaritalardan foydalanishlari kerak.

[UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) profili tegishli CodeSystem va ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)) hamda lokal allergen va reaksiya ko‘rinishi kodlarini SNOMED CT ga tarjima qiluvchi ConceptMap bilan qo‘shildi.

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

UZ Core Clinical Condition klinik (ICD-10) va ICD-10 ga asoslanmagan holatlarni farqlash uchun qo'shildi.

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
