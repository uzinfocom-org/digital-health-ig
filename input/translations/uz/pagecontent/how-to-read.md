> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada UZ Core profillarini qanday o'qish kerakligi tushuntiriladi, shunda siz "menda klinik vazifa bor" holatidan "mana bu resurs va menga kerakli maydonlar shular" holatiga o'tishingiz mumkin. Implementatsiyani boshlashdan oldin uni bir marta o'qib chiqing - unda har bir profil sahifasida ishlatiladigan konvensiyalar tushuntirilgan.

Agar siz FHIR bilan umuman tanish bo'lmasangiz, avval [FHIR asoslari](fhir-basics.html) bilan boshlang, so'ng bu yerga qayting.

### Profil nima

UZ Core yangi ma'lumot tuzilmalarini ixtiro qilmaydi. Har bir UZ Core profili standart FHIR R5 resursini (masalan, `Patient` yoki `Observation`) oladi va uning ustiga milliy qoidalarni qo'shadi: qaysi elementlar majburiy, qaysilari qo'llab-quvvatlanishi kerak, qaysi milliy identifikator tizimlari va terminologiyalardan foydalanish kerak hamda O'zbekistonga xos qaysi kengaytmalar qo'llaniladi. UZ Core profiliga muvofiq bo'lgan FHIR resursi shu bilan birga to'g'ri asosiy FHIR resursi hamdir.

Profillar faqat qoidalar qo'shgani sababli, profil sahifasi asosan asosiy FHIR'dan *farqli* nima ekanligini - nimani to'ldirishingiz kerakligini va nimani qayta ishlay olishingiz kerakligini ko'rsatadi. Qolgan hammasi [asosiy FHIR R5 spetsifikatsiyasi](https://hl7.org/fhir/R5/)dagi kabi aniq ishlaydi.

### Profil sahifasidagi to'rtta ko'rinish

Har bir profil sahifasi (masalan, [UZ Core Patient](StructureDefinition-uz-core-patient.html)) element jadvali ustida bir xil yorliqlar to'plamini ko'rsatadi:

| Ko'rinish | Nimani ko'rsatadi | Qachon ishlatish kerak |
|------|---------------|----------------|
| **Key Elements** | Cheklangan, qo'llab-quvvatlanishi shart va majburiy elementlar - tanlab olingan qisqa ro'yxat | Shu yerdan boshlang. Bu "menga aslida nima kerak" ko'rinishi. |
| **Differential** | Faqat UZ Core asosiy FHIR'ga nisbatan o'zgartirgan narsalar | Milliy qoidalarni bir qarashda ko'rish uchun. |
| **Snapshot** | Resursning har bir elementi, asosiy + profil | Boshqa joyda ko'rmagan elementning to'liq tasvirini olish kerak bo'lganda. |
| **All** | Hamma narsa, jumladan, xaritalashlar va cheklovlar | Ma'lumotnoma. |

Ko'pchilik implementatsiya ishlari uchun Key Elements ko'rinishi hamda ushbu sahifa va profil sahifasidagi bayon sizga kifoya qiladi.

### Element jadvalini o'qish

Jadvaldagi har bir qator bitta elementni (maydonni) bildiradi. Ustunlar quyidagilar:

- Name - element yo'li, masalan, `Patient.identifier` yoki `Observation.value[x]`. Chekinish ichma-ichlikni ko'rsatadi.
- Flags - eng muhim qoidalarni tashuvchi qisqa belgilar:

  | Bayroq | Ma'nosi | Sizning uchun nimani anglatadi |
  |------|---------|------------------------|
  | **S** | Must Support | Ma'lumot bo'lganda buni to'ldira olishingiz va qabul qilganingizda qayta ishlay olishingiz kerak. [Must Support](must-support.html)ga qarang. |
  | **?!** | Modifikator element | Bu element/kengaytma resursning ma'nosini o'zgartiradi (masalan, `status = entered-in-error`). Ilovalar ushbu element/kengaytmani qayta ishlashi shart va uni e'tiborsiz qoldirishga ruxsat etilmaydi. |
  | **&Sigma;** | Xulosa elementi | Qidiruv xulosalarida qaytariladi. |
  | **C** | Cheklovga ega | Invariant qo'llaniladi - element ustiga kursorni olib boring yoki Constraints bo'limini o'qing. |
  | **I** | Invariant | Ma'lumot qondirishi kerak bo'lgan rasmiy qoida (FHIRPath). |

- Cardinality - element necha marta paydo bo'lishi mumkinligi:

  | Cardinality | Ma'nosi |
  |-------------|---------|
  | `1..1` | Majburiy, aniq bitta. Siz uni *yuborishingiz shart*. |
  | `1..*` | Majburiy, kamida bitta. |
  | `0..1` | Ixtiyoriy, ko'pi bilan bitta. |
  | `0..*` | Ixtiyoriy, istalgan miqdorda. |

  Majburiy (`1..`) elementlar "Must Have" to'plamini tashkil etadi. Must Support (`S`) elementlar "Must Support" to'plamini tashkil etadi. Har bir profil sahifasi yuqorisidagi bayon ikkalasini ham sodda tilda ro'yxatlaydi, shunda siz jadvalni ochib o'qishingiz shart emas.

- Type - ma'lumot turi yoki, havolalar uchun, u qaysi resurs(lar)ga ishora qilishi. `Reference(UZ Core Patient)` kabi havola u ushbu profilga muvofiq bo'lgan resursga ishora qilishi kerakligini anglatadi.
- Description & Constraints - ta'rif, qiymatlar to'plami bog'lanishi va har qanday belgilangan qiymatlar.

### References va CodeableReferences

Ikki xil tur boshqa resurslarga ishora qiladi va ular JSON'da turlicha ichma-ich joylashadi.

Oddiy **`Reference`** faqat boshqa resursga ishora qiladi. Ko'rsatkich `reference` kaliti ostidagi satr (string)dir:

```json
"patient": { "reference": "Patient/example" }
```

**`CodeableReference`** - bu FHIR R5 turi bo'lib, bir xil maydonda *yo* kodlangan tushunchani *yo* resursga havolani (yoki ikkalasini ham) tashishi mumkin - shu sababli `Immunization.reason` kabi maydon "ushbu kodlangan sabab tufayli" yoki "ushbu Condition resursi tufayli" deyishi mumkin. U resursga ishora qilganda, havola bir daraja chuqurroqda, `reference` obyekti ichida ichma-ich joylashadi:

```json
"reason": [
  { "reference": { "reference": "Condition/example" } }
]
```

ko'rsatkich o'rniga kod berish uchun esa `concept`'dan foydalaning:

```json
"reason": [
  { "concept": { "coding": [{ "system": "...", "code": "..." }] } }
]
```

Type ustuni sizga qaysi biri bilan ish ko'rayotganingizni aytadi: `Reference(...)` yoki `CodeableReference(...)`. Shubha tug'ilganda, har bir maydonning [asosiy FHIR R5 ta'rifi](https://hl7.org/fhir/R5/references.html) hal qiluvchi hisoblanadi.

### Slayslar

Ba'zi elementlar *slayslangan* (sliced) - bir xil element o'ziga xos qoidalarga ega nomlangan variantlarga bo'linadi. Masalan, `Patient.identifier` `nationalId`, `passportLocal`, `passportForeign` va boshqalarga slayslangan bo'lib, ularning har biri muayyan milliy identifikator tizimiga belgilangan. Jadvalda slayslar element ostida chekintirilgan qatorlar sifatida, slays nomi qavs ichida ko'rsatilgan holda paydo bo'ladi, masalan, `identifier:nationalId`. Ma'lumotingizga mos slaysni to'ldiring; har bir slaysni to'ldirishingiz shart emas.

Bemor, tibbiyot xodimi va tashkilot identifikator slayslarining to'liq to'plami hamda ularning tizim URI'lari uchun [Identifikator tizimlari](identifiers.html)ga qarang.

### Kodlangan qiymatlar (CodeableConcept)

Ko'pchilik kodlangan elementlar `CodeableConcept` turidan foydalanadi: nol yoki undan ortiq `coding` yozuvlari hamda ixtiyoriy erkin matnli `text`.

- Har bir `coding` CodeSystem'dan olingan `system` + `code` (+ `display`)dir.
- `text` - tushunchaning yaxlit holdagi inson o'qiy oladigan iborasi - odatda manbadagi asl ifoda. Hech qaysi kod mos kelmaganda yoki aslida nima yozilganini saqlash uchun kod(lar) bilan birga uni keltiring.
- Siz bir nechta `coding` berishingiz mumkin, lekin bitta CodeableConcept ichidagi har bir coding *bir xil narsani* anglatishi kerak - masalan, SNOMED CT'da va milliy kod tizimida ifodalangan bir xil tushuncha. Ular bitta tushunchaning tarjimalaridir, turli topilmalar ro'yxati emas. Bir nechta alohida tushunchani qayd etish uchun, ularni bittaga jamlash o'rniga, elementni takrorlang (bir nechta CodeableConcept).

```json
"code": {
  "coding": [
    { "system": "http://snomed.info/sct", "code": "25064002", "display": "Headache" },
    { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R51", "display": "Headache" }
  ],
  "text": "Headache"
}
```

Mos kod mavjud bo'lmaganda, faqat `text`'ni keltiring - sizdagi so'zlar, `coding`siz:

```json
"code": {
  "text": "Throbbing pain behind the left eye since this morning"
}
```

Elementdagi bog'lanish kuchi (quyida) buning ruxsat etilgan yoki etilmaganligini aytadi: `required` bog'lanish faqat matnli qiymatni rad etadi - kamida bitta `coding` qiymatlar to'plamidan bo'lishi kerak - `extensible`, `preferred` va `example` bog'lanishlar esa mos kod mavjud bo'lmaganda matnga ruxsat beradi.

### Terminologiya bog'lanishlari

Element qiymatlar to'plamiga bog'langanda, bog'lanish kuchi uning qanchalik qattiqligini aytadi:

- required - siz qiymatlar to'plamidan kod *ishlatishingiz shart*.
- extensible - mos kelsa qiymatlar to'plamidan kod ishlating; aks holda boshqa kodni ishlatishingiz mumkin.
- preferred - qiymatlar to'plami rag'batlantiriladi, lekin majburiy emas.
- example - faqat tasviriy, istalgan kodni ishlatishni tanlashingiz mumkin.

UZ Core milliy CodeSystem va ValueSet'larni o'zbek tilida (rus va ingliz tarjimalari bilan) nashr etadi va xalqaro HL7 terminologiyasini o'zbek/rus tarjimalari bilan to'ldiradi. Kodlarni platforma terminologiya serveriga nisbatan tekshirish mumkin - [Umumiy qo'llanma](general-guidance.html#terminology)ga qarang.

### UZ Core bo'ylab ishlatiladigan konvensiyalar

- Profillar asosiy FHIR R5 ustiga quriladi va faqat milliy farqni hujjatlashtiradi.
- Identifikatorlar yagona ierarxik sxemaga amal qiladi (`https://dhp.uz/fhir/core/sid/...`). [Identifikator tizimlari](identifiers.html)ga qarang.
- Nomlar va boshqa inson o'qiy oladigan matn o'zbek tilini hal qiluvchi til sifatida tashiydi, tarjimalar esa belgilanishlar (designation) sifatida beriladi.
- Har bir resurs profil va kelib chiqish (provenance) metama'lumotlarini tashishi kutiladi - [Umumiy qo'llanma](general-guidance.html#metadata)ga qarang.
- Platforma har bir yaratish/yangilashni tegishli profil va qiymatlar to'plamlariga nisbatan tekshiradi va xatolikda `OperationOutcome` qaytaradi - shu sababli ushbu sahifalardagi qoidalar majburiy bo'lib, tavsiyaviy emas.

### Keyin qayerga borish kerak

- [Must Support](must-support.html) - `S` bayrog'i sizni nima qilishga majbur qilishi.
- [Umumiy qo'llanma](general-guidance.html) - ko'ndalang qoidalar (yo'q ma'lumot, birliklar, Bundle'lar, terminologiya, mantiqiy o'chirish).
- [Ish jarayonlari](workflows.html) - real klinik vazifa uchun qaysi resurslarni, qaysi tartibda yaratish kerakligini ko'rsatuvchi to'liq stsenariylar.
- Har bir profil sahifasi - "Must Have / Must Support" bayoni hamda misol API chaqiruvlari bilan "Quick Start".
