> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core BiologicallyDerivedProductDispense [biologik mahsulotni](StructureDefinition-uz-core-biologically-derived-product.html) [bemorning](StructureDefinition-uz-core-patient.html) klinik jamoasiga [buyurtma](StructureDefinition-uz-core-servicerequest.html) asosida berishni qayd etadi. [Procedure](StructureDefinition-uz-core-procedure.html) berishga qo'shimcha ma'lumot sifatida havola berishi va transfuziyaning o'zini qayd etishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core BiologicallyDerivedProductDispense quyidagilarni saqlashi kerak

Holat, bitta mahsulotga havola va retsipiyent majburiy. Har bir yuborilgan ijrochida shifokorga havola, har bir biznes-identifikatorda tizim va qiymat bo'lishi kerak.

#### Har bir UZ Core BiologicallyDerivedProductDispense quyidagilarni qo'llab-quvvatlashi kerak

- berilgan bo'lsa, berish identifikatori;
- bajarilayotgan buyurtma;
- berish holati;
- mahsulot va retsipiyent;
- berish ishtirokchilari;
- amaldagi topshirish vaqti.

### JSON ni bosqichma-bosqich yaratish

1. [Minimal JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.json.html) holat, mahsulot, bemor va `meta.profile` dagi profilni beradi.
2. [Berish JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) buyurtma, shifokor, joylar, miqdor, tayyorlash va topshirish vaqtlarini qo'shadi. Havolalar UZ Core profillarini ko'rsatadi; miqdor amalda berilgan hajmdir.
3. [Qaytarish JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.json.html) HL7 asl tizimlaridagi ixtiyoriy moslik, kelib chiqish va ijrochi funksiyasi kodlarini ko'rsatadi. Transfuziyaning to'xtatilishi mahsulot qaytarilganini anglatmaydi.

BMS da ABO va Rh-Hr moslik natijalari Observation da saqlanadi. Berish holati transfuziya natijasini emas, berish jarayonini ifodalaydi. Identifikator tizimi uni bergan tizim bilan kelishiladi; profil vaqtinchalik URI ni belgilamaydi.

[Tez boshlash](#quick-start).
