## To'lovchilarni identifikatsiyalash

O'zbekiston Respublikasi sog'liqni saqlash tizimida tibbiy yordam uchun to'lovni to'lovchilar — provayderlar (tibbiy tashkilotlar) xizmatlarini moliyalashtiruvchi tashkilotlar amalga oshiradi. Bugungi kunda yagona to'lovchi — Davlat tibbiy sug'urta jamg'armasi (DTSJ), ammo model kelajakda boshqalarning ham paydo bo'lishiga imkon beradi. Ushbu sahifa UZ Core profillarida to'lovchilarning o'zlari qanday identifikatsiyalanishini va to'lovchi shartnoma tuzgan provayderlarni qanday identifikatsiyalashini tavsiflaydi.

### To'lovchi qanday identifikatsiyalanadi

To'lovchi — bu tashkilot (`Organization`, `type.coding = #pay`). Bugungi kunda to'lovchi o'zining soliq identifikatori (STIR, Soliq tizimi) — Respublikadagi har qanday tashkilotga tegishli bo'lgan yuridik shaxsning universal identifikatori orqali aniqlanadi.

### To'lovchi provayderlarni qanday identifikatsiyalaydi

To'lovchi (masalan, DTSJ) shartnoma tuzgan provayderlarning o'z reyestrini yuritadi va ularning har biriga ushbu reyestrda ro'yxatga olish raqamini beradi. FHIR da bu identifikator quyidagicha modellashtiriladi:

- turi HL7 v2-0203 `PRN` ("Provider number") — to'lovchi emas, provayder identifikatsiyalanadi;
- `system` — muayyan to'lovchining nom maydoni;
- `value` — to'lovchi nom maydonida noyob: bitta kod aniq bitta tashkilotga mos keladi;
- `assigner` — kodni bergan to'lovchi tashkilotga havola.

Har bir to'lovchi o'z nom maydoni va kod formatidan foydalanadi. Bitta provayder bir nechta bunday identifikatorga ega bo'lishi mumkin — u ishlaydigan har bir to'lovchi uchun bittadan.

### Shartnoma, yuridik shaxs va filiallar

To'lovchi yuridik shaxs bilan shartnoma tuzadi, shuning uchun shartnoma tuzilgan tashkilot doimo soliq identifikatoriga (Soliq) ega bo'ladi; aynan shu yuridik shaxsga to'lovchi o'z kodini (`PRN`) beradi va shartnoma u bilan bog'lanadi.

Biroq tibbiy xizmatlarni ushbu yuridik shaxsning filiallari ko'rsatishi mumkin. Filial bosh tashkilotga `partOf` orqali bog'langan alohida `Organization` sifatida modellashtiriladi. Filial har doim ham alohida xo'jalik yurituvchi subyekt bo'lavermaydi va o'z `taxId` siga ega bo'lmasligi mumkin. Shuning uchun to'lovchi bilan shartnoma mavjudligi filialning o'zi bo'yicha emas, balki bosh yuridik shaxs bo'yicha aniqlanadi: filialdan `partOf` bo'ylab `taxId` ga (va to'lovchi kodiga) ega tashkilotgacha o'tib, shartnomani shu tashkilot bo'yicha tekshirish kerak.

### Davlat tibbiy sug'urta jamg'armasi (DTSJ)

DTSJ — to'lovchi (`type.coding = #pay`); tashkilot sifatida u o'zining soliq identifikatori (Soliq) orqali identifikatsiyalanadi. U bilan shartnoma tuzgan provayderlarga Jamg'arma o'z nom maydonida kod beradi:

- `system`: `https://dhp.uz/fhir/core/sid/org/uz/shif`
- turi: `PRN` ("Provider number")
- qiymat formati: `^[A-Z]{3}[0-9]{6}$` — 3 ta bosh lotin harfi va 6 ta raqam (masalan, `OAA000024`)
- `assigner`: DTSJ tashkilotiga havola

Aniq tizim URI lari va JSON misoli uchun [Identifikator tizimlari](identifiers.html) bo'limiga qarang.
