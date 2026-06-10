### Tez tibbiy yordam
\< bu xizmat bo'yicha qisqacha tavsif keyinchalik qo'shiladi \\>

### Qabulga yozish va jadvalni boshqarish
### Qon resurslarini boshqarish
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

MDM xizmati maʼlumotlarning oʻz vaqtida, ishonchli va mavjud boʻlishini taʼminlaydi; samarali muvofiqlashtirishni, normativ talablarga rioya etilishini hamda sifatli tibbiy yordam koʻrsatish uchun axborot xavfsizligini qoʻllab-quvvatlaydi.

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

### Hamshiralik ishi
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

### Retseptlar
### Jamoat salomatligi bo'yicha hisobotlar
### Sifatni ta'minlash
### Yo'llanmalar

"Yo'llanmalar" komponenti Yagona raqamli sog'liqni saqlash platformasi (DHP) doirasida bemor yo'llanmalarini shakllantirish, uzatish, bajarish va monitoring qilish jarayonlarini markazlashtirilgan tarzda boshqarish uchun mo'ljallangan.

Komponent quyidagilarni ta'minlaydi:

- bemorning tibbiy yordam darajalari o'rtasida shaffof marshrutizatsiyasini;
- yo'llanmalar statuslarini yaratilgan vaqtdan boshlab bajarilishigacha nazorat qilishni;
- yo'llanmalarning yo'qolishini va tibbiy xizmatlarning asossiz takrorlanishini oldini olishni.

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

### Skrining jadvallarini boshqarish
### Ta'minot
### Vaksinatsiyani boshqarish

"Vaksinatsiyani boshqarish" komponenti milliy sog'liqni saqlash tizimi miqyosida vaksinatsiya jarayonlarini boshqarish uchun yagona standartlashtirilgan raqamli servisni yaratish maqsadida ishlab chiqilmoqda.

Komponentning vazifasi vaksinatsiya haqidagi ma'lumotlarning tarqoqligini bartaraf etish, vaksinatsiya jarayonlarining shaffofligi va boshqaruvchanligini oshirish, shuningdek tibbiyot tashkilotlari, davlat organlari va analitik tizimlar o'rtasida ishonchli hamda o'z vaqtida ma'lumot almashinuvini ta'minlashdan iborat.

Komponent quyidagilarni ta'minlaydi:

- bemorlarning vaksinatsiyasi haqidagi ma'lumotlarni markazlashtirilgan tarzda hisobga olishni;
- vaksinatsiyaning to'liq hayotiy siklini qo'llab-quvvatlashni, jumladan tayinlash, rejalashtirish, o'tkazish va kuzatishni;
- tibbiy axborot tizimlari va milliy vaksinatsiya dasturlari bilan integratsiyani;
- aholining immunizatsiya darajasini monitoring qilish uchun analitika va hisobotlarni shakllantirishni.
