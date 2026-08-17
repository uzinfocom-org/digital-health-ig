Profil sahifalarida har bir resursning *tuzilishi* ko'rsatiladi. Ushbu ish jarayoni sahifalarida esa *jarayon* bayon qilinadi - muayyan klinik vazifa uchun qaysi resurslarni yaratish, ularni qanday ketma-ketlikda yaratish, ular reference orqali bir-biriga qanday bog'lanishi va qaysi API chaqiruvlarini bajarish kerakligi tushuntiriladi. Biror vazifa uchun qaysi resursdan foydalanish kerakligiga ishonchingiz komil bo'lmasa, shu yerdan boshlang.

Har bir ish jarayonida ishtirokchilar, FHIR o'zaro ishlash amallari ketma-ketligi va asosiy qoidalar API chaqiruvlari misollari hamda so'rov tanasi fragmentlari bilan birga tavsiflanadi.

### Mavjud ssenariylar

| Ish jarayoni | Nimalarni qamrab oladi | Resurslar |
|----------|----------------|-----------|
| [Vaksinatsiya](workflow-immunization.html) | Milliy taqvim &rarr; tavsiya &rarr; konsultatsiya va vaksinatsiya uchun tashriflar &rarr; yuborilgan dozani qayd etish | [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html), [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Immunization](StructureDefinition-uz-core-immunization.html), [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) |
| [Laboratoriya tekshiruvini tayinlashdan natijani olishgacha](workflow-lab.html) | Laboratoriya tekshiruvini tayinlash va natijani qaytarish | ServiceRequest, [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), DiagnosticReport |
| [Elektron yo'llanmaning hayot sikli](workflow-referral.html) | Yo'llanmani yaratish va bajarish, shu jumladan davlat tibbiy sug'urtasi doirasidagi tasdiqlashlar ketma-ketligi | ServiceRequest, Task, [Procedure](StructureDefinition-uz-core-procedure.html) |
| [Bemor yo'li (Episode of Care)](workflow-patient-journey.html) | Klinik holatga tegishli tashriflar, tashxislar va natijalarni vaqt davomida bitta epizod doirasida guruhlash | [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) |
| [Elektron retsept va dori vositasini berish](workflow-prescription.html) | Dori vositasini buyurish, uni berish va SHIFga hisobot taqdim etish | MedicationRequest, MedicationDispense, [Condition](StructureDefinition-uz-core-condition.html) |

Klinik hujjatni yaratish va imzolash (`Composition` asosidagi hujjatni shakllantirish va unga yuridik kuch berish uchun imzolash) bu yerda emas, [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) qo'llanmasining Documents bo'limida tavsiflangan.

Tegishli profillar yakunlangach, qo'shimcha ssenariylar (aholini skriningdan o'tkazish) qo'shiladi.

### O'zaro ishlash modeli

Har bir ish jarayoniga bir nechta umumiy qoida tatbiq etiladi:

- Avval autentifikatsiyadan o'ting. Barcha so'rovlar platformaning SSO tizimidan olingan OAuth2 bearer-tokenini (`Authorization: Bearer <token>`) o'z ichiga oladi. Tizimlararo mijozlar client credentials oqimidan, foydalanuvchi ilovalari esa oneID orqali authorization code oqimidan foydalanadi.
- Profilni ko'rsating. Siz yuboradigan har bir resurs `meta.profile` elementini o'z ichiga oladi, shunda server uni tegishli UZ Core profili bo'yicha validatsiya qiladi. Qarang: [Umumiy tavsiyalar &rarr; metama'lumotlar](general-guidance.html#metadata).
- Bog'langan resurslarni Bundle tarkibida birlashtiring. Bir nechta resurs bir jarayonga tegishli bo'lsa, ularni Bundle (transaction yoki batch) sifatida, yakunlangan hujjat uchun esa document turidagi Bundle sifatida yuborishingiz mumkin. Qarang: [Umumiy tavsiyalar &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- Bemorning roziligini hisobga oling. O'qish so'rovlari bemorning [Consent](StructureDefinition-uz-core-consent.html) resursiga bog'liq; rad etilgan so'rovga `403` qaytariladi. Har bir kirish holati [AuditEvent](StructureDefinition-uz-core-auditevent.html) resursida qayd etiladi.
- Faqat mantiqiy o'chirish. Yozuvlar `DELETE` orqali emas, holatini o'zgartirish orqali foydalanishdan chiqariladi. Qarang: [Umumiy tavsiyalar &rarr; o'chirish](general-guidance.html#creating-updating-and-deleting).

### Resurslar qanday bog'langan

Klinik ma'lumotlarning aksariyatida bemor bilan bog'lanish uchun bir nechta asosiy reference sxemalaridan foydalaniladi. Quyidagi diagrammada ushbu asosiy tuzilma ko'rsatilgan - bu barcha profillarning to'liq ro'yxati emas (to'liq to'plamni [Artifacts](artifacts.html) bo'limida ko'ring):

<div>{% include resource-relationships.svg %}</div><br clear="all"/>

- Patient ko'plab Encounter resurslari (tashriflar) bilan bog'langan; o'zaro bog'liq Encounter resurslari EpisodeOfCare (davom etayotgan klinik holat) doirasida guruhlanishi mumkin.
- Encounter doirasida klinik mutaxassislar Condition (tashxislar), Observation (natijalar, hayotiy ko'rsatkichlar), Procedure va MedicationRequest resurslarini qayd etadi.
- Ish jarayoni resurslari (ServiceRequest, Task) tayinlash va bajarish jarayonini boshqaradi; natija resurslari (Observation, DiagnosticReport) boshlang'ich tayinlovga reference beradi.
- Yakunlangan va yuridik kuchga ega ma'lumotlar Composition asosidagi hujjatga birlashtiriladi hamda [Provenance](StructureDefinition-uz-core-provenance.html) orqali imzolanadi.

Hujjat va ish jarayoni resurslari o'rtasida tanlov qilish bo'yicha izoh: joriy klinik ma'lumotlarni alohida resurslar (Condition, Observation, Procedure) sifatida saqlang; Composition asosidagi hujjatni faqat yakunlangan va yuridik kuchga ega artefakt (shifoxonadan chiqarish xulosasi, imzolangan guvohnoma, imzolangan hisobot) zarur bo'lganda shakllantiring.
