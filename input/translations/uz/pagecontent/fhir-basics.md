DHP implementatsiya qo'llanmasi [HL7 FHIR R5 standarti](https://hl7.org/fhir/R5/)ga xos atamalar, belgilash uslublari va dizayn tamoyillaridan foydalanadi. FHIR asosiy tamoyillarini va FHIR spetsifikatsiyalarini qanday o'qishni bilish muhimdir. FHIR bilan tanish bo'lmagan o'quvchilarga ushbu implementatsiya qo'llanmasining qolgan qismini o'qishdan oldin quyidagi tushuntirish bilan tanishib chiqish tavsiya etiladi.

### FHIR umumiy ko'rinishi

Fast Healthcare Interoperability Resources (FHIR) — bu Health Level 7 (HL7) tomonidan ishlab chiqilgan platforma spetsifikatsiyasi bo'lib, sog'liqni saqlash tizimlari va ilovalari o'rtasida tibbiy ma'lumot almashinuvini qo'llab-quvvatlaydi. Tibbiy ma'lumotlar bemor sog'liqni saqlash ekotizimida harakatlanayotganda mavjud va tushunarli bo'lishi kerak. Buni ta'minlash uchun FHIR sog'liqni saqlash jarayonining barcha bosqichlarida, barcha yurisdiksiyalarda va turli kontekstlarda qo'llaniladigan imkoniyatlar to'plamini aniqlaydi. FHIR universal qo'llanilishga ega — ya'ni u turli implementatsiya muhitlarida ishlatilishi mumkin, masalan: elektron tibbiy yozuvlarga asoslangan ma'lumot almashish (EHR), mobil ilovalar yoki bulutli xizmatlar. Bundan tashqari, FHIR tez va oson implementatsiyaga qaratilgan bo'lib, yangi ishlab chiquvchilar uchun kirish to'siqlarini kamaytiradi.

### Klinik qo'llanishi

FHIR sog'liqni saqlash bilan bog'liq barcha ma'lumotlar almashinuvini standartlashtirish va yo'lga qo'yish uchun mo'ljallangan. Bunga faqat klinik ma'lumotlar emas, balki tibbiy-administrativ va ilmiy-tadqiqot ma'lumotlari ham kiradi. FHIR inson va veterinariya tibbiyotida ham qo'llanilishi mumkin hamda statsionar, shoshilinch, uzoq muddatli, ambulator va jamoaviy tibbiy yordam kabi turli kontekstlarda butun dunyo bo'ylab mos keladi. HL7 FHIR afzalliklaridan biri — u hech bir EHR ishlab chiqaruvchisi yoki sog'liqni saqlash tizimiga bog'liq emas. Shuningdek, bu spetsifikatsiya har kim uchun bepul foydalanish mumkin va yangi ilovalarni ishlab chiqishda yordam beruvchi ko'plab ochiq misollar mavjud.

### Resurslar
FHIR'ning asosiy qurilish bloklari resurslar deb ataladi va DHP'da ular JSON formatida ifodalanadi. Resurs — bu ma'lumotlarni almashish yoki saqlash uchun mo'ljallangan ma'lumot elementlari to'plamidir. Masalan, Patient resursi tibbiy xizmat olayotgan shaxs haqida demografik va ma'muriy ma'lumotlarni o'z ichiga oladi. Tibbiyot sohasining turli jihatlarini qamrab oluvchi ko'plab resurslar mavjud — ilmiy tadqiqotlardan tortib, bemorni boshqarish, tibbiy hisob-kitob va klinik hisobotlargacha. Asosiy maqsad — resurslar to'plami ko'pchilik klinik holatlarni qamrab olishi. Bu resurslarni havolalar orqali birlashtirish orqali amalga oshiriladi. Masalan, Patient resursini Observation (bemorning klinik kuzatuvlari), Condition (muammo yoki tashxis) va Medication (dori tarkibi, miqdori va kuchi) resurslariga bog'lash orqali o'z ehtiyojlaringizga mos holatlarni implementatsiya qilishingiz mumkin — buning uchun [mavjud profil](artifacts.html)lardan foydalaniladi.

### Profil yaratish
Profil (Profile) — bu ma'lum bir stsenariyda resursdan foydalanish qoidalarini belgilaydi. Profil yaratish (profiling) atamasi resurslarga cheklovlar qo'llash jarayonini anglatadi. Bu resurslar mutaxassis ishchi guruhlar tomonidan eng ko'p uchraydigan foydalanish holatlarini qamrab olish uchun yaratilgan. Ularning umumiy tabiati sababli ushbu spetsifikatsiyadagi qoidalar nisbatan moslashuvchan. FHIR resursiga cheklovlar qo'llash orqali uni ma'lum bir stsenariyga moslashtirish mumkin — masalan, DHP tomonidan qo'llab-quvvatlanadigan maxsus foydalanish holatlariga. DHP tomonidan aniqlangan profillarni asosiy resurslar bilan birlashtirish orqali O'zbekiston sog'liqni saqlash ekotizimiga mos ilovalar yaratish mumkin.

### Manzillar bilan ishlash

UZ Core O'zbekiston ichki manzillari hamda xalqaro manzillarni qo'llab-quvvatlaydi.

#### O'zbekiston manzilini yaratish

O'zbekiston manzillari uchun ma'muriy bo'linmalar bo'yicha ruxsat etilgan **kodlangan qiymatlar** dan foydalanish talab qilinadi. Tizim tuman, viloyat va shahar kodlarining Raqamli aholini boshqarish tizimi (DPM) ma'lumotlariga mos kelishini tekshiradi:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "UZ",
    "state": "1727",            // Region code must come from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (e.g., 1727 for Tashkent Region)
    "district": "1727220",      // District code must come from from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (e.g., 1727220 for Bekobod district)
    "city": "17150085",         // Mahalla code must come from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (citizens' assembly)
    "line": ["Amir Temur ko'chasi"],
    "text": "Yangi Sergeli mahallasi, Amir Temur ko'chasi, 15-uy, 42-xonadon"
  }]
}
```

#### Xalqaro manzil yaratish

O'zbekiston tashqarisidagi manzillar uchun ma'muriy bo'linmalar erkin matn sifatida kiritiladi, majburiy qiymatlar to'plami (valueset) talab qilinmaydi, bu esa xorijiy manzil tuzilmalari uchun moslashuvchan ifodani ta'minlaydi:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "US",
    "state": "California",             // Erkin matn
    "district": "Los Angeles County",  // Erkin matn
    "city": "Los Angeles",             // Erkin matn
    "line": ["123 Main Street", "Apt 4B"],
    "postalCode": "90001"
  }]
}
```

### Terminologiya

Interoperabellikni yaxshilash uchun standartlashtirilgan terminologiya muhim ahamiyatga ega. Bunday yondashuv sog'liqni saqlash ma'lumotlarini bir xil ma'lumot tushunchalarida yig'ish, hujjatlashtirish va qayta ishlash imkonini beradi. Bu tibbiyot xodimlariga klinik bilimlarni xalqaro miqyosda tan olingan yagona tizimda almashish va solishtirish imkonini beradi. FHIR butun dunyo bo'yicha zarur bo'lgan barcha kodlarni o'zi aniqlab berolmaydi, shu sababli kodlarni boshqarish va ularning ma'nosini belgilash uchun ikki turdagi resurslardan foydalanadi:

* CodeSystem - kodlar to'plami bo'lib, unda kodlarning ma'nolari aniqlanadi. Bu konsepsiya turli kodlar va ularning ta'riflarini o'z ichiga olgan katalogga o'xshaydi. CodeSystem misollari: SNOMED CT, LOINC yoki foydalanuvchi tomonidan yaratilgan tizim.

* ValueSet — bitta yoki bir nechta CodeSystemlardan olingan kodlar tanlovini belgilaydi va ma'lum kontekstda foydalanish uchun mo'ljallangan. ValueSet real kodlarga havolalarni o'z ichiga oladi. Afzalligi shundaki, CodeSystem yangilansa, undan olingan ValueSet'lar ham avtomatik ravishda yangilanadi.

#### CodeSystem va til qo'llab-quvvatlovi

Ushbu implementatsiya qo'llanmasi terminologiyani boshqarishda ikki xil yondashuvdan foydalanadi.
O'zbekiston uchun xos klinik tushunchalar uchun asl kodlari o'zbek tilida yaratilgan CodeSystemlar aniqlanadi va ular rus hamda ingliz tillaridagi nomlar bilan to'ldiriladi, bu esa ko'p tilli implementatsiyalarni qo'llab-quvvatlaydi. FHIR tomonidan ishlatiladigan HL7 Terminology (THO) standart terminologiyalari uchun esa o'zbek va rus tarjimalarini qo'shuvchi CodeSystem supplementlar taqdim etiladi.
Bu ko'p tilli nomlar faqat foydalanuvchi interfeysida ko'rsatish uchun mo'ljallangan; kodlarning o'zi esa tilga bog'liq bo'lmagan identifikatorlardir va ilovalar tomonidan bir xil tarzda qayta ishlanadi.

#### ConceptMaplar

FHIR'dagi ConceptMaplar turli terminologiya tizimlari orasidagi kodlarning o'zaro mosligini va xaritalanishini aniqlaydi, bu esa semantik interoperabellikni ta'minlaydi.
DHP implementatsiyasida ilovalar faqat mahalliy aniqlangan kodlardan ma'lumot almashish va saqlashda foydalanishi kerak. Xalqaro standartlar bilan integratsiyani osonlashtirish uchun DHP ConceptMap resurslarini taqdim etadi, ular ICD-10, SNOMED CT yoki LOINC kabi xalqaro terminologiyalarni mahalliy O'zbekiston kodlari bilan bog'laydi.
Ilovalar ConceptMap $translate amaliyotidan foydalanib, xalqaro kodlarni avtomatik tarzda mahalliy kodlarga aylantirishi mumkin — bu esa DHP talablariga muvofiqlikni saqlagan holda global sog'liqni saqlash standartlariga moslikni ta'minlaydi.

### Havolalar

Qo'shimcha o'qish uchun quyidagi havolalardan foydalanish tavsiya etiladi:

* [FHIR qisqacha tavsifi](http://hl7.org/fhir/r5/summary.html)
* [Dasturchilar uchun kirish qismi](http://hl7.org/fhir/r5/overview-dev.html)
* [Ma'lumot turlari](http://hl7.org/fhir/r5/datatypes.html)
* [Kodlardan foydalanish](http://hl7.org/fhir/r5/terminologies.html)
* [Resurslar o'rtasidagi havolalar](http://hl7.org/fhir/r5/references.html)
* [Resurs va profil ta'riflarini o'qish](http://hl7.org/fhir/r5/formats.html#table)
* [Asosiy resurs ta'riflari](http://hl7.org/fhir/r5/resource.html)

### Tegishli FHIR Implementatsiya qo'llanmalari

{% lang-fragment dependency-table.xhtml %}

{% lang-fragment globals-table.xhtml %}

