# O'zbekiston Raqamli Sog'liqni Saqlash Platformasi

Ushbu FHIR R5 implementatsiya qo'llanmasi (IG) ishlab chiqish jarayonida bo'lib, hali ishlab chiqarish muhitida foydalanish uchun tayyor emas. U faqatgina [Digital Health Platform](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) (DHP) doirasida sinov va fikr-mulohazalarni yig'ish maqsadida mo'ljallangan. IG mazmuni ishlab chiqish davomida o'zgarishi mumkin.

Hozirgi ustuvor yo'nalish — DHP'da implementatsiyani ta'minlash uchun asosiy resurs profillarini yakunlash. Keyinchalik, modellashtirish imkoniyatlari kengaytirilgach, IG'ning qolgan matn qismi to'liq ishlab chiqiladi.

### Kirish qismi

Ushbu qo'llanma O'zbekiston Raqamli Sog'liqni Saqlash Platformasi doirasida FHIR'ni implementatsiya qilish uchun rasmiy hujjat bo'lib, mamlakat sog'liqni saqlash tizimining real sharoitlari, ehtiyojlari va xususiyatlariga moslashtirilgan.

Qo'llanma quyidagi yo'nalishlar uchun asos bo'lib xizmat qiladi:

* O'zbekiston sharoitlariga moslashtirilgan UZ Core profillarini ishlab chiqish, bu FHIR resurslarini mahalliy ehtiyojlarga moslashtirish va respublika bo'yicha yagona raqamli sog'liqni saqlash infratuzilmasini yaratish uchun zarur asosni ta'minlaydi;
  * bu moslashtirishlar umumiy identifikatorlarni modellashtirish, HL7 kod tizimlarining tarjimalari va barcha tizimlar tomonidan qo'llab-quvvatlanishi shart bo'lgan elementlarni belgilashni o'z ichiga oladi

* Ma'lum klinik yoki ma'muriy stsenariylarni qo'llab-quvvatlovchi maxsus profillarni ishlab chiqish;
  * masalan, tug'ilish va o'limni ro'yxatga olish tizimlari;

* Xalqaro va milliy tasnif hamda terminologiyalardan foydalanish — SNOMED CT, LOINC, ICD-10, ICD-11, CBPEPW-2020 va boshqalar.

Ushbu Implementatsiya qo'llanmasidan foydalanish tibbiy ma'lumotlarni ifodalashda izchillikni ta'minlaydi, tizimlararo interoperabellikni oshiradi hamda kengaytiriladigan raqamli sog'liqni saqlash ekotizimini yaratish uchun mustahkam asos yaratadi.

### Loyiha tarixi

Raqamli sog'liqni saqlash platformasi (DHP) "Sog'liqni saqlash tizimini raqamlashtirish islohotini qo'llab-quvvatlash" loyihasi doirasida ishlab chiqilmoqda. Loyiha O'zbekiston Respublikasi va KfW Taraqqiyot banki o'rtasidagi [bitim](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) asosida amalga oshirilmoqda. Ushbu tashabbus O'zbekiston Respublikasi Prezidentining 2023-yil 1-maydagi PQ-140-son qarori ("Sog'liqni saqlash tizimini raqamlashtirish bo'yicha qo'shimcha chora-tadbirlar to'g'risida") va 2023-yil 28-dekabrdagi PQ-415-son qarori ("Sog'liqni saqlash tizimini raqamlashtirishni jadallashtirish va ilg'or raqamli texnologiyalarni joriy etish bo'yicha qo'shimcha chora-tadbirlar to'g'risida") bilan uyg'unlashgan.

### Qamrov sohalari

O'zbekiston Respublikasi Raqamli Sog'liqni Saqlash Platformasi quyidagi 19 ta xizmat asosida tashkil etilgan:

* Metama'lumotlar va xavfsizlikni boshqarish (MSM)
* Asosiy ma'lumotlarni boshqarish (MDM)
* Bemorni davolash jarayonini boshqarish
* Elektron tibbiy yozuvlar
* Yo'llanmalar
* Retseptlar
* Qabul va rejalashtirish
* Laboratoriya
* Diagnostika va nurli vizualizatsiya
* Tez tibbiy yordam
* Tibbiy ta'minot
* Xarajatlarni qoplash
* Klinik qarorlarni qo'llab-quvvatlash
* Hamshiralik ishi
* Qon resurslarini boshqarish
* Emlashni boshqarish
* Jamoat salomatligi bo'yicha hisobotlar
* Skrining jadvalini boshqarish
* Sifatni ta'minlash

### Versiyalarni aniqlash

Ushbu Implementatsiya qo'llanmasida keltirilgan artefaktlar — profillar, kengaytmalar, kod tizimlari (CodeSystem), qiymatlar to'plamlari (ValueSet), nomlash tizimlari (NamingSystem) va FHIR paketlari — IG versiyasi bilan bir xil versiya raqamiga ega bo'ladi. IG versiyalash [Semantic Versioning (SemVer)](https://semver.org/) tamoyillariga asoslanadi va `MAJOR.MINOR.PATCH`formatida ifodalanadi. Masalan, agar IG versiyasi `2.0.0` bo'lsa, barcha artefaktlar ham `2.0.0` versiyasiga ega bo'ladi. Bu artefaktning qaysi IG versiyasiga tegishli ekanligini oson aniqlash imkonini beradi.

Artefakt ishlab chiqish jarayonida bo'lib, ishlab chiqarish uchun tayyor bo'lmaguncha, `draft`maqomiga ega bo'ladi. Ishlab chiqarishga tayyor bo'lganda esa active holatiga o'tkaziladi. Agar artefakt bekor qilingan bo'lsa, uning holati `retired` bo'ladi.

Haqiqiy muhitda artefaktlarni sinovdan o'tkazish uchun yetuklik (maturity) modeli kelajakda joriy etiladi, hozircha barcha artefaktlar `draft` maqomida hisoblanadi.

Versiyalashdan yagona istisno [THO](https://terminology.hl7.org) kod tizimlarining tarjima qo'shimchalari (supplement) bo'lib, ular asl tizim versiyasiga mos keladi. Masalan, agar THO kod tizimi versiyasi `2.1.0` bo'lsa, qo'shimcha ham `2.1.0` versiyasiga ega bo'ladi. Agar THO tizimi `2.2.0` versiyasiga yangilansa, qo'shimcha ham shunga mos ravishda yangilanadi. Agar qo'shimchani yangilash zarur bo'lib, lekin THO tizimining o'zi o'zgarmagan bo'lsa, versiyaga qo'shimcha raqam qo'shiladi — masalan, `2.2.0.1`.

#### IG'ning ishlab chiqish versiyasi: 0.x.x
- IG holati: `draft`
- Artefaktlar holati: `draft` with `experimental` flag set to `true`
- Dastlabki ishlab chiqish va testlash bosqichlarida qo'llaniladi
- Kichik versiyalar orasida o'zgarishlar bo'lishi mumkin

#### IG'ning ishlab chiqarish versiyalari: 1.x.x+
- IG holati: `active`
- Artefaktlar holati: `active` with `experimental` flag set to `false`
- Birinchi barqaror versiya: 1.0.0
- Qat'iy SemVer moslik qoidalariga amal qiladi

#### IG'ning keyingi yirik versiyalari: 2.x.x, 3.x.x va hokazo
- Ishlab chiqarish versiyalariga o'xshash
- IG'ning ba'zi qismlarida katta o'zgarishlar yoki arxitektura yangilanishlarini bildiradi

### Intellektual mulk bayonotlari
{% lang-fragment ip-statements.xhtml %}

