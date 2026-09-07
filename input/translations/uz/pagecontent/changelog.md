### Ishlab chiqilmoqda

#### Qo'shildi

[Onkologiya uchun kasalliklarning xalqaro tasnifi, 3-nashr, 2-qayta ko'rib chiqish (ICD-O-3.2)](CodeSystem-icd-o-3.html) to'liq holda qo'shildi - o'zbek va rus tilidagi belgilashlar bilan 330 ta topografiya va 1143 ta morfologiya kodi - uning HL7 Terminology kanonik URL manzili `http://terminology.hl7.org/CodeSystem/icd-o-3` ostida, shuningdek [topografiya](ValueSet-icd-o-3-topography-vs.html) va [morfologiya](ValueSet-icd-o-3-morphology-vs.html) kodlarini tanlovchi qiymatlar to'plamlari.

#### O'zgartirildi

[ICCC-3 kod tizimi](CodeSystem-iccc-3-cs.html) DHP kanonik URL manzili `https://terminology.dhp.uz/fhir/core/CodeSystem/iccc-3-cs` dan `http://terminology.hl7.org/CodeSystem/iccc-3` ga ko'chirildi - bu IARC tasnifi uchun HL7 Terminology kanonik URL manzili (uni HL7 Europe PanCareSurPass qo'llanmasi ishlatadi), chunki tasnif DHP ga emas, IARC ga tegishli. [Qiymatlar to'plami](ValueSet-iccc-3-vs.html) o'z URL manzilini saqlab qoladi.

#### Buzuvchi o'zgarishlar

UZ Core VaccinationActivityDefinition profili [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) deb qayta nomlandi va uning kanonik URL manzili `.../uz-core-vaccination-activity-definition` dan `.../uz-core-activitydefinition` ga o‘zgartirildi. Eski kanonik URL manzilidan foydalanayotgan tizimlarda tegishli havolani yangilash kerak.

#### Hujjatlashtirish

[Komponentlar](components.html) sahifasi endi Qon resurslarini boshqarish, Hamshiralik ishi va Ta'minot komponentlarini ularning Texnik loyihalari asosida tavsiflaydi. [Yo'llanmalar](components.html#yollanmalar) bo'limi yo'llanma tasniflanadigan yettita o'lcham bilan hamda yo'llanmani saqlovchi ServiceRequest va uning davlat sug'urtasi bo'yicha kelishish zanjirini boshqaruvchi Task resurslari o'rtasidagi taqsimot bilan to'ldirildi.

Ish jarayoni sahifasiga ega bo'lgan har bir komponent endi unga havola beradi, har bir ish jarayoni sahifasi esa o'zi tegishli bo'lgan komponentga qaytadan havola qiladi. Texnik loyihasi hali yozilayotgan Retseptlar bo'limi shu vaqt ichida [Elektron retsept va dori vositasini berish](workflow-prescription.html) jarayoniga ishora qiladi.

O'sha sahifadagi komponentlararo resurs arxitekturasi diagrammasi endi Qon resurslarini boshqarish va Hamshiralik ishi komponentlarini ham qamrab oladi hamda Yo'llanmalar komponentini bo'sh qoldirmasdan, unga tegishli ikkita profilni ko'rsatadi. Asosiy ma'lumotlarni boshqarish va Vaksinatsiyani boshqarish komponentlari bo'sh o'rin egallab turgan edi, endi esa o'z tarkibini sanaydi: MDM haqiqat manbai bo'lgan bemorlar, tashkilotlar, tibbiyot xodimlari, ularning rollari, tibbiy xizmatlar va joylashuvlar reyestrlari hamda immunizatsiya jarayoni asosidagi Immunization, ImmunizationRecommendation, PlanDefinition, ActivityDefinition, AdverseEvent, Encounter va Observation resurslari. U barcha komponentlar yopiq holda ochiladi: har bir kartada uning resurslari soni ko'rsatiladi, resurslar ro'yxati esa kartani bosganda yoki Enter tugmasi bilan ochiladi; ikkala komponent yopiq bo'lganda, ular orasidagi resurs aloqalari bitta chiziq bilan chiziladi. Barcha resurslarni bir vaqtda chizish ramkaga faqat 40% masshtabda sig'ar edi va resurs nomlarini o'qish qiyin edi - yopiq ko'rinish 80% masshtabda sig'adi. Legendada endi "ushbu qo'llanmada profillangan" o'rniga "ushbu qo'llanmada belgilangan" deb yoziladi, shu ma'noda MSM chop etadigan StructureDefinition, ValueSet, CodeSystem va CapabilityStatement belgilangan deb hisoblanadi: ular profillar emas, balki resurs nusxalari bo'lib, ilgari hali profillanmagan deb ko'rsatilar edi.

[Elektron yo'llanmaning hayot sikli](workflow-referral.html) sahifasida endi ServiceRequest va Task profillari nashr etilmagan deb aytilmaydi. O'shandan beri ularning ikkalasi ham [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) va [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) sifatida nashr etildi va ikkalasi ham hali eksperimental deb belgilangan.

[Laboratoriya tekshiruvini tayinlashdan natijani olishgacha](workflow-lab.html) jarayoni 0.8.0 da qayta nomlangan `uz-core-servicerequest-laboratory` ga havola qilar edi. Uning ikkita havolasi va misolidagi `meta.profile` endi [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga ishora qiladi.

[UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) endi ota-ona farzandiga qanday bog'lanishini ko'rsatadi - shunda tizim ota-onaga bola nomidan ish ko'rishga ruxsat bera oladi. Yangi misol - [example-mother-of-a-child](RelatedPerson-example-mother-of-a-child.html) - onani o'z farzandiga ([example-jasur](Patient-example-jasur.html)) nisbatan `MTH` munosabat kodi bilan qayd etadi, profil sahifasi esa tizim PINFL orqali ota-ona nomidan ish ko'ra oladigan bolalarni qanday topishini, nima uchun bolaning yoshi munosabatdan emas, balki uning `Patient.birthDate` idan o'qilishini va nima uchun munosabatning o'zi kirish huquqini bermasligini tushuntiradi.

### Versiya 0.8.0

#### Qo'shildi

Tibbiy hujjatlar va raqamli shakllar uchun asos sifatida [UZ Core Composition](StructureDefinition-uz-core-composition.html) profili qo'shildi - [hujjat turi](ValueSet-composition-type-vs.html) (470 ta milliy hujjat, jurnal va blank kodi), [kategoriya](ValueSet-composition-category-vs.html), [holat](ValueSet-composition-status-vs.html) va [tasdiqlash usuli](ValueSet-composition-att-mode-vs.html) terminologiyasi bilan, har bir bo'lim uchun esa [matn holati](ValueSet-composition-narrative-status-vs.html), [tartiblash](ValueSet-composition-list-order-vs.html) va [bo'lim bo'sh qolish sababi](ValueSet-composition-list-empty-reason-vs.html) terminologiyasi bilan.

Platforma taqdim etadigan operatsiyalar endi OperationDefinition sifatida nashr etilgan, shunda ishlab chiquvchilar ularning parametrlarini, xatoliklardagi xatti-harakatini va idempotentligini platforma hujjatlariga murojaat qilmasdan ko'ra oladi. [Person/$populate](OperationDefinition-person-populate.html) va [Patient/$populate](OperationDefinition-patient-populate.html) shaxsni tasdiqlovchi hujjat - PINFL (`NI`), pasport yoki ID-karta (`PPN`), tug'ilganlik haqidagi guvohnoma (`BCT`) - asosida Person yoki Patient yaratadi va uni davlat reyestrlaridagi ma'lumotlar bilan to'ldiradi; agar shu PINFL uchun resurs allaqachon mavjud bo'lsa, dublikat o'rniga mavjud resurs qaytariladi. [Organization/$practitioners](OperationDefinition-organization-practitioners.html), [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) va [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) tibbiyot xodimlari va ular ishlaydigan tashkilotlar o'rtasidagi bog'lanishlarni ochib beradi.

[UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) ga [holatlar tarixi kengaytmasi](StructureDefinition-plan-definition-status-history.html) qo'shildi: u ta'rif o'tgan har bir holatni, uning amal qilgan davrini, o'zgarish sababini va o'zgarishni kim kiritganini qayd etadi.

[UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) dagi `characteristic` endi `paymentType` slaysi bilan slayslanadi va u [to'lov turi](ValueSet-payment-type-vs.html) ga (required) bog'langan, shunda xizmat qanday moliyalashtirish shartlarida ko'rsatilishini bildira oladi. `category.coding` dagi `labCategory` slaysi endi qayta nomlangan laboratoriya ValueSet iga emas, [xizmat kategoriyalari](ValueSet-service-categories-vs.html) ga bog'langan (quyiga qarang).

Bolalar onkologik kasalliklarining xalqaro tasnifi, 3-nashri ([ICCC-3](CodeSystem-iccc-3-cs.html)) o'zining 140 ta diagnostik guruhi, kichik guruhi va bo'limi bilan qo'shildi, shuningdek ularni tanlaydigan [ValueSet](ValueSet-iccc-3-vs.html) - reyestr hisobotida bolalar onkologik kasalliklarini morfologiya bo'yicha tasniflash uchun. U integratsiya IG sida ishlatish uchun mo'ljallangan.

[Tashxis turlari CodeSystem](CodeSystem-diagnosis-type-cs.html) i 12 tadan 22 ta kodgacha o'sdi: `cancer-0003-0001` dan `cancer-0003-0010` gacha bo'lgan kodlar onkologik tashxis qaysi hujjat asosida hisobga olinganini bildiradi - kasallik tarixi (ambulator kartasi) yoki undan ko'chirma, onkologiya, gematologiya yoki boshqa tibbiyot muassasasining kasallik tarixi yoxud xabarnomasi, o'lim haqidagi guvohnoma, FHDYO organi. Ular [tashxis turi ValueSet i](ValueSet-diagnosis-type-vs.html) ga tushadi; u [UZ Core Condition](StructureDefinition-uz-core-condition.html) dagi [tashxis turi kengaytmasi](StructureDefinition-diagnosis-type.html) ga (required) bog'langan.

[Chiqarish holati CodeSystem](CodeSystem-encounter-discharge-disposition-home-cs.html) i 6 tadan 9 ta kodgacha o'sdi: `cancer-0001-0001` dan `cancer-0001-0003` gacha bo'lgan kodlar onkologik dispanser kuzatuvi qanday yakunlanganini qayd etadi - bemor tirik, tashxis tasdiqlanmadi yoki kuzatuv muddati tugagani sababli hisobdan chiqarilgan. Ular [chiqarish holati ValueSet i](ValueSet-encounter-discharge-disposition-vs.html) ga tushadi; u [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) dagi `admission.dischargeDisposition` ga (required) bog'langan.

Chaqaloq kuzatuvi qayd etilgan hayot kunining lokal kodlari bilan [kuzatuv kuni CodeSystem](CodeSystem-observation-day-cs.html) i qo'shildi - 097-shakldagi ichma-ich joylashgan Composition bo'limlarini farqlash uchun.

#### O'zgartirildi

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi `passportLocal` va `passportInternational` identifikator slayslari endi 0..1 emas, balki 0..* kardinallikka ega, shuning uchun bemorda ularning har biridan bittadan ko'p bo'lishi mumkin - masalan, amaldagi ID-karta bilan birga almashtirilgan qog'oz pasport, [identifikatorlar](identifiers.html) sahifasida tasvirlanganidek.

[UZ Core Claim](StructureDefinition-uz-core-claim.html) dagi `prescription` endi Must Support hisoblanadi - hisob-kitob qilinayotgan qoplama retsepti uchun. U MedicationRequest ga ishora qiladi va bu profil nashr etilgandan so'ng UZ Core MedicationRequest gacha toraytiriladi.

[UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) ning sarlavhasi va tavsifi endi resurs nomini ajratmaydi - "UZ Core Claim Response" o'rniga "UZ Core ClaimResponse". Uning kanonik URL i o'zgarmadi.

[UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) dagi `code` ga (required) bog'langan [lavozim va kasblar ValueSet i](ValueSet-position-and-profession-vs.html) endi v3 RoleClass kod tizimini to'liq, v3 RoleCode ning to'rtta kodini (`TPA`, `PAYOR`, `ORG` va `VALIDATOR`) va SNOMED CT ning nomma-nom sanab o'tilgan o'nta tushunchasini ham qabul qiladi, shunda DMEDPositionToDHPPositionCM ning har bir maqsadi bog'lanish bo'yicha yaroqli bo'ladi. Ular uchun o'zbekcha va ruscha belgilanishlarni yangi [DMED lavozimlarining SNOMED CT supplement i](CodeSystem-dmed-position-sct-cs.html) va [DMED rol sinflari supplement i](CodeSystem-dmed-role-class-cs.html) olib yuradi. Natijada [DMEDRoleCS](CodeSystem-dmed-role-cs.html) 5 tadan 43 ta kodga, [RoleCodeCS](CodeSystem-role-code-cs.html) esa 2 tadan 6 taga o'sdi.

[To'lov turlari CodeSystem](CodeSystem-payment-type-cs.html) idagi `paytype-0001-0004` kodining nomlanishi "Davlat tomonidan moliyalashtiriladigan" dan "Davlat tarifi" ga o'zgardi. Kodning o'zi o'zgarmadi, shuning uchun uni saqlaydigan tizimlar o'z yorliqlari hamon mos kelishini tekshirishi lozim. Qolgan to'rttasi tavsiflamaydigan to'lov shakllari uchun beshinchi kod `paytype-0001-0005` ("Boshqalar") qo'shildi.

[So'rov ustuvorligi](CodeSystem-request-priority-cs.html) va [so'rov niyati](CodeSystem-request-intent-cs.html) supplement laridagi `routine` va `order` belgilanishlari bittadan atamagacha qisqartirildi - "Обычный (плановый)" o'rniga "Обычный", "Назначение / Приказ" o'rniga "Назначение" - `urgent`, `asap` va `stat` esa o'zbekcha va ruscha belgilanishlarga ega bo'ldi.

#### Buzuvchi o'zgarishlar

UZ Core ServiceRequest Laboratory profili [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) deb qayta nomlandi va laboratoriya buyurtmalaridan har qanday so'raladigan xizmatga - muolajalar, diagnostik tekshiruvlar, konsultatsiyalar, skrining va statsionarga yotqizishga - umumlashtirildi. Bu buzuvchi o'zgarish: kanonik URL `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory` dan `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest` ga o'zgaradi va nusxalar `meta.profile` ni yangilashi kerak. `priority` endi Must Support hisoblanadi va [so'rov ustuvorligi](ValueSet-request-priority-vs.html) ga (required) bog'langan. Shu bilan birga `category` va `code` bog'lanishlari ham o'zgardi - quyiga qarang.

LabServiceCategoriesVS [ServiceRequestCategoriesVS](ValueSet-service-request-categories-vs.html) deb qayta nomlandi va har qanday turdagi xizmat so'rovlarini qamrab olishga kengaytirildi: nurli, diagnostik, jarrohlik, fizioterapevtik, davolash va ambulator muolajalar, konsultatsiya, statsionarga yotqizish, reabilitatsiya, telemeditsina, skrining va donorlik uchun SNOMED CT kategoriyalari qo'shildi, [supplement](CodeSystem-sr-sct-category-cs.html) esa ularning o'zbekcha va ruscha belgilanishlarini olib yuradi. Bu buzuvchi o'zgarish: kanonik URL `https://dhp.uz/fhir/core/ValueSet/lab-service-categories-vs` dan `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-categories-vs` ga o'zgaradi.

ServiceRequestLabCodesVS [ServiceRequestCodesVS](ValueSet-service-request-code-vs.html) bilan almashtirildi; u avvaldan olib yurgan LOINC buyurtma kodlari, milliy laboratoriya panel kodlari va SNOMED CT muolajalariga yangi [skrining va patronaj kodlarini](CodeSystem-screening-code-cs.html) qo'shadi - skrining so'rovnomalari va dasturlari uchun 20 ta kod, ular orasida yurak-qon tomir kasalliklari xavfi, qandli diabet, ko'krak bezi saratoni va bachadon bo'yni saratoni, shuningdek uy sharoitidagi patronaj xizmatlari. Bu buzuvchi o'zgarish: kanonik URL `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-labresearch-code-vs` dan `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs` ga o'zgaradi.

UZ Core Immunization PlanDefinition profili [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) deb qayta nomlandi, chunki u endi emlash jadvallari bilan bir qatorda toʻliq qon donatsiyasi va skrining jadvallarini ham qamrab oladi. Bu buzuvchi oʻzgarish: kanonik URL `https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition` dan `https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition` ga oʻzgaradi va nusxalar `meta.profile` ni yangilashi kerak.

Profil endi jadval turini bildiruvchi `focus` foydalanish kontekstini olib yuradi - `33879002` (faol immunizatsiya), `25179006` (toʻliq qon dozasini yigʻish) yoki `360156006` (skrining) - va cheklov ulardan aniq bittasini talab qiladi, shuning uchun kerakli turdagi jadval `GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002` soʻrovi bilan topiladi. Jadval kategoriyasi konteksti uchun [emlash kalendari turi](ValueSet-immunization-schedule-type-vs.html) bogʻlanishi endi extensible emas, balki required, bu slayslashni tekshirish imkonini beradi.

[UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) da `code` endi majburiy (1..1).

[UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html) dagi milliy identifikator slaysi endi `system` ni `https://dhp.uz/fhir/core/sid/pro/uz/argos` o'rniga PINFL tizimi `https://dhp.uz/fhir/core/sid/pid/uz/ni` sifatida belgilaydi. Bu slays allaqachon olib yurgan `NI` identifikator turiga va shu identifikator uchun [UZ Core Patient](StructureDefinition-uz-core-patient.html) hamda [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) da ishlatiladigan tizimga mos keladi.

[Qoplama turi CodeSystem](CodeSystem-coverage-type-cs.html) idagi barcha 13 ta kod mnemonik kodlardan boshqa milliy kod tizimlarida ishlatiladigan `covtp-0001-000NN` shabloniga o'tkazildi: `dtsj-treated-case` endi `covtp-0001-00001`, `moh-budget` - `covtp-0001-00008`, `self-pay` - `covtp-0001-00009` va hokazo, kodlar sanab o'tilgan tartibda. Nomlanishlar va ma'nolar o'zgarmadi. Bu buzuvchi o'zgarish: oldingi versiyada saqlangan qoplama turi kodlari qayta moslashtirilishi kerak.

DMEDPositionToSnomedCM ConceptMap i o'chirildi. Uning moslashtirishlari endi [DMEDPositionToDHPPositionCM](ConceptMap-dmed-position-to-dhp-position-cm.html) ichidagi guruhlardir; u bitta ConceptMap da DMED rol va kasb kodlarini milliy lavozimlarga, SNOMED CT ga, v3 RoleCode va v3 RoleClass ga moslashtiradi. `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-snomed-cm` ga murojaat qiluvchi ishlab chiquvchilar `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-dhp-position-cm` dan foydalanishi kerak.

#### Hujjatlashtirish

«Shakllar» sahifasi endi [So'rovnomalar](forms.html) deb ataladi - u O'zbekistonda qo'llaniladigan tibbiy shakllar bilan chalkashtirilmasligi uchun. Sahifa manzili o'zgarmadi.

[Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) sahifasi endi bog'langan ValueSet dagi hech bir kod ma'lumotlarga to'g'ri kelmaganda nima qilish kerakligini har bir bog'lanish kuchi uchun tushuntiradi va JSON misollarini keltiradi: extensible bog'lanish avval milliy ro'yxatdagi kod bilan, so'ngra SNOMED CT kodi bilan qanoatlantiriladi, dastlabki ifoda esa `text` da saqlanadi.

### Versiya 0.7.0

#### Qo'shildi

Sug'urta hisob-fakturalari, oldindan avtorizatsiya va oldindan aniqlash uchun, shuningdek ularga qaytariladigan qaror va to'lov javoblari uchun [UZ Core Claim](StructureDefinition-uz-core-claim.html) va [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) profillari qo'shildi. Ularni [hisob-faktura turi](ValueSet-claim-type-vs.html), [hisob-faktura maqsadi](ValueSet-claim-use-vs.html) va [moliyaviy boshqaruv holati](ValueSet-fm-status-vs.html) terminologiyasi, shuningdek [javob toifasi](ValueSet-claim-response-category-vs.html), [qaror](ValueSet-claim-response-decision-vs.html) va [natija](ValueSet-claim-response-outcome-vs.html) kodlari qo'llab-quvvatlaydi. [Bekor qilish sababi kengaytmasi](StructureDefinition-claim-response-cancellation-reason.html) javob nima uchun bekor qilinganini qayd etadi - masalan, oldindan avtorizatsiya muddati hisob-faktura yakunlanguncha tugaganda.

Davlat tibbiy sug'urtasi bo'yicha yo'llanma va gospitalizatsiyani tasdiqlash jarayonining bosqichlarini kuzatish uchun [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) profili qo'shildi (Vazirlar Mahkamasining 04.11.2025 yildagi 694-son qaroriga 1-ilova), u [vazifa kodlari](ValueSet-task-codes-vs.html), [holat](ValueSet-task-status-vs.html), [maqsad](ValueSet-task-intent-vs.html) va [biznes holati](ValueSet-task-business-status-vs.html) terminologiyasiga ega. Ogohlantirish darajasidagi cheklov so'ralgan muddati o'tgan, ammo kechikkan deb belgilanmagan tugallanmagan vazifalarni aniqlaydi - SLA nazorati uchun.

Skrining, emlash va donorlik maqsadli guruhlari hamda ularning natijaviy kogortalari kabi belgilangan ob'ektlar to'plamlari uchun [UZ Core Group](StructureDefinition-uz-core-group.html) profili qo'shildi, u [guruh turi](ValueSet-group-type-vs.html), [guruh ko'rinishi](ValueSet-group-kind-vs.html), [a'zolik asosi](ValueSet-group-membership-basis-vs.html) va [xususiyat turi](ValueSet-group-characteristic-kind-vs.html) terminologiyasiga ega.

[Yurak-qon tomir kasalliklari xavfi skriningi so'rovnomasi](Questionnaire-CVDRiskScreeningQuestionnaire.html) qo'shildi - bu YQTK xavfini erta aniqlash shakli bo'lib, javoblar asosida SDC FHIRPath ifodalari yordamida ballni va xavf toifasini hisoblab beradi. Ushbu ifodalar hal qilinishi uchun qo'llanma endi `hl7.fhir.uv.sdc` ga bog'liq.

[Holat og'irligi](CodeSystem-condition-severity-cs.html), [muolaja natijasi](CodeSystem-procedure-outcome-cs.html), [reaksiya turi](CodeSystem-reaction-type-cs.html), [maqsad tavsifi](CodeSystem-goal-description-cs.html), [maqsad boshlanish hodisasi](CodeSystem-goal-start-event-cs.html) va [ijtimoiy-iqtisodiy kuzatuv kodlari](CodeSystem-socioeconomic-observation-codes-cs.html) uchun o'zbekcha va ruscha atamalarni saqlovchi SNOMED CT supplement'lari qo'shildi.

Birlik nomlarining o'zbekcha va ruscha tarjimalari bilan [UCUM birliklari supplement'i](CodeSystem-ucum-units-supp-cs.html) qo'shildi va [UCUM birliklari ValueSet'i](ValueSet-ucum-units-supp-vs.html) sifatida taqdim etildi. [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) dagi `permittedUnit` endi umumiy UCUM birliklari ValueSet'iga emas, balki unga bog'langan (extensible), `permittedDataType` esa endi yangi [laboratoriya kuzatuvi qiymat turlari](ValueSet-permitted-data-type-vs.html) ValueSet'iga bog'langan (required).

Manba laboratoriya tizimlari ishlatadigan birlik satrlarini saqlovchi [laboratoriya manba tizimlari birliklari CodeSystem'i](CodeSystem-lab-units-cs.html), uning [ValueSet'i](ValueSet-lab-units-vs.html) va ularni UCUM ga [o'giruvchi ConceptMap](ConceptMap-lab-units-to-ucum-cm.html) qo'shildi, shunda mahalliy birlik satrlari bilan keladigan natijalarni normallashtirish mumkin bo'ladi.

Milliy va SNOMED CT yuborish yo'li kodlariga moslashtirilgan [yuborish yo'llari](ConceptMap-dmed-administration-route-to-dhp-sct-cm.html) uchun DMED terminologiya ko'priklari qo'shildi, shuningdek [o'lchov birliklari](ConceptMap-dmed-measure-unit-to-dhp-cm.html) va [vaksina kodlari](ConceptMap-dmed-vaccine-to-cvx-cm.html) moslashtirishlari kengaytirildi; [DMED o'lchov birliklari CodeSystem'iga](CodeSystem-dmed-measure-unit-cs.html) yangi birliklar qo'shildi.

#### O'zgartirildi

SNOMED CT asosidagi ValueSet'lar endi maqsadni ierarxiya yaxshiroq ifodalaydigan joylarda alohida kodlarni sanash o'rniga ierarxiyani tanlaydi: [tana qismi](ValueSet-body-site-vs.html) - har qanday anatomik tuzilma, [muolaja kodi](ValueSet-procedure-code-vs.html) - har qanday muolaja, [maqsadli kasallik](ValueSet-target-disease-vs.html) - har qanday kasallik, [yuborish yo'li kodi](ValueSet-route-code-vs.html) - har qanday yuborish yo'li, [holat og'irligi](ValueSet-condition-severity-vs.html) - har qanday og'irlik darajasi, [nojo'ya hodisa natijasi](ValueSet-adverse-event-outcome-vs.html) - har qanday nojo'ya reaksiya, [maqsad tavsifi](ValueSet-goal-description-vs.html), [reaksiya turi](ValueSet-reaction-type-vs.html) va [tavsiya sababi](ValueSet-recommendation-reason-vs.html) esa - har qanday klinik topilma. Bu 0.6.0 ga nisbatan qabul qilinadigan qiymatlar doirasini kengaytiradi. [Muolaja natijasi](ValueSet-procedure-outcome-vs.html), [ijtimoiy-iqtisodiy kuzatuv kodlari](ValueSet-socioeconomic-observation-codes-vs.html), [maqsad boshlanish hodisasi](ValueSet-goal-start-event-vs.html) va [harakat ishtirokchisi roli](ValueSet-action-participant-role-vs.html) o'zining aniq kodlar ro'yxatini saqlab qoladi, chunki ularning tushunchalari tanlash uchun yetarlicha tor umumiy ajdodga ega emas.

[Laboratoriya panellari CodeSystem'i](CodeSystem-lab-pan-cs.html) endi `kind` va `parent` xossalarini e'lon qiladi, shuning uchun kuzatuv kodlari ValueSet'ini kengaytirayotgan mijoz panellarni ular tarkibidagi analitlardan ajrata oladi. Panel kodlaridagi til atamalari ham tuzatildi.

[UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) dagi `component.code` foydalanuvchi interfeysi jarayoni uchun qo'shimcha bog'lanishga ega bo'ldi: foydalanuvchi bemor portalida o'zining laboratoriya ta'rifini yaratganda, analit kodi LOINC dan tanlanishi shart. Milliy laboratoriya panellari kodlari oldindan belgilangan laboratoriya katalogi uchun ajratilgan holicha qoladi.

[UZ Core Observation](StructureDefinition-uz-core-observation.html) dagi `method` endi bog'lanish kuchini extensible sifatida aniq ko'rsatadi.

[UZ Core Condition](StructureDefinition-uz-core-condition.html) dagi `participant.actor` endi [UZ Core Organization](StructureDefinition-uz-core-organization.html) ga havola qila oladi.

[UZ Core Location](StructureDefinition-uz-core-location.html) da soliq identifikatori slaysi olib tashlandi va `name` yana ixtiyoriy (0..1) bo'ldi - 0.6.0 da kiritilgan talab bekor qilindi.

#### Buzuvchi o'zgarishlar

Tashkilot turlari ConceptMap'lari MIS2 prefiksidan SSV prefiksiga o'zgartirildi, chunki ular SSV ValueSet'laridan moslashtiradi: [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html), [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) va [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html). Takrorlangan `mis2-*` ConceptMap'lar olib tashlandi; dasturchilar `ssv-*` kanonik URL'laridan foydalanishlari kerak. Nomenklatura guruhlari moslashtirishlari SSVMedicalTypeToOrganizationalStructureCM dan yangi [SSVMedicalTypeToNomenclatureGroupCM](ConceptMap-ssv-medical-type-to-nomenclature-group-cm.html) ga ajratildi, shunda har bir ConceptMap bitta manba va maqsad doirasini e'lon qiladi.

[UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) endi kalendar turini ko'rsatuvchi ikkinchi `useContext` ni talab qiladi, u yangi [emlash kalendari turi](ValueSet-immunization-schedule-type-vs.html) ValueSet'iga bog'langan (extensible). `action.definition[x]` bo'yicha tur slayslash olib tashlandi, chunki u tufayli validator `definitionCanonical` ni rad etardi, va misollar endi `definitionCanonical` dan foydalanadi.

UZ Core ActivityDefinition profili UZ Core VaccinationActivityDefinition deb nomlandi va uning kanonik URL'i `.../uz-core-activity-definition` dan `.../uz-core-vaccination-activity-definition` ga o'zgardi. Eski kanonik URL'ga havola qiluvchi dasturchilar uni yangilashlari kerak.

#### Hujjatlashtirish

[Shakllar](forms.html) sahifasi qo'shildi - unda ushbu qo'llanma nashr etadigan har qanday so'rovnomani o'zbek, rus yoki ingliz tilida ishchi shakl sifatida to'ldirib, amalga oshirishdan oldin matn, javob variantlari, o'tish mantig'i va hisoblanadigan natijalarni tekshirish mumkin. Sahifa shaklni namunaviy javoblar bilan to'ldira oladi va hosil bo'lgan QuestionnaireResponse JSON'iga havola beradi.

Modellashtirish bo'yicha qo'llanma endi terminologiya versiyalari SemVer formatida (`MAJOR.MINOR.PATCH`) bo'lishini talab qiladi, chunki DHP terminologiya platformasi boshqa formatlarni tanimaydi, va SemVer bo'lmagan relizlar identifikatorlarini, masalan SNOMED CT dagi `2026-01` ni, qanday kodlashni tavsiflaydi.

### Versiya 0.6.0

#### Qo'shildi

Laboratoriya va diagnostika hisobotlari uchun [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) profili qo'shildi, [xizmat toifasi](ValueSet-diagnostic-report-service-category-vs.html), [holat](ValueSet-diagnostic-report-status-vs.html) va [hisobot turlari](ValueSet-lab-report-types-vs.html) uchun tegishli terminologiya bilan birga.

Muolajalar, diagnostik tekshiruvlar yoki tekshiruvlar panelini buyurtma qilish uchun [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) profili qo'shildi, jumladan [to'lov turi](ValueSet-payment-type-vs.html) va [so'rov holati](ValueSet-service-request-status-vs.html) terminologiyasi bilan.

Klinik namunalar uchun [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) profili qo'shildi, [yig'ish usuli](ValueSet-specimen-collection-method-vs.html), [namuna turi](ValueSet-specimen-types-vs.html), [rol](ValueSet-specimen-role-vs.html) va [holat](ValueSet-specimen-status-vs.html) terminologiyasi bilan birga. U ServiceRequest va DiagnosticReport profillaridan havola qilinadi.

Tizimlar laboratoriya tahlillari ta'riflarini - ruxsat etilgan o'lchov birliklari, o'lchash usullari va jinsga xos referens diapazonlarini - Bemor portali va integratsiyalashayotgan tizimlar uchun e'lon qila olishi maqsadida [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) profili qo'shildi.

Emlashlarni qayd etish uchun [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) profili qo'shildi, [maqsadli kasallik](ValueSet-target-disease-vs.html), [yuborish joyi](ValueSet-immunization-site-vs.html), [yo'l](ValueSet-route-code-vs.html) va [moliyalashtirish manbasi](ValueSet-funding-source-vs.html) terminologiyasi bilan birga, shuningdek [milliy DMED vaktsina kodlarini CVX ga](ConceptMap-dmed-vaccine-to-cvx-cm.html) tarjima qiluvchi ConceptMap bilan.

Emlash bashoratlari uchun [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) profili qo'shildi, [bashorat holati](ValueSet-recommendation-forecast-status-vs.html), [sana mezoni](ValueSet-recommendation-date-criterion-vs.html) va [sabab](ValueSet-recommendation-reason-vs.html) terminologiyasi bilan.

Milliy emlash jadvallari uchun [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) profili qo'shildi.

Muayyan bemordan mustaqil ravishda qayta foydalaniladigan klinik faoliyatlarni (protseduralar, tahlillar, dori protokollari) belgilash uchun [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) profili qo'shildi.

Nojo'ya hodisalar haqida xabar berish uchun [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) profili qo'shildi, [haqiqiylik](ValueSet-adverse-event-actuality-vs.html), [jiddiylik](ValueSet-adverse-event-seriousness-vs.html), [natija](ValueSet-adverse-event-outcome-vs.html) va [holat](ValueSet-adverse-event-status-vs.html) terminologiyasi bilan.

O'zbekistonga xos dori identifikatorlari (markirovka ID, ro'yxatdan o'tkazish guvohnomasi, GTIN, quti agregatsiya ID, milliy mahsulot va xizmatlar tasnifi kodi) va ATC asosidagi [tasnif](ValueSet-medication-classification-vs.html) hamda [dori shakli](ValueSet-medication-doseform-vs.html) terminologiyasi bilan [UZ Core Medication](StructureDefinition-uz-core-medication.html) profili qo'shildi.

[UZ Core Procedure](StructureDefinition-uz-core-procedure.html) profili qo'shildi, [protsedura holati](ValueSet-procedure-event-status-vs.html), SNOMED CT asosidagi [protsedura kodlari](ValueSet-procedure-code-vs.html) va [natija](ValueSet-procedure-outcome-vs.html) terminologiyasi bilan birga, shuningdek qoplama hisobotlari uchun namuna sifatida [SNOMED CT dan ICHI ga](ConceptMap-snomed-to-ichi-procedures.html) ConceptMap bilan.

[Laboratoriya usuli kodlari](CodeSystem-lab-methods-cs.html) qo'shildi, laboratoriya [panel va analit kodlari](ConceptMap-lab-pan-codes-to-loinc.html) ni LOINC ga va [usul kodlari](ConceptMap-lab-methods-to-loinc.html) ni SNOMED CT ga moslashtiruvchi ConceptMaplar bilan. Usul kodlari [laboratoriya usullari qiymatlar to'plami](ValueSet-lab-method-vs.html) sifatida taqdim etilgan va [UZ Core Observation](StructureDefinition-uz-core-observation.html) profilining `method` elementiga bog'langan.

Laboratoriya xizmatlarida natija kutilayotgan vaqtni ko'rsatish uchun [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) ga [natija kutish vaqti kengaytmasi](StructureDefinition-turnaround-time.html) qo'shildi. Ushbu profildagi toifa va tur bog'lanishlari ham required dan extensible ga yumshatildi, shu sababli dasturchilar lokal kodlar qo'sha olishlari mumkin.

Milliy DMED tizimidan ma'lumotlarni qabul qilish uchun DMED terminologik ko'priklari qo'shildi: [mamlakat kodlari](ConceptMap-dmed-country-to-dhp-country-cm.html) ISO 3166 ga, [o'lchov birliklari](ConceptMap-dmed-measure-unit-to-dhp-cm.html) UCUM ga moslashtirildi, DMED kasblari esa ham SNOMED CT ga, ham [DHP lavozimlari](ConceptMap-dmed-position-to-dhp-position-cm.html) ga moslashtirildi.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga Davlat sog'liqni saqlash sug'urtasi jamg'armasi (DTSJ) va Sog'liqni saqlash vazirligi (Minzdrav) identifikator slayslari qo'shildi. DTSJ tomonidan tayinlangan provayder kodlari `PRN` (provayder raqami) sifatida tiplangan. Yangi [to'lovchini identifikatsiya qilish](payor-identification.html) sahifasi to'lovchilar va ular bilan shartnoma tuzgan provayderlar qanday identifikatsiya qilinishini tushuntiradi.

#### O'zgartirildi

Bir nechta profillardagi havola maqsadlari endi mavjud bo'lgan joylarda UZ Core profillariga ishora qiladi - masalan, [UZ Core Observation](StructureDefinition-uz-core-observation.html) dagi `specimen` UZ Core Specimen ga va `partOf` UZ Core Procedure/Immunization ga, [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) dagi `administeredProduct` UZ Core Medication ga, hamda [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) dagi `suspectEntity` UZ Core Medication ga. Havola qilingan resurslar endi tegishli UZ Core profiliga mos kelishi shart.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) dagi `reason` va [UZ Core Observation](StructureDefinition-uz-core-observation.html) dagi `basedOn` endi ImmunizationRecommendation ga havola qilishi mumkin.

[OrganizationalSpecializationCS](CodeSystem-organizational-specialization-cs.html) dagi inglizcha ko'rsatuv nomlari tuzatildi (izchil katta-kichik harflar; "Children" "Pediatric" ga o'zgartirildi). Kodlar o'zgarmagan.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi `gender` endi ruscha va o'zbekcha tarjimalari bilan yangi [ma'muriy jins ValueSet](ValueSet-administrative-gender-vs.html) ga (required) bog'langan.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi `managingOrganization` endi Must Support hisoblanadi va [UZ Core Organization](StructureDefinition-uz-core-organization.html) ga havola qilishi kerak.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) va [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) da lokal pasport identifikatori endi `use` ni `official` ga qat'iy belgilamaydi: joriy ID karta uchun `official`, bir xil tizimni ulashadigan eskirgan qog'oz pasport uchun esa `old` dan foydalaning. [Identifikatorlar](identifiers.html) sahifasiga qarang.

#### Buzuvchi o'zgarishlar

[UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) dagi `code` endi [lavozim va kasb ValueSet](ValueSet-position-and-profession-vs.html) ga (required) bog'langan (ilgari - shifokor roli qiymatlar to'plami); `specialty` esa avvalgidek [kasb ixtisosligi ValueSet](ValueSet-profession-specialization-vs.html) ga (required) bog'langan. Dasturchilar shifokor rollarini ushbu qiymatlar to'plamlaridagi kodlar bilan to'ldirishlari shart.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) va [UZ Core EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) dagi `type`, hamda [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) dagi `signature.type` endi slayslarga bo'lingan, shu sababli milliy kod talab qilinadi, qo'shimcha kodlashlar esa ruxsat etilgan bo'lib qoladi.

Identifikator-domeni va EpisodeOfCare qiymatlar to'plamlarining (shuningdek chet el pasporti va haydovchilik guvohnomasi qiymatlar to'plamlarining) kanonik URL manzillari `https://dhp.uz/fhir/core/ValueSet/...` dan `https://terminology.dhp.uz/fhir/core/ValueSet/...` ga ko'chirildi. Ushbu kanonik manzillarga to'g'ridan-to'g'ri havola qiluvchi dasturchilar ularni yangilashlari shart.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) dagi [fuqarolik qiymatlar to'plami](ValueSet-nationality-vs.html) asosidagi [fuqarolik CodeSystem'i](CodeSystem-nationality-cs.html) yangilangan dmp.uz fuqarolik ro'yxati asosida qayta qurildi: u 306 tadan 512 taga oshdi, nomlar katta harflarga standartlashtirildi, ruscha va inglizcha tarjimalar qo'shildi, kodlar esa qayta tayinlandi - bitta kod endi boshqa millatni anglatishi mumkin (masalan, `#1` "Ruslar" dan "ADIGEY" ga o'zgardi). Bu buzuvchi o'zgarish: oldingi versiyada saqlangan fuqarolik kodlari qayta moslashtirilishi kerak.

Ko'p tilli tarjima kengaytmasi (o'zbekcha asosiy qiymat hamda ruscha va qoraqalpoqcha tarjimalar) [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) dagi `name` ga hamda [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html), [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) va [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) dagi `title` ga qo'shildi. `name` endi [UZ Core Organization](StructureDefinition-uz-core-organization.html) va [UZ Core Location](StructureDefinition-uz-core-location.html) da majburiy.

#### Hujjatlashtirish

Joriy etish bo'yicha ko'rsatma sahifalari - [ushbu qo'llanmani qanday o'qish kerak](how-to-read.html), [umumiy ko'rsatmalar](general-guidance.html) va [Must Support](must-support.html) - hamda [laboratoriya](workflow-lab.html), [emlash](workflow-immunization.html), [yo'naltirish](workflow-referral.html), [bemor yo'li](workflow-patient-journey.html) va [retsept](workflow-prescription.html) jarayonlari uchun to'liq [ish jarayoni ko'rsatmalari](workflows.html) qo'shildi. Endi har bir profilda matnli kirish va izohlar bo'limlari ham mavjud.

Buyruq qatori validatori va validator.fhir.org yordamida [resurslarni UZ Core ga nisbatan tekshirish bo'yicha ko'rsatmalar](api-access.html#validation) qo'shildi.

[API kirishi](api-access.html) ko'rsatmalari yangilandi: hozircha playgroundda faqat ICD-10 va HL7 kod tizimlari validatsiyadan o'tadi, frontend mijozlar uchun PKCE majburiy, va autentifikatsiya tafsilotlari endi tashqi SSO hujjatlariga havola qiladi.

Services sahifasi [Components](components.html) ga o'zgartirildi va komponent tavsiflari hamda ruscha va o'zbekcha tarjimalar bilan kengaytirildi.

### Versiya 0.5.0

#### Qo'shildi

[UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) profili tegishli CodeSystem va ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)) hamda lokal allergen va reaksiya ko‘rinishi kodlarini SNOMED CT ga tarjima qiluvchi ConceptMap bilan qo‘shildi.

O'zbekistonda ishlatiladigan panellar va analitlar uchun [laboratoriya kuzatuv kodlari](CodeSystem-lab-pan-cs.html) qo'shildi.

[UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) da `category.coding` va `type.coding` endi slayslarga bo‘linib, [LabServiceCategoriesVS](ValueSet-service-request-categories-vs.html) ga bog‘langan yangi `labCategory` slaysini qo‘llab-quvvatlaydi (kodlar [LabCategoriesCS](CodeSystem-lab-categories-cs.html) dan). Laboratoriya xizmatlari mavjud `dhpCategory` slaysiga qo‘shimcha ravishda `labCategory` slaysini ham to‘ldirishi kerak.

[UZ Core Patient](StructureDefinition-uz-core-patient.html) da [MahallaVS](ValueSet-mahalla-vs.html) (`address.city` uchun ishlatiladi) yangi [Mahalla COATO](CodeSystem-mahalla-coato-cs.html) kod tizimidagi kodlar bilan kengaytirildi va mavjud MahallaCS kodlariga qo‘shimcha ravishda 2 600 dan ortiq COATO asosidagi mahalla identifikatorlarini taqdim etadi.

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

[Hujjat identifikatori nomlar maydoni](identifiers.html#document-identifiers) (doc) identifikator tizimlariga qo'shildi.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) asosida muassasalarni batafsil guruhlash uchun `type.coding[organizationGrouping]` bo'limi qo'shildi (masalan, `#104` "Ixtisoslashgan shifoxonalar", `#210` "Oilaviy poliklinika"). Dasturchilar ushbu yangi bo'limni to'ldirishlari kerak.

[OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html) ga I_6 "Xorijiy sarmoyadorlar ishtirokidagi muassasalar" kodi qo'shildi. Dasturchilar tegishli tashkilotlar uchun `type.coding[subordinationGroup]` da ushbu kodni ishlatishlari kerak.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) ambulatoriya muassasalari (masalan, `#200` poliklinikalar), ta'lim muassasalari (`#300`), qon quyish markazlari (`#400`), sanitariya-epidemiologiya xizmatlari (`#500`) va boshqalar uchun yangi kodlar bilan kengaytirildi. Ba'zi mavjud tarjimalar tuzatildi (masalan, `#116` "Medical center center" dan "Medical center" ga tuzatildi). Dasturchilar o'z muassasalari uchun aniqroq kod mavjudligini tekshirishlari kerak.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) ga tashkilot xizmat ko'rsatadigan ma'muriy hududni ko'rsatish uchun [xizmat hududi kengaytmasi](StructureDefinition-coverage-area.html) qo'shildi, [StateVS](ValueSet-state-vs.html) ga bog'langan. SSV hudud kodlarini StateCS ga [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) yordamida o'zgartirish mumkin.

MIS2 JSON formatidagi tashkilotni ConceptMap yordamida UZ Core Organization resursiga o'girishni ko'rsatuvchi [misol](Organization-xonobod-medical-association.html) qo'shildi.

MIS2 kodlarini UZ Core terminologiyasiga tarjima qilish uchun ConceptMap qo'shildi: [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) `type.coding[organizationalStructure]` uchun, [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html) `type.coding[subordinationGroup]` uchun va [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html) `type.coding[organizationalServiceGroup]` uchun. MIS2 dan tarjima qilayotgan dasturchilar tegishli bo'limlarni to'ldirish uchun ushbu xaritalardan foydalanishlari kerak.

#### O'zgartirildi

[UZ Core Observation](StructureDefinition-uz-core-observation.html) da [ObservationCodesVS](ValueSet-observation-codes-vs.html) bog‘lanishi required dan **preferred** ga o‘zgartirildi va endi LOINC va lokal kodlar bilan bir qatorda SNOMED CT kodlarini ham o‘z ichiga oladi. Dasturchilar mos joylarda SNOMED CT kodlaridan foydalanishlari mumkin.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationalServiceGroup]` va `type.coding[specialization]` kardinallik darajasi 0..1 dan 0..\* ga kengaytirildi. Endi bitta tashkilot uchun bir nechta xizmat guruhi va ixtisoslik kodlarini ko'rsatish mumkin.

#### Buzuvchi o'zgarishlar

`UZCoreClinicalCondition` olib tashlandi va [UZ Core Condition](StructureDefinition-uz-core-condition.html) bilan birlashtirildi. Dasturchilar `uz-core-clinical-condition` ga bo‘lgan havolalarni `uz-core-condition` ga yangilashlari kerak. `Condition.code` uchun endi ICD-10 va SNOMED CT kodlarini birlashtiruvchi yangi [ConditionCodeVS](ValueSet-condition-code-vs.html) qiymatlar to‘plami (preferred bog‘lanish) ishlatiladi.

[Bemor qoniqishi so‘rovnomasi](Questionnaire-PatientSatisfactionQuestionnaire.html) da `answerOption` kodlari Questionnaire’ning o‘z URL’idan alohida [PatientSatisfactionCS](CodeSystem-patient-satisfaction-cs.html) kod tizimiga ko‘chirildi. Ushbu so‘rovnoma uchun QuestionnaireResponse javoblarini to‘ldiruvchi dasturchilar Coding `system` qiymatini `https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire` dan `https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs` ga o‘zgartirishlari kerak. Kodlarning o‘zi o‘zgarmagan.

[UZ Core Organization](StructureDefinition-uz-core-organization.html) dagi `type.coding[organizationType]` bo'limi endi HL7 xalqaro `organization-type` kodlar tizimi o'rniga OrganizationTypeUZCS dan foydalanadi. Masalan, `$organization-type-cs#prov` ni `organization-types-uz-cs` dagi tegishli kodga almashtirish kerak (masalan, `#I` "Boshqaruv boyicha taqsimlanishi"). To'g'ridan-to'g'ri moslik yo'q - har bir tashkilotni yangi tizimda (I-V kodlar) qayta tasniflash kerak.

#### Hujjatlashtirish

[UZ Core Patient](StructureDefinition-uz-core-patient.html) da [identifikatorlar hujjati](identifiers.html) milliy identifikator **JSHSHIR** (Jismoniy shaxsning shaxsiy identifikatsiya raqami) ekanligini aniqlashtirish uchun yangilandi, shuningdek `medicalRecordTemp` va `unknownPatient` identifikatorlaridan foydalanish o‘rtasidagi farq aniqlashtirildi.

Dasturchilar uchun namuna sifatida [tranzaksion bandl misoli](Bundle-example-transaction-bundle.html) va [erkin matnli malaka bilan PractitionerRole misoli](PractitionerRole-example-practitionerrole-freetext.html) qo‘shildi.

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
