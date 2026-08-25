Ushbu komponentlar bir-biri bilan qanday bog'langanini sahifa oxiridagi [komponentlararo resurs arxitekturasi](#komponentlararo-resurs-arxitekturasi) diagrammasida ko'rishingiz mumkin.

### Tez tibbiy yordam
\< bu xizmat bo'yicha qisqacha tavsif keyinchalik qo'shiladi \\>

### Qabulga yozish va jadvalni boshqarish
### Qon resurslarini boshqarish

"Qon resurslarini boshqarish" komponenti Digital Health Platform doirasida qon va qon komponentlarini standartlashtirilgan tarzda boshqarish uchun yaratilmoqda. U zaxiralar haqidagi ma'lumotlarning bir-biriga mos kelmasligi, muassasalar o'rtasida so'rovlar va taqsimotni boshqarishdagi qiyinchiliklar hamda qon dozasi qanday ishlatilganini kuzatish imkoniyatining cheklanganligi bilan bog'liq muammolarni hal qiladi.

"Qon resurslarini boshqarish" komponenti quyidagilarni ta'minlaydi:

- Qon va qon komponentlari zaxiralarini markazlashtirilgan tarzda hisobga olish, jumladan komponent turi, qon guruhi, yaroqlilik muddati va saqlash joyi.
- Qon komponentlariga so'rovlarni ro'yxatga olish va qayta ishlash; unda talab qilinayotgan komponent, miqdori, ustuvorligi va u mo'ljallangan bemor ko'rsatiladi (SupplyRequest, ServiceRequest).
- Donordan qon olish, komponentlarni qayta ishlash va transfuziya protseduralarini ro'yxatga olish; ularning har biri bemor va mas'ul mutaxassis bilan bog'lanadi (Procedure).
- Qon ko'rsatkichlari, laboratoriya natijalari va transfuziyadan keyingi bemor reaksiyalarini qayd etish (Observation).
- Qonning hayotiy siklini uzluksiz kuzatish - donorni ro'yxatga olishdan boshlab qayta ishlash, saqlash va tashish orqali bemorda qo'llanilishigacha.
- Transfuziya terapiyasining standartlashtirilgan protokollari hamda donorlik aksiyalari va statistik qayta ishlash uchun donorlar va bemorlarni guruhlash.
- Zaxiralar, sarf, tanqislik va qondan foydalanish samaradorligi bo'yicha analitika va hisobotlar uchun asos.

Qon topshirish jadvallari ushbu qo'llanmada allaqachon modellashtirilgan. [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) to'liq qon topshirish jadvalini `focus` qo'llanish konteksti orqali belgilaydi, [UZ Core Group](StructureDefinition-uz-core-group.html) esa qon topshirishning maqsadli guruhlarini hamda qon topshirishni yakunlagan va yakunlamagan donorlar kogortalarini saqlaydi.

Donorlar va topshirilgan qonni laboratoriya tekshiruvidan o'tkazishni "Laboratoriya" komponenti bajaradi; "Qon resurslarini boshqarish" esa laboratoriya funksionalligini takrorlamasdan, uning natijalaridan foydalanadi. Qonni tashish va logistikasi hamda qon topshirish uchun vaqtni band qilish komponent doirasiga kirmaydi.

### Klinik qarorlarni qo'llab-quvvatlash
### Elektron tibbiy yozuvlar (CHR)

Elektron tibbiy yozuvlar (CHR) komponenti Yagona raqamli sog'liqni saqlash platformasi (DHP) doirasida bemorlarning strukturalashtirilgan tibbiy ma'lumotlarini markazlashtirilgan tarzda saqlash, qayta ishlash va almashish uchun mo'ljallangan.

CHR klinik yozuvlarni HL7 FHIR® xalqaro spetsifikatsiyasiga muvofiq standartlashtirilgan tarzda yuritishni ta'minlaydi hamda Asosiy ma'lumotlarni boshqarish (MDM), Metama'lumotlar va xavfsizlikni boshqarish (MSM) komponentlari, shuningdek tashqi tibbiy axborot tizimlari (MIS, LIS, RMIS va boshqalar) bilan to'liq interoperabellikni ta'minlaydi.

CHR komponentining asosiy maqsadlari:

1. Tibbiy ma'lumotlarni markazlashtirilgan saqlash. CHR bemor haqidagi ma'lumotlar, davolanish epizodlari, tashxislar, kuzatuvlar, protseduralar, allergiyalar, tayinlovlar, laboratoriya tekshiruvlari natijalari va boshqa tibbiy hodisalarni tavsiflovchi strukturalashtirilgan FHIR resurslarini o'z ichiga olgan yagona klinik ma'lumotlar repozitoriysi vazifasini bajaradi.
2. Uzluksiz klinik ma'lumotlarni qo'llab-quvvatlash. Komponent turli manbalardan, jumladan davolash muassasalari, laboratoriyalar, diagnostika markazlari, farmatsevtik tizimlar va boshqa manbalardan olingan ma'lumotlarni birlashtiruvchi yaxlit elektron bemor dossyesi — Clinical Health Record'ni shakllantirish va yuritishni ta'minlaydi.
3. Interoperabellik va ma'lumotlar almashinuvi. CHR ichki va tashqi tizimlar bilan integratsiya qilish uchun ochiq interfeyslarni, jumladan FHIR REST API'ni taqdim etadi hamda DHP komponentlari va tashqi tibbiy xizmat ko'rsatuvchi tashkilotlar o'rtasida ma'lumot almashishning yagona formatlarini qo'llab-quvvatlaydi.
4. Boshqariladigan kirish va xavfsizlikni qo'llab-quvvatlash. Komponent MSM'ning avtorizatsiya va autentifikatsiya mexanizmlaridan foydalangan holda rollarga asoslangan kirish nazoratini (ABAC) va roziliklarni boshqarish modelini (Consent Management) ta'minlaydi hamda barcha operatsiyalarni majburiy audit qilishni amalga oshiradi.
5. Normativ talablarga muvofiqlik va ma'lumotlar kuzatuvchanligini ta'minlash. Klinik ma'lumotlar bilan bog'liq barcha harakatlar tibbiy axborot tizimlariga qo'yilgan talablar, ISO/HL7 standartlari va mahalliy normativ-huquqiy hujjatlarga, jumladan shaxsiy ma'lumotlarni himoya qilish talablariga muvofiq qayd etiladi.
6. Analitika va hisobotlarni qo'llab-quvvatlash. CHR analitik va hisobot tizimlari uchun yagona ma'lumotlarni taqdim etadi hamda statistika, epidemiologik nazorat, davolash samaradorligini monitoring qilish va tibbiy tadqiqotlar uchun ma'lumotlarni olish imkonini beradi.

### Diagnostika va nurli vizualizatsiya
### Laboratoriya

"Laboratoriya" komponenti Digital Health Platform doirasida laboratoriya ma'lumotlarini standartlashtirilgan tarzda boshqarish uchun yaratilmoqda. U ma'lumotlarni markazlashtirilmagan holda saqlash, formatlarning mos kelmasligi va natijalar bilan ishlashning yagona jarayoni mavjud emasligi bilan bog'liq asosiy muammolarni hal qiladi.

"Laboratoriya" komponenti quyidagilarni ta'minlaydi:

- Laboratoriya yo'llanmalari, biologik namunalar, natijalar va tadqiqot xulosalari haqidagi ma'lumotlarni markazlashtirilgan tarzda saqlash.
- FHIR resurslari — Observation, Specimen, DiagnosticReport va ServiceRequest'dan foydalangan holda ma'lumotlarni standartlashtirish va unifikatsiya qilish. Bu turli laboratoriyalar, tibbiyot muassasalari va axborot tizimlari o'rtasida laboratoriya ma'lumotlarining o'zaro mosligini ta'minlaydi.
- Analitika va hisobotlar uchun asos yaratish, jumladan tadqiqotlarning chastotasi va aniqligini monitoring qilish, epidemiologik tendensiyalarni aniqlash hamda laboratoriya diagnostikasi sifatini oshirish.
- Tegishli shartlar va kirish huquqlari mavjud bo'lganda ilgari bajarilgan testlardan qayta foydalanish hisobiga tadqiqotlarning takrorlanishini kamaytirish.

[Laboratoriya tekshiruvini tayinlashdan natijani olishgacha](workflow-lab.html) jarayoni ushbu resurslar bir-biriga qanday bog'lanishini ko'rsatadi - tayinlashdan namuna olish orqali e'lon qilingan hisobotgacha.

### Asosiy ma'lumotlarni boshqarish (MDM)
Ma'lumotlarni boshqarishning asosiy xizmati raqamli sog'liq platformasining (DHP) asosiy komponentidir. U turli tibbiy axborot tizimlaridan (MIS) olingan ma'lumotlarni birlashtirish, standartlashtirish va markazlashtirilgan saqlashni ta'minlaydi. Platforma yadrosi tarkibida ishlaydigan MDM barcha ulangan raqamli sogʻliqni saqlash xizmatlari uchun yagona ishonchli manba boʻlib xizmat qiladi. Bu milliy tizimda maʼlumotlarning uzluksizligi, aniqligi va mosligini kafolatlaydi.

Asosiy funktsiyalari:

- Sog'liqni saqlash tashkiloti ma'lumotlarini boshqarish
  - Yagona identifikatorlar asosida tibbiy muassasalarni verifikatsiya qilish
- Tibbiyot xodimlari haqidagi maʼlumotlarni boshqarish
  - Shifokorlar, hamshiralar va texnik xodimlarning yagona reyestrini yuritish
  - Tibbiyot xodimlarining malaka maʼlumotlarini hisobga olish
- Maʼlumotnoma bazalarini boshqarish
  - Tibbiy xizmatlar
  - Tashkilotlar
  - Mutaxassisliklar va boshqalar.
- Tashqi tizimlar bilan integratsiya:
  - Uchinchi tomon MIS (tibbiy axborot tizimlari)
  - LIS (laboratoriya axborot tizimi)
  - RIS (radiologiya axborot tizimi)
  - Milliy registrlar

MDM xizmati maʼlumotlarning oʻz vaqtida, ishonchli va mavjud boʻlishini taʼminlaydi; samarali muvofiqlashtirishni, normativ talablarga rioya etilishini hamda sifatli tibbiy yordam koʻrsatish uchun axborot xavfsizligini qoʻllab-quvvatlaydi. MDM yozuvlarni solishtirish va dublikatlarni aniqlash uchun foydalanadigan identifikatorlar [Identifikator tizimlari](identifiers.html) sahifasida belgilangan.

MDM xizmati oddiy yordamchi modul emas, balki Oʻzbekistonning raqamli sogʻliqni saqlash transformatsiyasining asosi hisoblanadi. U maʼlumotlar sifatini, oʻzaro ishlash imkoniyatini (interoperabellikni) va xavfsizlikni taʼminlaydi hamda DHP doirasida tashabbuslarni amalga oshirishni qoʻllab-quvvatlaydi. Xalqaro standartlarga asoslangan va milliy tizimlar bilan integratsiyalashgan MDM'ning ishlab chiqilishi va joriy etilishi raqamli sogʻliqni saqlash ekotizimini barqaror va kengaytiriladigan tarzda shakllantirishga xizmat qiladi.


### Metama'lumotlar va xavfsizlikni boshqarish (MSM)
Yagona raqamli sogʻliqni saqlash platformasini (DHP) ishlab chiqish doirasida ushbu xizmat maʼlumotlarni himoya qilish, ularning tavsifini standartlashtirish va kirish huquqini nazorat qilish mexanizmlarini joriy etishda muhim rol oʻynaydi.

Ushbu xizmatni ishlab chiqish va joriy etish DHP doirasida saqlanadigan va qayta ishlanadigan maʼlumotlarni tavsiflash, tuzilmalashtirish, himoya qilish va audit qilish jarayonlarini standartlashtirish, shuningdek, axborot xavfsizligi, shaxsiy maʼlumotlarni himoya qilish va sogʻliqni saqlashni tartibga solish sohasidagi qonunchilik talablariga muvofiqlikni taʼminlash zarurati bilan belgilanadi.

Metamaʼlumotlar va Axborot xavfsizligini boshqarish xizmatining maqsadi quyidagilardan iborat:

- DHPga ulangan sogʻliqni saqlash ekotizimi komponentlari oʻrtasida ishonchli, standartlashtirilgan va himoyalangan oʻzaro aloqani quyidagilar orqali taʼminlash:
  - Metamaʼlumotlar — FHIR serverining imkoniyatlari, cheklovlari va tuzilmasini markazlashgan hamda mashina oʻqiy oladigan tarzda tavsiflash; bu CapabilityStatement resursi, StructureDefinition profillari, shuningdek lugʻatlar va klassifikatorlar (CodeSystem, ValueSet) orqali ifodalanadi.
   - Xavfsizlikni boshqarish:
- kirish huquqini nazorat qilish, amallarni shaffof audit qilish va bemor roziligini boshqarish (Consent),
- operatsiyalar muallifligini va ularning huquqiy ahamiyatini qayd etish (Provenance),
- harakatlarni va hodisalarni roʻyxatga olish (AuditEvent).
- Har bir ishtirokchi (bemor, shifokor, tizim, administrator) quyidagilarni aniq tushunadigan raqamli muhit yaratish:
- Platforma nima qiladi
- Maʼlumotlar qanday himoyalanadi
- Kim, qachon va qanday maqsadda maʼlumotlarga kirish huquqiga ega

Metamaʼlumotlar xizmati quyidagi hollarda qoʻllaniladi:

- Server qaysi resurslar, amallar, versiyalar va profillarni qoʻllab-quvvatlashini aniqlash
- O'zaro aloqa uchun FHIR mijozini avtomatik ravishda sozlash
- Kengaytmalar, cheklovlar va foydalanuvchi profillari tavsifini olish
- Xalqaro yoki milliy talablarga muvofiqligini tekshirish

Axborot xavfsizligini boshqarish xizmati shaxsiy tibbiy maʼlumotlar bilan ishlash zarur boʻlgan hollarda qoʻllaniladi, jumladan:

- Elektron tibbiy hujjatlarni imzolash (Provenance)
- Bemorning tibbiy ma'lumotlarga kirishini boshqarish (Consent)
- Foydalanuvchilarning bacha operatsiyalari va harakatlarinining auditini yuritish (AuditEvent)
- Axborot xavfsizligi insidentlarini tekshirish
- Shifokor va bemorning huquqiy manfaatlarini himoya qilish (hodisalar va mualliflikni qayd etish orqali).

Platforma taqdim etadigan endpointlar va mijoz ularda autentifikatsiyani qanday amalga oshirishi [API kirishi](api-access.html) sahifasida tavsiflangan.

### Hamshiralik ishi

"Hamshiralik ishi" komponenti hamshiralik yordamini tashkil etish, rejalashtirish, ko'rsatish va hujjatlashtirish uchun mo'ljallangan bo'lib, unda aholini patronaj (uyga tashrif) asosida kuzatishga alohida e'tibor qaratiladi. U patronaj hamshiralari, birlamchi bo'g'in shifokorlari hamda bemorlarga ambulator sharoitda va uyda yordam ko'rsatuvchi poliklinika mutaxassislarini raqamli qo'llab-quvvatlaydi.

Komponent quyidagilarni ta'minlaydi:

- hamshiralik yordami uchun yo'llanmalarni; ularda patronaj tashrifining maqsadi, klinik ko'rsatma va tayinlangan hamshira ko'rsatiladi (ServiceRequest, Condition);
- patronaj tashrifini va unda ko'rsatilgan hamshiralik yordamini ro'yxatga olishni (Encounter);
- tashrif davomida olingan kuzatuvlarni, jumladan hayotiy ko'rsatkichlar, antropometriya va shikoyatlarni qayd etishni (Observation);
- bajarilgan hamshiralik protseduralarini, masalan fizioterapiya, massaj, bog'lam qo'yish hamda vena ichiga va mushak ichiga inyeksiyalarni hisobga olishni (Procedure);
- xavf omillari, hayot sifati va davolanishga rioya qilishni baholash uchun qo'llaniladigan standartlashtirilgan baholash formalari va ularning to'ldirilgan natijalarini (Questionnaire, QuestionnaireResponse);
- bemorning tashrif natijalari, bajarilgan protseduralar va tavsiyalarga bemor portali orqali kirishini;
- patronaj faoliyatini monitoring qilishni hamda sog'liqni saqlash tashkilotlari va hududlar kesimida hisobotlar shakllantirishni.

Patronaj tashrifi o'tkaziladigan maqsadlar - vaksinatsiyadan keyingi va tug'ruqdan keyingi patronaj, reproduktiv yoshdagi ayollar patronaji, profilaktik ko'rik, surunkali kasalliklarni dispanser kuzatuvi va uyda statsionar yordam - ushbu qo'llanmada [skrining va uyga tashrif kodlari](CodeSystem-screening-code-cs.html) sifatida e'lon qilingan hamda [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) profilining `code` elementida qo'llaniladi.

Hamshiralik tashriflarini rejalashtirishni "Qabulga yozish va jadvalni boshqarish" komponenti bajaradi.

### Bemorning klinik marshrutini boshqarish

PHJM xizmati bemorning raqamli "yoʻlini" belgilaydi — dastlabki murojaatdan davolash epizodining yakuniy natijasigacha, oraliq kuzatuvlar, klinik tayinlovlar va oʻzaro taʼsirlarni ham oʻz ichiga olgan holda. Xizmatning maqsadi — Yagona raqamli sogʻliqni saqlash platformasi (UDHP) doirasida bemorning davolanish jarayonini uzluksiz, tuzilmaviy va ishonchli tarzda qoʻllab-quvvatlash, quyidagilar orqali:

* bemorga oid barcha asosiy klinik hodisalarni yagona zanjirga integratsiya qilish: murojaatlar, tashxislar, kuzatuvlar, davolash, epizodlar va natijalar;

* FHIR resurslaridan foydalanib maʼlumotlarni standartlashtirilgan saqlash va sogʻliqni saqlash tashkilotlari, tibbiy axborot tizimlari (MIS) hamda platforma oʻrtasida bogʻlash;

* bemor, shifokor va administrator uchun davolashning yagona manzarasini taqdim etish — mashina oʻqiy oladigan, tahliliy va vizual shakllarda.

PHJMning asosiy vazifalari va qoʻllanish holatlari:

- Bemorning toʻliq tarixini (tibbiy kartasini) koʻrish:
  - turli sogʻliqni saqlash tashkilotlaridan barcha tashriflar, tashxislar, tekshiruvlar va retseptlarni yagona elektron bemor kartasiga birlashtirish;
  - shifokorlarga avvalgi murojaatlar kontekstiga kirish imkonini berish (jumladan, statsionar, ambulator va laborator maʼlumotlar bilan.
- Davolash samaradorligi va natijalarini tahlil qilish:
  - takroriy murojaatlar, qaytalanishlar va surunkali kasalliklarni aniqlash;
  - asosiy koʻrsatkichlar boʻyicha bemor holati dinamikasini monitoring qilish.
- Idoralararo hamkorlikni qoʻllab-quvvatlash:
  - turli tibbiy muassasalar va yordam darajalari oʻrtasida kommunikatsiyani yengillashtirish;
  - tekshiruvlarning takrorlanishini bartaraf etish va bemor yukini kamaytirish.
- Bemorni oʻz salomatligini boshqarishga jalb etish:
  - shaxsiy kabinet orqali bemorga oʻz tibbiy hodisalariga kirish imkonini berish;
  - qabulga tayyorgarlik koʻrish, salomatlik dinamikasini kuzatish va retseptlar bajarilishini nazorat qilish imkonini yaratish.
- Tibbiy yordam sifatini nazorat qilish:
  - tibbiy amallarning toʻliqligi, oʻz vaqtida bajarilishi va asoslanganligini baholash;
  - tibbiy amallarda normadan ogʻishlar, takroriy murojaatlar va asossiz retseptlarni aniqlash.
- Bemorlarning fikr-mulohazasini portal orqali yigʻish:
  - muayyan muassasa, shifokor yoki xizmat ishini baholash;
  - koʻrsatilgan tibbiy yordam sifatini tahlil qilish;
  - bemorlarning ishonchini mustahkamlash.

[Bemor yo'li (Episode of Care)](workflow-patient-journey.html) jarayoni EpisodeOfCare, Encounter va ularga qayd etiladigan klinik resurslar bir-biriga qanday bog'lanishini ko'rsatadi.

### Retseptlar

[Elektron retsept va dori vositasini berish](workflow-prescription.html) jarayoni ushbu komponentning Texnik loyihasi tayyorlanayotgan vaqtda retsept yozish va dori vositasini berish qanday modellashtirilishini tavsiflaydi.

### Jamoat salomatligi bo'yicha hisobotlar
### Sifatni ta'minlash
### Yo'llanmalar

"Yo'llanmalar" komponenti Yagona raqamli sog'liqni saqlash platformasi (DHP) doirasida bemor yo'llanmalarini shakllantirish, uzatish, bajarish va monitoring qilish jarayonlarini markazlashtirilgan tarzda boshqarish uchun mo'ljallangan.

Komponent quyidagilarni ta'minlaydi:

- bemorning tibbiy yordam darajalari o'rtasida shaffof marshrutizatsiyasini;
- yo'llanmalar statuslarini yaratilgan vaqtdan boshlab bajarilishigacha nazorat qilishni;
- yo'llanmalarning yo'qolishini va tibbiy xizmatlarning asossiz takrorlanishini oldini olishni.

Yo'llanma yettita o'lcham bo'yicha tasniflanadi: maqsadi (diagnostik, davolash, konsultatsiya, gospitalizatsiya, reabilitatsiya), tibbiy yordam darajasi (birlamchi, ikkilamchi, uchlamchi), shoshilinchlik darajasi (favqulodda, shoshilinch, rejali), xizmat ko'rsatish usuli (shaxsan yoki telemeditsina orqali), natijasi, xizmatni qo'llab-quvvatlash (transport, gospitalizatsiya yoki bemorni boshqa joyga o'tkazmaslik) va moliyalashtirish. Maqsadi `ServiceRequest.category` elementida, shoshilinchlik darajasi esa `ServiceRequest.priority` elementida ko'rsatiladi; tibbiy yordam darajasi, xizmat ko'rsatish usuli, moliyalashtirish hamda gospitalizatsiya yoki transportga ehtiyoj kengaytmalarda saqlanadi.

Yo'llanmaning o'zi [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) resursi bo'lib, u jarayon uchun asosiy ishonchli manba hisoblanadi. Yo'llanma davlat sug'urtasi hisobidan moliyalashtirilganda platforma qo'shimcha ravishda kelishish [Task](StructureDefinition-uz-core-referral-approval-task.html) resurslari zanjirini - oilaviy shifokor, mutaxassis, hududiy komissiya, respublika komissiyasi, sug'urta jamg'armasi, gospitalizatsiya - yaratadi; bu zanjir bosqichlarni boshqaradi va ularning har biridagi muddatni nazorat qiladi. Boshqa moliyalashtirish shakllarida Task yaratilmaydi. Task resurslarini platformaning o'zi biznes hodisalariga javoban ochadi va yopadi; ular uchun alohida foydalanuvchi interfeysi nazarda tutilmagan. Yo'llanmaning bajarilishi unga reference saqlovchi Encounter, Procedure, DiagnosticReport, Observation yoki Composition resursi sifatida qayd etiladi va yo'llanma faqat o'z toifasiga mos klinik tasdiq mavjud bo'lgandagina yakunlanadi. [Elektron yo'llanmaning hayot sikli](workflow-referral.html) ushbu bog'lanishlarni, kelishish zanjirini va status qoidalarini to'liq bayon qiladi.

Komponent tibbiy yordam ko'rsatishni muvofiqlashtirishning muhim elementi hisoblanadi hamda bemorni davolashning uzluksizligini va jarayon ishtirokchilari o'rtasidagi o'zaro hamkorlikning shaffofligini ta'minlaydi.

### Reimbursatsiya

"Reimbursatsiya" komponenti klinik, ma'muriy va ijtimoiy-iqtisodiy ma'lumotlar integratsiyasi asosida tibbiy xizmatlar xarajatlarini qoplash jarayonlarini avtomatlashtirish uchun mo'ljallangan, jumladan:

- klinik ma'lumotlar asosida asoslantirilgan reimbursatsiya so'rovlarini shakllantirishni (Claim, ClaimResponse);
- tibbiy yordam ko'rsatish kontekstini hisobga olishni (Encounter);
- amalda ko'rsatilgan xizmatlarni hisobga olgan holda kompensatsiyalarni hisoblash uchun ma'lumotlarni taqdim etishni (Procedure, MedicationDispense);
- xizmatlar zarurligini tasdiqlash uchun diagnostik ma'lumotlarni taqdim etishni (Condition, Observation);
- uzoq muddatli davolanishni hisobga olishni (CarePlan);
- hujjatli tasdiqlarni qayta ishlashni (Composition);
- reimbursatsiya so'rovlarini qayta ishlashni.

Komponent Davlat tibbiy sug'urta jamg'armasi tomonidan reimbursatsiya so'rovlarini qayta ishlash uchun zarur bo'lgan bemorning tibbiy ma'lumotlari va ko'rsatilgan tibbiy xizmatlar haqidagi ma'lumotlarning markazlashtirilgan agregatori vazifasini bajaradi. U DHP'ning turli domenlaridan ma'lumotlarni birlashtiradi hamda ularni Davlat tibbiy sug'urta jamg'armasiga muvofiqlashtirilgan tarzda qayta ishlash va uzatishni ta'minlaydi.

Asosiy vazifalari:

- sug'urta to'lovlari haqidagi ma'lumotlar fragmentatsiyasini kamaytirish;
- reimbursatsiya jarayonlari shaffofligini oshirish;
- sug'urta holatlarini qayta ishlashni avtomatlashtirish;
- sog'liqni saqlash tizimi ishtirokchilari o'rtasida interoperabellikni ta'minlash.

SHIF va u bilan shartnoma tuzgan tashkilotlar qanday identifikatsiya qilinishi [To'lovchini identifikatsiya qilish](payor-identification.html) sahifasida tavsiflangan.

### Skrining jadvallarini boshqarish

"Skrining jadvallarini boshqarish" komponenti O'zbekiston Respublikasining milliy sog'liqni saqlash tizimi doirasida skrining tadbirlarini markazlashtirilgan tarzda boshqarish uchun yagona raqamli servisni yaratish maqsadida ishlab chiqilmoqda. Komponentning vazifasi skrining tekshiruvlarini rejalashtirish, tayinlash, o'tkazish va monitoring qilishni avtomatlashtirish hamda aholi orasida kasalliklar va xavf omillarini o'z vaqtida aniqlashni ta'minlashdan iborat.

Komponent quyidagilarni ta'minlaydi:

- skrininglarni markazlashtirilgan tarzda hisobga olishni;
- aholining profilaktik dasturlar bilan qamrovini oshirishni;
- ma'lumotlarning shaffofligi va ochiqligini;
- milliy va mahalliy tibbiy tizimlar bilan integratsiyani;
- qarorlarni qo'llab-quvvatlashni, jumladan Questionnaire orqali xavflarni baholashni.

So'rovnomalarning o'zi hamda ularni ko'rsatish va to'ldirish tartibi [So'rovnomalar](forms.html) sahifasida tavsiflangan.

### Ta'minot

"Ta'minot" komponenti Digital Health Platform doirasida tibbiy uskunalar va kritik tibbiy zaxiralar haqida yaxlit manzarani shakllantirish hamda undan sog'liqni saqlash tashkilotlaridagi operativ ishda ham, sog'liqni saqlashni boshqarish organlarining analitik ishida ham foydalanish imkonini berish uchun mo'ljallangan.

Komponent quyidagilarni ta'minlaydi:

- tibbiy uskunalarni sog'liqni saqlash tashkilotlari va joylashuvlar kesimida hisobga olishni hamda foydalanuvchi huquqlari doirasida uskuna yozuvlarini yaratish va yangilashni;
- uskunalarning joriy holatini qayd etishni va nosoz uskunalar ro'yxatini ko'rishni;
- vakolatli foydalanuvchilar uchun uskunalar va dori vositalari haqidagi ma'lumotlarni qidirish, ko'rish va filtrlashni;
- kritik tibbiy zaxiralarni - reanimatsiya koykalari, o'pkani sun'iy ventilyatsiya qilish apparatlari, mutaxassisliklar bo'yicha mavjud shifokorlar, vaksinalar, qon va qon komponentlari, defibrillyatorlar va narkoz apparatlarini - ularni yetkazib beruvchi tizimlardan konsolidatsiya qilishni;
- davlat tomonidan bepul yoki imtiyozli shartlarda beriladigan dori vositalari va tibbiy buyumlar ro'yxatini yuritishni; bu ro'yxat aholiga bemor portali orqali ko'rsatiladi;
- resurslar mavjudligi bo'yicha hududlar va tashkilotlar kesimida agregatlangan analitika va dashboardlarni.

### Vaksinatsiyani boshqarish

"Vaksinatsiyani boshqarish" komponenti milliy sog'liqni saqlash tizimi miqyosida vaksinatsiya jarayonlarini boshqarish uchun yagona standartlashtirilgan raqamli servisni yaratish maqsadida ishlab chiqilmoqda.

Komponentning vazifasi vaksinatsiya haqidagi ma'lumotlarning tarqoqligini bartaraf etish, vaksinatsiya jarayonlarining shaffofligi va boshqaruvchanligini oshirish, shuningdek tibbiyot tashkilotlari, davlat organlari va analitik tizimlar o'rtasida ishonchli hamda o'z vaqtida ma'lumot almashinuvini ta'minlashdan iborat.

Komponent quyidagilarni ta'minlaydi:

- bemorlarning vaksinatsiyasi haqidagi ma'lumotlarni markazlashtirilgan tarzda hisobga olishni;
- vaksinatsiyaning to'liq hayotiy siklini qo'llab-quvvatlashni, jumladan tayinlash, rejalashtirish, o'tkazish va kuzatishni;
- tibbiy axborot tizimlari va milliy vaksinatsiya dasturlari bilan integratsiyani;
- aholining immunizatsiya darajasini monitoring qilish uchun analitika va hisobotlarni shakllantirishni.

[Vaksinatsiya](workflow-immunization.html) jarayoni milliy taqvim, u shakllantiradigan tavsiya va yuborilgan doza bir-biriga qanday bog'lanishini ko'rsatadi.

### Komponentlararo resurs arxitekturasi

Amalda yuqorida tavsiflangan bir nechta komponent bir xil FHIR resurslari bilan almashadi. Ushbu diagramma resurs darajasiga tushadi: har bir komponent qaysi resurslarga egalik qiladi va ulardan qaysilari boshqa komponent bilan bog'lanadi. Har bir komponent boshida yopiq bo'lib, faqat resurslar sonini ko'rsatadi; resurslar ro'yxatini ochish uchun uni bosing yoki Enter tugmasini bosing, yopish uchun yana bosing. Oddiy chiziqlar ikki komponentning keng integratsiyasini yoki ikkala komponent yopiq bo'lganda bitta chiziqqa birlashtirilgan bir nechta resurs aloqasini, strelkalar esa muayyan resursning bir komponentdan boshqasiga o'tishini ko'rsatadi. Ko'chirish uchun sudrang, masshtabni o'zgartirish uchun aylantiring, aloqalarni ko'rish uchun resurs, komponent yoki legenda elementiga sichqonchani olib boring yoki tab bilan o'ting.

<br clear="all"/>

<style>
  .arch-diagram {
    --blueprint: #2255AA;
    --blueprint-soft: #dce7f6;
    --pencil-soft: #e6e6e6;
    --ink: #1b232a;
    --ink-soft: #5c6b74;
    --paper: #ffffff;
    --paper-raised: #f4f7f9;
    --line: #c9d2d6;
    --grid: rgba(27, 35, 42, 0.05);
    --mono-font: ui-monospace, "SFMono-Regular", Menlo, Consolas, "Liberation Mono", monospace;
    margin: 1.5rem 0;
  }
  .arch-legend { display: flex; flex-wrap: wrap; gap: 1.1rem; margin: 0 0 0.7rem; font-size: 0.78rem; color: var(--ink-soft); }
  .arch-legend span { display: inline-flex; align-items: center; gap: 0.35rem; }
  .arch-legend span[data-legend] { cursor: pointer; padding: 2px 4px; margin: -2px -4px; border-radius: 3px; }
  .arch-legend span[data-legend]:hover, .arch-legend span[data-legend]:focus-visible { background: var(--paper-raised); }
  .arch-legend .swatch-box { width: 12px; height: 12px; background: var(--blueprint-soft); border: 1px solid var(--line); }
  .arch-legend .swatch-box.pale { background: var(--pencil-soft); }

  .arch-wrap { display: flex; gap: 1rem; align-items: flex-start; flex-wrap: wrap; }

  .arch-canvas {
    flex: 1 1 480px;
    height: 640px;
    position: relative;
    overflow: hidden;
    border: 1px solid var(--line);
    cursor: grab;
    touch-action: none;
    background-color: var(--paper);
    background-image:
      linear-gradient(var(--grid) 1px, transparent 1px),
      linear-gradient(90deg, var(--grid) 1px, transparent 1px);
    background-size: 24px 24px;
  }
  .arch-canvas.dragging { cursor: grabbing; }
  .arch-canvas svg { display: block; }

  .arch-info {
    flex: 0 0 240px;
    min-width: 220px;
    border: 1px solid var(--line);
    background: var(--paper-raised);
    padding: 0.9rem 1rem;
    font-size: 0.82rem;
    max-height: 640px;
    overflow-y: auto;
  }
  .arch-info-hint { margin: 0 0 0.8rem; color: var(--ink-soft); font-size: 0.82rem; }
  .arch-stat-row {
    display: flex; justify-content: space-between; gap: 0.6rem;
    padding: 0.28rem 0; border-bottom: 1px solid var(--line);
    color: var(--ink-soft); font-size: 0.78rem;
  }
  .arch-stat-row:last-child { border-bottom: none; }
  .arch-stat-n { color: var(--ink); font-weight: 600; font-family: var(--mono-font); }

  .arch-info-title {
    font-family: var(--mono-font);
    font-weight: 600; font-size: 0.92rem; color: var(--ink); margin: 0 0 0.2rem;
  }
  .arch-info-sub { font-size: 0.76rem; color: var(--ink-soft); margin: 0 0 0.8rem; }
  .arch-rel-list { list-style: none; margin: 0; padding: 0; display: flex; flex-direction: column; gap: 0.55rem; }
  .arch-rel-item { border-left: 2px solid var(--blueprint); padding-left: 0.6rem; }
  .arch-rel-head { font-size: 0.8rem; color: var(--ink); font-weight: 600; }
  .arch-rel-desc { font-size: 0.76rem; color: var(--ink-soft); margin: 0.15rem 0 0; }

  .arch-node { cursor: pointer; }
  .arch-node rect { transition: opacity 0.15s ease; }
  .arch-node text { pointer-events: none; }
  .arch-edge { transition: opacity 0.15s ease; }
  .arch-node.dim, .arch-edge.dim { opacity: 0.15; }
  .arch-node.active { filter: drop-shadow(0 0 3px var(--blueprint)); }
  #arch-arrow path { fill: var(--blueprint); }

  @media (prefers-reduced-motion: reduce) {
    .arch-node rect, .arch-edge { transition: none; }
  }

  @media (max-width: 720px) {
    .arch-canvas { height: 420px; }
    .arch-info { flex-basis: 100%; }
  }
</style>

<div class="arch-diagram">
  <div class="arch-legend">
    <span data-legend="profiled" tabindex="0" role="button"><span class="swatch-box"></span> ushbu qo'llanmada profillangan</span>
    <span data-legend="unprofiled" tabindex="0" role="button"><span class="swatch-box pale"></span> nomlangan, lekin hali profillanmagan</span>
  </div>
  <div class="arch-wrap">
    <div class="arch-canvas" id="arch-canvas">
      <svg id="arch-svg" width="100%" height="100%"></svg>
    </div>
    <div class="arch-info" id="arch-info">
      <div id="arch-info-body">
        <p class="arch-info-hint">Komponent resurslarini ochish uchun uni bosing. Aloqalarni ko'rish uchun resurs, komponent yoki legenda elementiga sichqonchani olib boring yoki tab bilan o'ting.</p>
        <div class="arch-stat-row"><span>Ko'rsatilgan komponentlar</span><span class="arch-stat-n" id="arch-stat-components">–</span></div>
        <div class="arch-stat-row"><span>Resurslar</span><span class="arch-stat-n" id="arch-stat-resources">–</span></div>
        <div class="arch-stat-row"><span>Aloqalar</span><span class="arch-stat-n" id="arch-stat-relationships">–</span></div>
      </div>
    </div>
  </div>
</div>
<script src="architecture-diagram.js"></script>
