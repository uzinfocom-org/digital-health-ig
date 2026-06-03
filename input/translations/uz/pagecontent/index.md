# O'zbekiston yagona raqamli sog'liqni saqlash platformasi

Ushbu FHIR R5 joriy etish qo'llanmasi (IG) ishlab chiqish jarayonida bo'lib, hozircha production muhitida foydalanish uchun tayyor emas. U faqat [Raqamli sog'liqni saqlash platformasi](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) (DHP) doirasida testdan o'tkazish va fikr-mulohazalarni yig'ish uchun mo'ljallangan. IG takomillashtirilishi davomida uning mazmuni o'zgarib boradi.

Joriy ustuvor vazifa — asosiy resurslar profillarini DHPda joriy etishni ta'minlash uchun ularni avvalo yakunlash. Shundan so'ng, modellashtirish imkoniyatlari yetarli bo'lganda, IGning matnli qismining qolgan qismi to'ldiriladi.

### Kirish qismi

Ushbu qo'llanma O'zbekistonning Raqamli sog'liqni saqlash platformasi doirasida FHIRni joriy etish bo'yicha rasmiy hujjatlar manbai hisoblanadi hamda milliy sog'liqni saqlash tizimining real sharoitlari, ehtiyojlari va xususiyatlariga moslashtirilgan.

Qo'llanma quyidagilar uchun asos bo'lib xizmat qiladi:

* FHIR resurslarini O'zbekistonning lokal ehtiyojlariga moslashtiradigan hamda respublikada raqamli sog'liqni saqlashni qo'llab-quvvatlash uchun yagona bazani yaratadigan UZ Core profillarini ishlab chiqish;
  * bunday moslashtirishlar umumiy identifikatorlarni modellashtirish, HL7 kod tizimlari tarjimalari va barcha tizimlar tomonidan qo'llab-quvvatlanishi lozim bo'lgan elementlarni belgilashni o'z ichiga oladi

* Alohida klinik va ma'muriy jarayonlarni qo'llab-quvvatlaydigan muayyan ssenariylar uchun profillarni ishlab chiqish;
  * masalan, tug'ilish va o'lim reyestrlari

* Xalqaro va milliy klassifikatorlar hamda terminologiyalardan foydalanish (SNOMED-CT, LOINC, ICD-10, ICD-11, CBPEPW-2020).

Ushbu IGdan foydalanish tibbiy ma'lumotlarni taqdim etishda izchillikni ta'minlaydi, tizimlar interoperabelligini oshiradi va raqamli sog'liqni saqlashning kengaytiriladigan ekotizimi uchun mustahkam poydevor yaratadi.

### Loyiha tarixi

Raqamli sog'liqni saqlash platformasi (DHP) "Sog'liqni saqlashni raqamlashtirish islohotini qo'llab-quvvatlash" loyihasi doirasida ishlab chiqilmoqda. Loyiha O'zbekiston Respublikasi va KfW Taraqqiyot banki o'rtasidagi [kelishuv](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) asosida amalga oshiriladi. Ushbu tashabbus O'zbekiston Respublikasi Prezidentining 2023-yil 1-maydagi "Sog'liqni saqlash tizimini raqamlashtirish bo'yicha qo'shimcha chora-tadbirlar to'g'risida"gi PQ-140-son qarori hamda O'zbekiston Respublikasi Prezidentining 2023-yil 28-dekabrdagi "Sog'liqni saqlash tizimini raqamlashtirishni jadallashtirish va ilg'or raqamli texnologiyalarni joriy etish bo'yicha qo'shimcha chora-tadbirlar to'g'risida"gi PQ-415-son qaroriga muvofiq keladi.

### Qamrov sohalari

O'zbekiston Respublikasi Raqamli sog'liqni saqlash platformasi quyidagi 19 ta xizmatga asoslanadi:

* Metama'lumotlar va xavfsizlikni boshqarish
* Asosiy ma'lumotlarni boshqarish
* Bemorning sog'liqni saqlash marshrutini boshqarish
* Elektron tibbiy yozuvlar
* Yo'llanmalar
* Retsept
* Qabulga yozish va jadvalni boshqarish
* Laboratoriya
* Diagnostika va nurli vizualizatsiya
* Tez tibbiy yordam
* Ta'minot
* Xarajatlarni qoplash
* Klinik qarorlarni qo'llab-quvvatlash
* Hamshiralik ishi
* Qon resurslarini boshqarish
* Vaksinatsiyani boshqarish
* Jamoat salomatligi bo'yicha hisobotlar
* Skrining jadvallarini boshqarish
* Sifatni ta'minlash

### Versiyalarni aniqlash

Artefaktlar, masalan profillar, kengaytmalar, kod tizimlari, qiymatlar to'plamlari, nomlash tizimlari va ushbu IGdagi FHIR paketi IGning o'z versiyasiga amal qiladi. IGni versiyalash `MAJOR.MINOR.PATCH` formatidagi [Semantic Versioning (SemVer)](https://semver.org/) tamoyillariga asoslanadi. Masalan, IGning `2.0.0` versiyasidagi barcha artefaktlar bir xil `2.0.0` versiya raqamiga ega bo'ladi. Bu esa artefakt IGning qaysi versiyasiga tegishli ekanligini oson aniqlash imkonini beradi.

Artefakt ishlab chiqish jarayonida bo'lsa va production muhitida foydalanish uchun tayyor bo'lmasa, uning statusi `draft` bo'ladi. Artefakt production muhitida foydalanish uchun tayyor bo'lganda, uning statusi `active` deb belgilanadi. Artefakt foydalanishdan chiqarilganda, uning statusi `retired` bo'ladi.

Kelgusida artefaktlarni real sharoitlarda testdan o'tkazish uchun yetuklik modeli joriy etiladi, biroq hozircha barcha artefaktlar production muhitida foydalanish uchun tayyor bo'lmaguncha `draft` hisoblanadi.

Versiyalashdan yagona istisno rasmiy [THO](https://terminology.hl7.org) kod tizimlarining tarjima qo'shimchalari bo'lib, ular asl kod tizimining versiyalash tartibiga amal qiladi. Masalan, agar THO kod tizimi versiyasi `2.1.0` bo'lsa, qo'shimcha ham, IG versiyasidan qat'i nazar, `2.1.0` bo'ladi. Agar THO kod tizimi `2.2.0` versiyasigacha yangilansa, qo'shimcha ham `2.2.0` versiyasigacha yangilanadi. Agar THO kod tizimi o'zgarmasdan turib qo'shimchani yangilash talab etilsa, qo'shimchaga qo'shimcha versiya raqami qo'shiladi, masalan `2.2.0.1`.

#### IG'ning ishlab chiqish versiyasi: 0.x.x
- IG statusi: `draft`
- Artefaktlar statusi: `experimental` bayrog'i `true` ga o'rnatilgan `draft`
- Ishlab chiqish va testdan o'tkazishning dastlabki bosqichlarida foydalaniladi
- Kichik versiyalar orasida mos kelmaydigan o'zgarishlar bo'lishi mumkin

#### IG'ning ishlab chiqarish versiyalari: 1.x.x+
- IG statusi: `active`
- Artefaktlar statusi: `experimental` bayrog'i `false` ga o'rnatilgan `active`
- Birinchi barqaror versiya 1.0.0 dan boshlanadi
- SemVer moslik qoidalariga qat'iy rioya qilinadi

#### IG'ning keyingi yirik versiyalari: 2.x.x, 3.x.x va hokazo
- Production versiyalariga o'xshash
- IGning ayrim qismlarida mos kelmaydigan o'zgarishlar yoki sezilarli arxitektura yangilanishlarini bildiradi

### Intellektual mulk bayonotlari
{% lang-fragment ip-statements.xhtml %}
