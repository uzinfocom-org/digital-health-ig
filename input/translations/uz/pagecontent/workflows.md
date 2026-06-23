> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Profil sahifalari sizga har bir resursning *shaklini* bildiradi. Ushbu ish jarayoni sahifalari esa *hikoyani* aytib beradi - haqiqiy klinik vazifa uchun qaysi resurslarni, qanday tartibda yaratish kerakligini, ular bir-biriga qanday murojaat qilishini va qanday API chaqiruvlarini amalga oshirish kerakligini ko'rsatadi. Agar biror narsa uchun qaysi resursdan foydalanishni bilmasangiz, shu yerdan boshlang.

Har bir ish jarayoni ishtirokchilarni, FHIR o'zaro ta'sirlari ketma-ketligini va asosiy qoidalarni misol chaqiruvlari va yuk tashkil etuvchi fragmentlar bilan tavsiflaydi.

### Mavjud stsenariylar

| Ish jarayoni | Nimani qamrab oladi | Resurslar |
|----------|----------------|-----------|
| [Immunizatsiya](workflow-immunization.html) | Milliy jadval &rarr; tavsiya &rarr; konsultatsiya va emlash tashriflari &rarr; dozani qayd etish | [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html), [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Immunization](StructureDefinition-uz-core-immunization.html), [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) |
| [Laboratoriya buyurtmasidan natijagacha](workflow-lab.html) | Tahlilga buyurtma berish va natijani qaytarish | ServiceRequest, [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), DiagnosticReport |
| [Elektron yo'naltirish hayot tsikli](workflow-referral.html) | Yo'naltirishni yaratish va bajarish, jumladan davlat sug'urtasini tasdiqlash zanjiri | ServiceRequest, Task, [Procedure](StructureDefinition-uz-core-procedure.html) |
| [Bemorning yo'li (Davolanish epizodi)](workflow-patient-journey.html) | Holatga oid tashriflar, tashxislar va natijalarni vaqt davomida bitta epizod ostida guruhlash | [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) |
| [Elektron retsept va dori berish](workflow-prescription.html) | Dori buyurish, uni berish va SHIFga hisobot berish | MedicationRequest, MedicationDispense, [Condition](StructureDefinition-uz-core-condition.html) |

Klinik hujjatni yaratish va imzolash (`Composition`ga asoslangan hujjatni yig'ish va unga yuridik kuch berish uchun imzolash) bu yerda emas, balki [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) ichidagi Hujjatlar bo'limida belgilanadi.

Tegishli profillar yakunlangani sari qo'shimcha stsenariylar (aholini skrining qilish) qo'shiladi.

### O'zaro ta'sir modeli

Bir nechta qoida har bir ish jarayoniga taalluqlidir:

- Avval autentifikatsiyadan o'ting. Barcha so'rovlar platforma SSO orqali olingan OAuth2 bearer tokenini (`Authorization: Bearer <token>`) o'z ichiga oladi. Tizimdan-tizimga ishlovchi mijozlar client-credentials oqimidan foydalanadi; foydalanuvchiga qaratilgan ilovalar oneID orqali authorization-code oqimidan foydalanadi.
- Profilni e'lon qiling. Siz yuboradigan har bir resurs `meta.profile`ni o'z ichiga oladi, shunda server uni to'g'ri UZ Core profiliga nisbatan tekshiradi. Qarang: [Umumiy ko'rsatmalar &rarr; metama'lumotlar](general-guidance.html#metadata).
- Tegishli resurslarni Bundle ichida guruhlang. Bir nechta resurs bir-biriga tegishli bo'lganda, ularni Bundle (tranzaksiya yoki paket) sifatida yoki yakunlangan hujjat uchun hujjat Bundle'i sifatida yuborishingiz mumkin. Qarang: [Umumiy ko'rsatmalar &rarr; Bundle'lar](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- Rozilikni hurmat qiling. O'qish so'rovlari bemorning [Consent](StructureDefinition-uz-core-consent.html)iga bo'ysunadi; rad etilgan so'rov `403` qaytaradi. Har bir kirish [AuditEvent](StructureDefinition-uz-core-auditevent.html)ga qayd etiladi.
- Faqat mantiqiy o'chirish. Yozuvlar `DELETE` orqali emas, balki holatini o'zgartirish orqali ishdan chiqariladi. Qarang: [Umumiy ko'rsatmalar &rarr; o'chirish](general-guidance.html#creating-updating-and-deleting).

### Resurslar qanday bog'lanadi

Klinik ma'lumotlarning aksariyati oz sonli murojaat naqshlari orqali bemorga bog'lanadi. Quyidagi diagramma o'sha asosiy umurtqa pog'onasini aks ettiradi - bu har bir profilning to'liq ro'yxati emas (to'liq to'plam uchun [Artefaktlar](artifacts.html) sahifasiga qarang):

<div>{% include resource-relationships.svg %}</div><br clear="all"/>

- Bir Patient ko'plab Encounter'larga (tashriflar) ega; tegishli Encounter'lar bitta EpisodeOfCare (davom etayotgan holat) ichida guruhlanishi mumkin.
- Encounter doirasida klinisistlar Condition'larni (tashxislar), Observation'larni (natijalar, hayotiy ko'rsatkichlar), Procedure'larni va MedicationRequest'larni qayd etadi.
- Ish jarayoni resurslari (ServiceRequest, Task) buyurtma berish va bajarishni boshqaradi; natija resurslari (Observation, DiagnosticReport) buyurtmaga qaytib murojaat qiladi.
- Yakunlangan, yuridik ahamiyatga ega mazmun Composition'ga asoslangan hujjatga yig'iladi va [Provenance](StructureDefinition-uz-core-provenance.html) orqali imzolanadi.

Hujjat va ish jarayoni resurslari o'rtasida tanlash haqida eslatma: davom etayotgan klinik faktlarni alohida resurslar (Condition, Observation, Procedure) sifatida saqlang; Composition'ga asoslangan hujjatni faqat yakunlangan, yuridik ahamiyatga ega artefakt (chiqish xulosasi, imzolangan sertifikat, imzolangan hisobot) kerak bo'lganda yig'ing.
