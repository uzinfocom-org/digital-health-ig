Ushbu sahifada UZ Core profillari bilan qanday ishlash kerakligi tushuntiriladi. Bu sizga "menda klinik vazifa bor" degan nuqtadan "mana kerakli resurs va menga kerak bo'lgan maydonlar" degan nuqtaga o'tishga yordam beradi. Implementatsiyani boshlashdan oldin ushbu sahifa bilan bir marta tanishib chiqing - unda har bir profil sahifasida qo'llaniladigan kelishuvlar tushuntirilgan.

Agar FHIR bilan endi tanishayotgan bo'lsangiz, avval [FHIR asoslari](fhir-basics.html) bilan tanishishdan boshlang, keyin ushbu sahifaga qayting.

### Profil nima

UZ Core yangi ma'lumotlar tuzilmalarini yaratmaydi. Har bir UZ Core profili standart FHIR R5 resursini (masalan, `Patient` yoki `Observation`) oladi va uning ustiga milliy qoidalarni qo'shadi: qaysi elementlar majburiy, qaysi elementlar qo'llab-quvvatlanishi shart, qaysi milliy identifikator tizimlari va terminologiyalardan foydalanish kerak, shuningdek, O'zbekistonga xos qaysi kengaytmalar qo'llaniladi. UZ Core profiliga mos keladigan FHIR resursi bazaviy FHIR resursi sifatida ham valid hisoblanadi.

Profillar faqat qoidalarni qo'shgani sababli, profil sahifasi asosan profil bazaviy FHIR'dan nimasi bilan farq qilishini ko'rsatadi: qaysi elementlarni to'ldirish kerak va qaysi ma'lumotlarni qayta ishlay olishingiz kerak. Qolgan barcha jihatlar [bazaviy FHIR R5 spetsifikatsiyasida](https://hl7.org/fhir/R5/) qanday ishlasa, xuddi shunday ishlaydi.

### Profil sahifasidagi to'rtta ko'rinish

Har bir profil sahifasida (masalan, [UZ Core Patient](StructureDefinition-uz-core-patient.html)) elementlar jadvali ustida profilning turli ko'rinishlarini tanlash imkonini beruvchi bir xil bo'limlar joylashgan:

| Ko'rinish | Nimalarni ko'rsatadi | Qachon foydalaniladi |
|------|---------------|----------------|
| **Key Elements (asosiy elementlar)** | Cheklov qo'yilgan, Must Support va majburiy elementlar - saralangan qisqa ro'yxat | Shu ko'rinishdan boshlang. U "Menga aslida nimalar kerak?" degan savolga javob beradi. |
| **Differential (bazaviy FHIR'dan farqlar)** | Faqat UZ Core bazaviy FHIR'ga nisbatan kiritgan o'zgarishlar | Milliy qoidalarni bir qarashda ko'rish uchun. |
| **Snapshot (to'liq tuzilma)** | Resursning barcha elementlari: bazaviy resurs + profil | Boshqa ko'rinishlarda ko'rsatilmagan element haqida to'liq ma'lumot kerak bo'lganda. |
| **All (barchasi)** | Barcha ma'lumotlar, jumladan, mosliklar va cheklovlar | Ma'lumotnoma sifatida. |

Implementatsiya bilan bog'liq aksariyat vazifalar uchun Key Elements ko'rinishi hamda ushbu sahifa va profil sahifasidagi tushuntiruvchi matn yetarli bo'ladi.

### Elementlar jadvali bilan ishlash

Jadvaldagi har bir satr bitta elementga (maydonga) mos keladi. Ustunlar:

- Nomi - element yo'li, masalan, `Patient.identifier` yoki `Observation.value[x]`. Chekinishlar elementlarning ichma-ich joylashuvini ko'rsatadi.
- Belgilar - eng muhim qoidalarni ifodalovchi qisqa belgilar:

  | Belgi | Ma'nosi | Siz uchun nimani anglatadi |
  |------|---------|------------------------|
  | **S** | Must Support | Agar ma'lumot mavjud bo'lsa, ushbu elementni to'ldira olishingiz va uni qabul qilganingizda qayta ishlay olishingiz kerak. [Must Support](must-support.html) bo'limiga qarang. |
  | **?!** | Modifikator element | Ushbu element/kengaytma resursning ma'nosini o'zgartiradi (masalan, `status = entered-in-error`). Ilovalar ushbu element/kengaytmani qayta ishlashi shart va uni e'tiborsiz qoldirishi mumkin emas. |
  | **&Sigma;** | Qisqa ko'rinish elementi | Qidiruv natijalarining qisqa ko'rinishida qaytariladi. |
  | **C** | Cheklov mavjud | Elementga invariant, ya'ni majburiy formal qoida qo'llaniladi. Batafsil ma'lumot uchun kursorni element ustiga olib boring yoki "Cheklovlar" bo'limini ko'ring. |
  | **I** | Invariant | Ma'lumotlar mos kelishi shart bo'lgan FHIRPath asosidagi formal qoida. |

- Karralilik - element necha marta ko'rsatilishi mumkinligini belgilaydi:

  | Karralilik | Ma'nosi |
  |-------------|---------|
  | `1..1` | Majburiy, aynan bitta. Shartli ravishda yuboriladi. |
  | `1..*` | Majburiy, kamida bitta. |
  | `0..1` | Ixtiyoriy, ko'pi bilan bitta. |
  | `0..*` | Ixtiyoriy, istalgan miqdorda. |

  Majburiy (`1..`) elementlar "Must Have" to'plamini tashkil qiladi. Must Support (`S`) elementlari esa "Must Support" to'plamini tashkil qiladi. Har bir profil sahifasining yuqori qismidagi tushuntiruvchi matnda ikkala to'plam ham sodda tilda keltiriladi, shuning uchun jadvalni alohida talqin qilishingiz shart emas.

- Turi - ma'lumot turi yoki references uchun ular qaysi resurs(lar)ga ishora qilishini ko'rsatadi. `Reference(UZ Core Patient)` kabi Reference ushbu profilga mos keladigan resursga ishora qilishi kerakligini anglatadi.
- Tavsif va cheklovlar - ta'rif, ValueSet'ga terminologik bog'lash va qat'iy belgilangan qiymatlar.

### References va CodeableReferences

Ikki xil tur boshqa resurslarga ishora qiladi va JSON tuzilmasida turlicha ichma-ich joylashadi.

Oddiy **`Reference`** faqat boshqa resursga ishora qiladi. Ko'rsatkich `reference` kaliti ostida satr ko'rinishida beriladi:

```json
"patient": { "reference": "Patient/example" }
```

**`CodeableReference`** - bu FHIR R5 turi bo'lib, bitta maydonda kodlangan tushunchani, resursga reference'ni yoki ikkalasini birgalikda saqlashi mumkin. Shu sababli `Immunization.reason` kabi maydon "ushbu kodlangan sabab tufayli" yoki "ushbu Condition resursi tufayli" degan ma'noni ifodalashi mumkin. CodeableReference resursga ishora qilganda, reference bir pog'ona chuqurroq - `reference` obyekti ichida joylashadi:

```json
"reason": [
  { "reference": { "reference": "Condition/example" } }
]
```

Ko'rsatkich o'rniga kod berish uchun `concept`'dan foydalaning:

```json
"reason": [
  { "concept": { "coding": [{ "system": "...", "code": "..." }] } }
]
```

Type ustuni qaysi tur bilan ishlayotganingizni ko'rsatadi: `Reference(...)` yoki `CodeableReference(...)`. Shubha tug'ilganda, har bir maydonning [bazaviy FHIR R5 spetsifikatsiyasidagi](https://hl7.org/fhir/R5/references.html) ta'rifi ustuvor hisoblanadi.

### Kesimlar (Slices)

Ba'zi elementlar kesimlarga ajratiladi: bir xil element o'z qoidalariga ega nomlangan variantlarga bo'linadi. Masalan, `Patient.identifier` elementi `nationalId`, `passportLocal`, `passportForeign` va boshqa kesimlarga ajratiladi; har bir kesim muayyan milliy identifikator tizimiga qat'iy biriktirilgan. Jadvalda kesimlar tegishli element ostida ichkariga surilgan satrlar ko'rinishida, kesim nomi bilan ko'rsatiladi, masalan, `identifier:nationalId`. Ma'lumotlaringizga mos keladigan kesimni to'ldiring; barcha kesimlarni to'ldirish shart emas.

Bemorlar, tibbiyot xodimlari va tashkilotlar identifikatorlari kesimlarining to'liq ro'yxati hamda tegishli tizimlarning URI'lari uchun "[Identifikator tizimlari](identifiers.html)" bo'limiga qarang.

### Kodlangan qiymatlar (CodeableConcept)

Kodlangan elementlarning aksariyati `CodeableConcept` turidan foydalanadi: nol yoki undan ortiq `coding` yozuvlari hamda ixtiyoriy erkin matnli `text` maydoni.

- Har bir `coding` CodeSystem'dan olingan `system` + `code` (+ `display`) dan iborat.
- `text` - tushunchani to'liq ifodalovchi, inson o'qishi uchun mo'ljallangan ibora; odatda bu manbadagi asl ifoda bo'ladi. Mos kod topilmasa, `text`'ni kiriting. Haqiqatda nima yozilganini saqlab qolish uchun uni kod yoki kodlar bilan birga ham berish mumkin.
- Agar bir tushuncha bir nechta kodlash tizimida mavjud bo'lsa, bitta `CodeableConcept` ichida bir nechta `coding` ko'rsatishingiz mumkin. Muhimi, ularning barchasi aynan bir xil ma'noni ifodalashi kerak. Masalan, bir klinik tushuncha SNOMED CT kodi va unga mos milliy kod bilan bir vaqtda berilishi mumkin. Biroq turli ma'noga ega bo'lgan tushunchalarni bitta `CodeableConcept` ichiga jamlamang. Agar bir nechta alohida klinik tushunchani qayd etishingiz kerak bo'lsa, har biri uchun alohida `CodeableConcept` yarating yoki elementni takrorlab kiriting.

```json
"code": {
  "coding": [
    { "system": "http://snomed.info/sct", "code": "25064002", "display": "Headache" },
    { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R51", "display": "Headache" }
  ],
  "text": "Headache"
}
```

Mos kod mavjud bo'lmasa, faqat `text` maydonini kiriting - mavjud matnni `coding`siz ko'rsating:

```json
"code": {
  "text": "Throbbing pain behind the left eye since this morning"
}
```

Element uchun belgilangan bog'lash qat'iyligi (quyida) bunga ruxsat berilgan yoki berilmaganini ko'rsatadi: `required` bog'lash faqat text'dan iborat qiymatni qabul qilmaydi - kamida bitta `coding` ValueSet'dan olinishi shart. `extensible`, `preferred` va `example` bog'lashlari esa mos kod mavjud bo'lmaganda text'dan foydalanishga ruxsat beradi.

### Terminologik bog'lashlar

Element ValueSet'ga bog'langanda, bog'lash qat'iyligi ushbu talabni qanchalik qat'iy bajarish kerakligini ko'rsatadi:

- required - ValueSet'dan olingan koddan foydalanish shart.
- extensible - ValueSet'da mos kod mavjud bo'lsa, undan foydalaning; aks holda boshqa koddan foydalanish mumkin.
- preferred - ValueSet'dan foydalanish tavsiya etiladi, ammo majburiy emas.
- example - faqat misol sifatida keltirilgan; istalgan koddan foydalanish mumkin.

UZ Core milliy CodeSystem va ValueSet'larni o'zbek tilida, rus va ingliz tillaridagi tarjimalari bilan birga e'lon qiladi, shuningdek, xalqaro HL7 terminologiyasini o'zbek va rus tillaridagi tarjimalar bilan to'ldiradi. Kodlarni Platformaning terminologiya serverida tekshirish mumkin - "[Umumiy tavsiyalar](general-guidance.html#terminology)" bo'limiga qarang.

### UZ Core doirasida qo'llaniladigan kelishuvlar

- Profillar bazaviy FHIR R5 asosida yaratiladi va faqat milliy farqlarni tavsiflaydi.
- Identifikatorlar yagona ierarxik sxemaga amal qiladi (`https://dhp.uz/fhir/core/sid/...`). "[Identifikator tizimlari](identifiers.html)" bo'limiga qarang.
- Nomlar va boshqa inson o'qishi uchun mo'ljallangan matnlarda o'zbek tili ustuvor til hisoblanadi, tarjimalar esa designations sifatida beriladi.
- Har bir resursda profil va Provenance metama'lumotlari bo'lishi kutiladi - "[Umumiy tavsiyalar](general-guidance.html#metadata)" bo'limiga qarang.
- Platforma har bir yaratish yoki yangilash so'rovini tegishli profil va ValueSet'lar bo'yicha tekshiradi hamda xatolik yuz berganda `OperationOutcome` qaytaradi. Shu sababli ushbu sahifalardagi qoidalar majburiy ravishda qo'llaniladi va tavsiyaviy xususiyatga ega emas.

### Keyingi qadamlar

- [Must Support](must-support.html) - `S` belgisi sizdan nimalarni bajarishni talab qilishini tushuntiradi.
- [Umumiy tavsiyalar](general-guidance.html) - barcha bo'limlarga taalluqli qoidalar: mavjud bo'lmagan ma'lumotlar, o'lchov birliklari, Bundle'lar, terminologiya va mantiqiy o'chirish.
- [Ish jarayonlari](workflows.html) - real klinik vazifani bajarish uchun qaysi resurslarni va qanday ketma-ketlikda yaratish kerakligini ko'rsatuvchi boshidan oxirigacha bo'lgan ssenariylar.
- Har bir profil sahifasi - "Must Have / Must Support" talablari tavsifi hamda API chaqiruvlari misollari keltirilgan "Quick Start" bo'limi.
