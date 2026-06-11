> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

DHP implementatsiya qo'llanmasi [HL7 FHIR R5 standarti](https://hl7.org/fhir/R5/)ga xos atamalar, belgilash uslublari va dizayn tamoyillaridan foydalanadi. FHIR asosiy tamoyillarini va FHIR spetsifikatsiyalarini qanday o'qishni bilish muhimdir. Shu sababli, FHIR bilan tanish bo'lmagan o'quvchilarga ushbu implementatsiya qo'llanmasining qolgan qismini o'qishdan oldin quyidagi tushuntirish bilan tanishib chiqish tavsiya etiladi.

### FHIR umumiy ko'rinishi

Fast healthcare interoperability resources (FHIR) — bu Health Level 7 (HL7) platforma spetsifikatsiyasi bo'lib, sog'liqni saqlash tizimlari va ilovalari o'rtasida tibbiy ma'lumot almashinuvini qo'llab-quvvatlaydi. Bemorlar sog'liqni saqlash ekotizimi bo'ylab harakatlanayotganda tibbiy ma'lumotlar mavjud va tushunarli bo'lishi kerak. Buni ta'minlash uchun FHIR sog'liqni saqlash jarayonining barcha bosqichlarida, barcha yurisdiksiyalarda va turli kontekstlarda qo'llaniladigan imkoniyatlar to'plamini aniqlaydi. FHIR universal qo'llanilishga ega — ya'ni u turli implementatsiya muhitlarida ishlatilishi mumkin, masalan: EHR'ga asoslangan ma'lumot almashish, mobil telefon ilovalari va bulutli aloqalar. Bundan tashqari, FHIR tez va oson implementatsiyaga kuchli e'tibor qaratadi, bu esa yangi ishlab chiquvchilar uchun FHIR bilan ishlashga kirish to'siqlarini kamaytiradi.

### Klinik qo'llanishi

FHIR sog'liqni saqlash bilan bog'liq barcha ma'lumotlar almashinuvini standartlashtirish va yo'lga qo'yish uchun mo'ljallangan. Bunga faqat klinik ma'lumotlar emas, balki sog'liqni saqlash bilan bog'liq ma'muriy va ilmiy-tadqiqot ma'lumotlari ham kiradi. FHIR inson va veterinariya tibbiyotida ham qo'llanilishi mumkin hamda statsionar, shoshilinch, uzoq muddatli, ambulator va jamoaviy tibbiy yordam kabi turli kontekstlarda butun dunyo bo'ylab mos keladi. HL7 FHIR afzalliklaridan biri — u hech bir EHR ishlab chiqaruvchisi yoki sog'liqni saqlash tizimiga bog'liq emas. Bundan tashqari, bu spetsifikatsiya har kim uchun bepul foydalanish mumkin va yangi ilovalarni ishlab chiqishda yordam beruvchi ko'plab ochiq misollar mavjud.

### Resurslar
FHIR'ning asosiy qurilish bloklari resurslar deb ataladi va DHP'da ular JSON formatida ifodalanadi. Resurs — bu ma'lumotlarni almashish yoki saqlash uchun mo'ljallangan, ma'lumot elementlari deb ataluvchi ma'lumot to'plami hisoblanadi. Masalan, Patient resursi tibbiy xizmat olayotgan shaxs haqida demografik va ma'muriy ma'lumotlarni o'z ichiga oladi. Tibbiyot sohasining turli jihatlarini qamrab oluvchi ko'plab resurslar mavjud — ilmiy tadqiqotlar va bemorni boshqarishdan tortib, tibbiy hisob-kitob va klinik hisobotlargacha. Asosiy maqsad — resurslar to'plami ko'pchilik klinik foydalanish holatlarini qamrab olishidir. Bunga resurslarni havolalar orqali birlashtirish bilan erishish mumkin. Masalan, Patient resursini Observation (bemorning klinik kuzatuvlarini saqlaydi), Condition (muammo yoki tashxis) va Medication (dorilar tarkibi, miqdori va kuchi) resurslariga bog'lash orqali [mavjud profillar](artifacts.html)dan foydalanib o'z ehtiyojlaringizga mos maxsus holatlarni implementatsiya qilishingiz va moslashtirishingiz mumkin.

### Profil yaratish
Profil ma'lum bir stsenariyda resursdan foydalanishni belgilaydi. Profil yaratish (profiling) atamasi asosiy (core) resurslar deb ataluvchi resurslarga cheklovlar qo'llash jarayonini anglatadi. Bu resurslar mutaxassislar ishchi guruhlari tomonidan eng ko'p uchraydigan foydalanish holatlarini qamrab olish uchun yaratilgan. Ularning umumiy tabiati sababli ushbu spetsifikatsiyadagi qoidalar nisbatan moslashuvchan. FHIR resursiga cheklovlar to'plamini qo'llash orqali uni ma'lum bir stsenariyga moslashtirish mumkin — masalan, DHP qo'llab-quvvatlaydigan maxsus foydalanish holatlariga. Asosiy resurslarni DHP aniqlagan profillar bilan birlashtirish orqali O'zbekiston sog'liqni saqlash ekotizimida o'z ehtiyojlaringizga mos ilovalar yaratish mumkin.

### Terminologiya
Interoperabellikni yaxshilash uchun standartlashtirilgan terminologiya muhim ahamiyatga ega. Standartlashtirilgan terminologiyadan foydalanish orqali sog'liqni saqlash ma'lumotlarini o'xshash ma'lumot tushunchalarida yig'ish, hujjatlashtirish va qayta ishlash mumkin. Bu tibbiyot xodimlariga klinik bilimlarni izchil va xalqaro miqyosda tan olingan tizimda almashish va solishtirish imkonini beradi. FHIR butun dunyo bo'yicha sog'liqni saqlash tizimida zarur bo'lgan har bir kodni aniqlab berolmaydi, shu sababli buning o'rniga kodlarni va ularning ma'nosini boshqarish uchun ikkita resursni taqdim etadi, ya'ni:

* CodeSystem - bir nechta kodlar va ularning ma'nosini aniqlaydigan kodlar to'plamidir. CodeSystem konsepsiyasi turli kodlar va ularning ta'riflarini o'z ichiga olgan katalogga o'xshaydi. CodeSystem SNOMED-CT yoki LOINC, hatto o'zingiz yaratgan tizim ham bo'lishi mumkin.

* ValueSet - bitta yoki bir nechta CodeSystemlardan olingan kodlar tanlovini belgilaydi va ma'lum bir kontekstda foydalanish uchun mo'ljallangan. ValueSet ma'lum bir CodeSystemdagi real kodlarga havolalarni o'z ichiga oladi. Afzalligi shundaki, CodeSystem yangilanganda, ushbu CodeSystemdagi kodlarni o'z ichiga olgan ValueSetlar avtomatik ravishda yangilanadi.

#### CodeSystemlar va til qo'llab-quvvatlovi
Ushbu IG terminologiyani boshqarishda ikki xil yondashuvdan foydalanadi. O'zbekiston uchun xos klinik tushunchalar uchun biz asl kodlari standart til sifatida o'zbek tilida yaratilgan original CodeSystemlarni aniqlaymiz va ularni ko'p tilli implementatsiyalarni qo'llab-quvvatlash uchun rus va ingliz tillaridagi nomlar (designation) bilan to'ldiramiz. FHIR tomonidan ishlatiladigan HL7 Terminology (THO) standart terminologiyalari uchun esa mavjud ingliz tiliga asoslangan terminologiyaga o'zbek va rus tarjimalarini qo'shuvchi CodeSystem supplementlarni taqdim etamiz. Bu ko'p tilli nomlar faqat foydalanuvchi interfeyslarida ko'rsatish maqsadiga xizmat qiladi — kodlarning o'zi esa tilga bog'liq bo'lmagan identifikatorlar bo'lib qoladi, ya'ni ilovalar ularni oxirgi foydalanuvchilar tanlagan ko'rsatish tilidan qat'i nazar izchil tarzda qayta ishlay oladi.

#### ConceptMaplar
FHIR'dagi ConceptMaplar turli terminologiya tizimlaridagi kodlar o'rtasidagi munosabatlar va xaritalashlarni aniqlaydi, bu esa har xil kodlash sxemalari o'rtasida semantik interoperabellikni ta'minlaydi. DHP implementatsiyasida ilovalar ma'lumot almashish va saqlash uchun faqat mahalliy aniqlangan kodlardan foydalanishi kerak. Xalqaro standartlar bilan integratsiyani osonlashtirish uchun DHP ConceptMap resurslarini taqdim etadi, ular umumiy xalqaro terminologiyalar (masalan, ICD-10, SNOMED CT yoki LOINC) bilan tegishli mahalliy O'zbekiston kodlari o'rtasida xaritalashlarni o'rnatadi. Ilovalar ConceptMap $translate amaliyotidan foydalanib, standart xalqaro kodlarni dasturiy yo'l bilan zarur mahalliy kodlarga aylantirishi mumkin, bu esa global sog'liqni saqlash standartlariga moslikni saqlagan holda DHP talablariga muvofiqlikni ta'minlaydi.

### Havolalar

Qo'shimcha o'qish uchun quyidagi havolalardan foydalanishni tavsiya etamiz:

* [FHIR qisqacha tavsifi](http://hl7.org/fhir/r5/summary.html)
* [Dasturchilar uchun kirish qismi](http://hl7.org/fhir/r5/overview-dev.html)
* [Ma'lumot turlari](http://hl7.org/fhir/r5/datatypes.html)
* [Kodlardan foydalanish](http://hl7.org/fhir/r5/terminologies.html)
* [Resurslar o'rtasidagi havolalar](http://hl7.org/fhir/r5/references.html)
* [Resurs va profil ta'riflarini qanday o'qish kerak](http://hl7.org/fhir/r5/formats.html#table)
* [Asosiy resurs ta'riflari](http://hl7.org/fhir/r5/resource.html)

### Tegishli FHIR Implementatsiya qo'llanmalari

{% lang-fragment dependency-table.xhtml %}

{% lang-fragment globals-table.xhtml %}
