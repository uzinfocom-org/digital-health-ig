### Tez tibbiy yordam
\< bu xizmat bo'yicha qisqacha tavsif keyinchalik qo'shiladi \\>

### Qabulga yozilish va jadvalni boshqarish
### Qon resurslarini boshqarish
### Klinik qarorlarni qo'llab-quvvatlash
### Elektron tibbiy yozuvlar
### Diagnostika va nurli vizualizatsiya
### Laboratoriya
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
### Bemorning davolanish jarayonini boshqarish (PHJM)

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
### Xarajatlarni qoplash
### Skrining jadvalini tashkil etish
### Tibbiy ta'minot
### Emlashni boshqarish
