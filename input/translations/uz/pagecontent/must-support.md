> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core profillaridagi ko'plab elementlar Must Support deb belgilangan (profil jadvallaridagi <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> bayrog'i). Ushbu sahifada bu majburiyat aynan nimani anglatishi ta'riflanadi.

### Qisqacha

> Agar element Must Support deb belgilangan bo'lsa, resursni *yaratuvchi* tizim ma'lumot mavjud bo'lganda uni to'ldira olishi kerak, resursni *iste'mol qiluvchi* tizim esa uni xatosiz qabul qila va qayta ishlay olishi kerak.

Must Support *imkoniyat* haqidadir. U o'z-o'zidan elementni majburiy qilib qo'ymaydi - buni kardinallik (`1..`) qiladi. Element Must Support bo'lib, ayni vaqtda ixtiyoriy (`0..1`) ham bo'lishi mumkin: siz uni faqat *ma'lumot bo'lganda* yuborishingiz kerak.

### Must Support ishlatiladigan ikki kontekst

Bayroq qaysi profilda paydo bo'lishiga qarab biroz boshqacha ma'no kasb etadi:

- **UZ Core profillari** - element O'zbekiston ichidagi tizimlar resursni almashganda to'ldirilishi kerak.
- **DHP'ga xos profillar** - DHP platformasi elementni qo'llab-quvvatlaydi va mijoz tizim ma'lumotga ega bo'lganda uni to'ldirishi kerak.

Amalda qoida har ikkala holatda ham bir xil: ma'lumot bo'lganda elementni yuboring va uni qabul qila olishingiz kerak.

### Must Have va Must Support

Har bir profil sahifasi yuqorisida ikkita to'plamni oddiy tilda sanab o'tadi:

- "Each [Resource] Must Have …" - majburiy elementlar (kardinallik `1..1` yoki `1..*`). Ular har doim mavjud bo'lishi kerak, aks holda resurs yaroqsiz bo'ladi.
- "Each [Resource] Must Support …" - Must Support elementlari (<span style="padding-left: 3px; padding-right: 3px; color: white; background-color: #D50000" title="This element must be supported">S</span> bayrog'i). Ular *ma'lumot mavjud bo'lganda* to'ldirilishi va qabul qilinganda qayta ishlanishi kerak.

Aniq misol, [UZ Core Patient](StructureDefinition-uz-core-patient.html):

- Must Have: kamida bitta `identifier`.
- Must Support: `name`, `gender`, `birthDate`, `address`, `active` hamda fuqarolik / millat / boshqaruvchi-tashkilot kengaytmalari.

Demak, Patient identifikatorsiz yaroqsiz bo'ladi, biroq tug'ilgan sanasi haqiqatan ham noma'lum bo'lgan Patient hamon yaroqli - siz `birthDate`ni qo'llab-quvvatladingiz, shunchaki qiymatga ega emas edingiz.

### "Qo'llab-quvvatlash" element turiga ko'ra nimani anglatadi

Majburiyat element turiga qarab talqin qilinadi:

| Element turi | Yaratuvchi tizim quyidagini qila olishi kerak … | Iste'mol qiluvchi tizim quyidagini qila olishi kerak … |
|--------------|-------------------------------|-------------------------------|
| **Primitiv** (string, date, code, boolean …) | qiymat bo'lganda uni taqdim eta olishi | qiymatni o'qiy va saqlay/ko'rsata olishi |
| **Murakkab** (masalan, `address`, `name`) | o'zi Must Support bo'lgan kichik elementlardan kamida bittasini taqdim eta olishi | o'sha kichik elementlarni qayta ishlay olishi |
| **Reference** | sanab o'tilgan maqsadli profil(lar)ga havola taqdim eta olishi | havolani aniqlay va unga ergasha olishi |
| **Kodlangan** (value set'ga bog'langan) | bog'langan value set'dan kodni taqdim eta olishi | o'sha value set'dagi kodlarni talqin qila olishi |
| **Slayslangan** element | o'z ma'lumotiga tegishli slayslarni taqdim eta olishi | qabul qilgan har qanday belgilangan slaysni qayta ishlay olishi |

### Ma'lumotga ega bo'lmaganingizda

Elementni qo'llab-quvvatlaydigan, biroq unga qiymati bo'lmagan yaratuvchi [Umumiy qo'llanma → Yo'q va bostirilgan ma'lumot](general-guidance.html#missing-data) qoidalariga amal qilishi kerak. Qisqacha:

- Agar qiymat shunchaki mavjud bo'lmasa, elementni tushirib qoldiring (kardinallik uni majburiy qilmasa).
- Agar element majburiy bo'lsa-yu, lekin qiymat haqiqatan noma'lum bo'lsa, qiymat o'ylab topish o'rniga tegishli "unknown" kodidan yoki data-absent-reason'dan foydalaning.
- Must Support elementini qondirish uchun hech qachon o'rinbosar yoki soxta qiymat yubormang va uning o'rniga hech qachon bo'sh element yoki bo'sh string yubormang - buning o'rniga elementni tushirib qoldiring.

### Must Support qanday majburlanadi

DHP platformasi har bir yaratish va yangilashni tegishli profil va uning value set'lariga nisbatan validatsiya qiladi - tuzilma, kardinallik, ma'lumot turlari va terminologiya bog'lanishlari. Majburiy kardinallikni yoki required bog'lanishni buzgan resurs `OperationOutcome` bilan rad etiladi (qarang [Umumiy qo'llanma → Xatolar](general-guidance.html#errors)). Server *iste'molchilar* (ma'lumotni qabul qiluvchi tizimlar) uchun Must Support qoidalari tufayli resursni rad eta olmaydi. Biroq sizning tizimingiz platformaga ulanishidan oldin baribir ushbu qoidalarga nisbatan sinovdan o'tkaziladi.

### Must Support nima *emas*

- U majburiylik bilan bir xil emas. Must Support ixtiyoriy element ma'lumotingiz bo'lmaganda yo'q bo'lishi mumkin.
- U "UI'da ko'rsatish" degani emas. U sizning tizimingiz elementni texnik jihatdan qayta ishlay olishini anglatadi; uni qanday namoyon etishingiz sizning dizayn tanlovingizdir.
- U noqulay bo'lganda yumshatilmaydi. Agar sizning tizimingiz Must Support elementini shunchaki yarata yoki qayta ishlay olmasa, u muvofiq emas.

### Keyingi qadam qayerga

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) - bayroqlar va jadval ustunlari.
- [Umumiy qo'llanma](general-guidance.html) - yo'q ma'lumot, birliklar, terminologiya, Bundle'lar.
- Har bir profil sahifasi - har bir resurs uchun "Must Have / Must Support" ro'yxatlari.
