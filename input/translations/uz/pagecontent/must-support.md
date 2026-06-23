UZ Core profillaridagi ko'plab elementlar Must Support belgisi bilan (profil jadvallaridagi <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> belgisi) belgilangan. Ushbu sahifada mazkur talab aynan nimani anglatishi tushuntiriladi.

### Qisqacha

> Agar element Must Support belgisi bilan belgilangan bo'lsa, resursni *yaratuvchi* tizim tegishli ma'lumot mavjud bo'lganda ushbu elementni to'ldira olishi shart, resursni *qabul qiluvchi* tizim esa uni xatosiz qabul qilib, qayta ishlay olishi shart.

Must Support tizimning texnik *imkoniyatiga* taalluqlidir. U o'z-o'zidan elementni majburiy qilmaydi - buni karralilik (`1..`) belgilaydi. Element Must Support bo'lib, ayni paytda ixtiyoriy (`0..1`) bo'lishi mumkin: uni faqat *ma'lumot mavjud bo'lganda* yuborish shart.

### Must Support qo'llaniladigan ikki holat

Belgi qaysi profilda ko'rsatilganiga qarab biroz farqli ma'noni anglatadi:

- **UZ Core profillari** - O'zbekiston ichidagi tizimlar resurs almashganda element to'ldirilishi kerak.
- **DHPga xos profillar** - DHP platformasi elementni qo'llab-quvvatlaydi va mijoz tizimi ma'lumot mavjud bo'lganda uni to'ldirishi shart.

Amalda har ikkala holatda ham qoida bir xil: ma'lumot mavjud bo'lsa, element yuborilishi, tizim esa uni qabul qila olishi shart.

### Must Have va Must Support

Har bir profil sahifasining yuqori qismida ikki toifa sodda tilda keltiriladi:

- "Har bir [Resource] uchun Must Have …" - majburiy elementlar (karralilik `1..1` yoki `1..*`). Ular har doim mavjud bo'lishi shart, aks holda resurs yaroqsiz hisoblanadi.
- "Har bir [Resource] uchun Must Support …" - Must Support elementlari (<span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> belgisi). Ular *ma'lumot mavjud bo'lganda* to'ldirilishi va qabul qilinganda qayta ishlanishi shart.

Aniq misol - [UZ Core Patient](StructureDefinition-uz-core-patient.html):

- Must Have: kamida bitta `identifier`.
- Must Support: `name`, `gender`, `birthDate`, `address`, `active`, shuningdek nationality / citizenship / managing-organization extensionlari.

Shunday qilib, identifiersiz Patient yaroqsiz hisoblanadi, biroq tug'ilgan sanasi haqiqatan ham noma'lum bo'lgan Patient baribir yaroqli: `birthDate` elementi qo'llab-quvvatlangan, biroq uning qiymati mavjud bo'lmagan.

### Turli elementlar uchun "qo'llab-quvvatlash" nimani anglatadi

Talab element turiga qarab quyidagicha talqin qilinadi:

| **Element turi** | **Resursni yaratuvchi tizim … bajarishi shart** | **Resursni qabul qiluvchi tizim … bajarishi shart** |
|--------------|-------------------------------|-------------------------------|
| **Sodda element** (string, date, code, boolean …) | qiymat mavjud bo'lganda uni taqdim eta olishi shart | qiymatni o'qiy, saqlay yoki ko'rsata olishi shart |
| **Murakkab element** (masalan, `address`, `name`) | o'zi Must Support bo'lgan ichki elementlardan kamida bittasini taqdim eta olishi shart | ushbu ichki elementlarga ishlov bera olishi shart |
| **Reference** | ko'rsatilgan maqsadli profil(lar)ga Reference shakllantira olishi shart | Reference'ni aniqlab, u orqali ko'rsatilgan resursga murojaat qila olishi shart |
| **Kodlangan element** (ValueSet'ga bog'langan) | bog'langan ValueSet'dan kod taqdim eta olishi shart | shu ValueSet'dagi kodlarni talqin qila olishi shart |
| **Kesimlarga ajratilgan** element | o'z ma'lumotlariga tegishli kesimlarni taqdim eta olishi shart | qabul qilingan belgilangan kesimlarning istalganiga ishlov bera olishi shart |

### Ma'lumot mavjud bo'lmaganda

Elementni qo'llab-quvvatlaydigan, ammo uning qiymatiga ega bo'lmagan yaratuvchi tizim [Umumiy tavsiyalar → Mavjud bo'lmagan va yashirilgan ma'lumotlar](general-guidance.html#missing-data) bo'limidagi qoidalarga amal qilishi kerak. Qisqacha:

- Agar qiymat shunchaki mavjud bo'lmasa, elementni yubormang (karralilik uni majburiy qilgan holatlar bundan mustasno).
- Agar element majburiy bo'lsa-yu, qiymat haqiqatan ham noma'lum bo'lsa, qiymat o'ylab topish o'rniga tegishli "unknown" kodi yoki data-absent-reason mexanizmidan foydalaning.
- Must Support elementiga qo'yilgan talabni bajarish uchun hech qachon o'rinbosar yoki soxta qiymat yubormang va uning o'rniga bo'sh element yoki bo'sh satr ham yubormang - elementni umuman yubormang.

### Must Support talablariga rioya etilishi qanday tekshiriladi

DHP platformasi har bir yaratish va yangilash operatsiyasini tegishli profil va uning ValueSet'lariga muvofiqligi bo'yicha tekshiradi - tuzilma, karralilik, ma'lumot turlari va terminologik bog'lashlar. Majburiy karralilik yoki required darajasidagi bog'lash talabini buzadigan resurs `OperationOutcome` bilan rad etiladi (qarang: [Umumiy tavsiyalar → Xatolar](general-guidance.html#errors)). Server Must Supportning *qabul qiluvchi tizimlarga* (ma'lumotlarni qabul qiladigan tizimlarga) oid qoidalari sababli resursni rad eta olmaydi. Biroq tizimingiz platformaga ulanishidan oldin ushbu qoidalarga muvofiqligi baribir tekshiriladi.

### Must Support *nimani anglatmaydi*

- Bu majburiylik bilan bir xil emas. Must Support belgili ixtiyoriy element ma'lumot mavjud bo'lmaganda resursda bo'lmasligi mumkin.
- Bu "foydalanuvchi interfeysida ko'rsatish" degani emas. Bu tizimingiz elementga texnik jihatdan ishlov bera olishini anglatadi; uni foydalanuvchiga qanday taqdim etish - loyihaviy qaroringiz.
- Talab noqulay bo'lganda yumshamaydi. Agar tizimingiz Must Support elementini shakllantira yoki qayta ishlay olmasa, u talablarga muvofiq emas.

### Keyingi bo'limlar

- [Ushbu qo'llanmadan qanday foydalanish](how-to-read.html) - belgilar va jadval ustunlari.
- [Umumiy tavsiyalar](general-guidance.html) - mavjud bo'lmagan ma'lumotlar, o'lchov birliklari, terminologiya va Bundle'lar.
- Har bir profil sahifasi - har bir resurs uchun "Must Have / Must Support" ro'yxatlari.
