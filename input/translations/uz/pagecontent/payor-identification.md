## To'lovchilarni identifikatsiyalash

O'zbekiston Respublikasi sog'liqni saqlash tizimida tibbiy yordam uchun to'lovni to'lovchilar — provayderlar (tibbiy tashkilotlar) xizmatlarini moliyalashtiruvchi tashkilotlar amalga oshiradi. Ushbu sahifa UZ Core profillarida to'lovchilarning o'zlari qanday identifikatsiyalanishini va to'lovchi shartnoma tuzgan provayderlarni qanday identifikatsiyalashini tavsiflaydi.

### To'lovchi qanday identifikatsiyalanadi

To'lovchi — bu tashkilot (`Organization`, `type.coding = #pay`). Bugungi kunda to'lovchi o'zining soliq identifikatori (Soliq) orqali identifikatsiyalanadi — bu Respublikadagi har qanday tashkilotga xos bo'lgan universal yuridik shaxs identifikatori. Hozircha to'lovchilarning alohida, o'z raqamlash sxemasiga ega reestri mavjud emas.

Bunday tashqi reestr paydo bo'lganda va to'lovchilarni ro'yxatga oluvchi organ tayinlanganda, to'lovchi identifikatorini alohida fazoda HL7 v2-0203 `NIIP` ("National Insurance Payor Identifier") yoki `NII` ("National Insurance Organization Identifier") turi bilan ifodalash mumkin bo'ladi. Shu vaqtgacha tashqi ro'yxatga oluvchisiz o'z-o'zini tayinlovchi kodlarni yaratmaslik uchun bunday identifikator kiritilmaydi.

### To'lovchi provayderlarni qanday identifikatsiyalaydi

To'lovchi shartnoma tuzgan provayderlarning o'z reestrini yuritadi va har biriga ushbu reestrda ro'yxatga olish raqamini beradi. FHIR da bu identifikator quyidagicha modellashtiriladi:

- turi HL7 v2-0203 `PRN` ("Provider number") — to'lovchi emas, provayder identifikatsiyalanadi;
- `system` — muayyan to'lovchining fazosi;
- `value` — to'lovchi fazosida noyob: bitta kod aniq bitta tashkilotga mos keladi;
- `assigner` — kodni bergan to'lovchi tashkilotga havola.

Har bir to'lovchi o'z fazosi va o'z kod formatidan foydalanadi. Bitta provayder bir nechta bunday identifikatorga ega bo'lishi mumkin — u ishlaydigan har bir to'lovchi uchun bittadan.

### Shartnoma, yuridik shaxs va filiallar

To'lovchi yuridik shaxs bilan shartnoma tuzadi, shuning uchun shartnoma tuzilgan tashkilot doimo soliq identifikatoriga (Soliq) ega bo'ladi; aynan shu yuridik shaxsga to'lovchi o'z kodini (`PRN`) beradi va shartnoma u bilan bog'lanadi.

Biroq tibbiy xizmatlarni ushbu yuridik shaxsning filiallari ko'rsatishi mumkin. Filial bosh tashkilotga `partOf` orqali bog'langan alohida `Organization` sifatida modellashtiriladi. Filial har doim ham alohida xo'jalik yurituvchi subyekt bo'lavermaydi va o'z `taxId` siga ega bo'lmasligi mumkin. Shuning uchun to'lovchi bilan shartnoma mavjudligi filialning o'zi bo'yicha emas, balki bosh yuridik shaxs bo'yicha aniqlanadi: filialdan `partOf` bo'ylab `taxId` ga (va to'lovchi kodiga) ega tashkilotgacha o'tib, shartnomani shu tashkilot bo'yicha tekshirish kerak.

### Misol: Davlat tibbiy sug'urta jamg'armasi (DTSJ)

DTSJ — to'lovchi (`type.coding = #pay`); tashkilot sifatida u o'zining soliq identifikatori (Soliq) orqali identifikatsiyalanadi. U bilan shartnoma tuzgan provayderlarga Jamg'arma o'z fazosida kod beradi:

- `system`: `https://dhp.uz/fhir/core/sid/org/uz/shif`
- turi: `PRN` ("Provider number")
- qiymat formati: `^[A-Z]{3}[0-9]{6}$` — 3 ta bosh lotin harfi va 6 ta raqam (masalan, `OAA000024`)
- `assigner`: DTSJ tashkilotiga havola

Aniq tizim URI lari va JSON misoli uchun [Identifikator tizimlari](identifiers.html) bo'limiga qarang.
