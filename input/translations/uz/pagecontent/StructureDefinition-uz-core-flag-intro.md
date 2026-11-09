> **Mashina tarjimasi, inson tekshiruvi talab etiladi.** Tafovut bo‘lsa, inglizcha matn ustuvor.

UZ Core Flag [UZ Core bemori](StructureDefinition-uz-core-patient.html) uchun donorlikka ruxsat yoki tibbiy chetlatish qarorini qayd etadi. U [tashrif](StructureDefinition-uz-core-encounter.html) va muallifga havola berishi mumkin. Faol belgi ruxsatni ham, tibbiy chetlatishni ham bildirishi mumkin: status belgining hayotiy siklini ifodalaydi.

### Majburiy va Must Support elementlar

[Must Support](must-support.html)

#### Har bir UZ Core Flag quyidagilarni saqlashi kerak

Holat, donorlik qarori kodi va bemorga havola bazaviy FHIR R5 da majburiy.

#### Har bir UZ Core Flag quyidagilarni qo‘llab-quvvatlashi kerak

- berilgan bo‘lsa, biznes-identifikator va uning tizimi;
- belgining holati;
- donorlikka ruxsat qarori;
- qaror tegishli bo‘lgan bemor.

### JSON ni bosqichma-bosqich yaratish

1. [Minimal JSON](Flag-example-donation-minimal-flag.json.html) dan boshlang: profil, til, holat, qaror va bemor havolasi.
2. [Ruxsat JSON](Flag-example-donation-eligible-flag.json.html) ma’muriy toifa, tashrif, muallif va amal qilish davrini qo‘shadi.
3. [Tibbiy chetlatish JSON](Flag-example-donation-deferred-flag.json.html) klinik belgini ko‘rsatadi. Chetlatish amal qilayotganida belgi holati ham active bo‘ladi.

JSON FSH namunalaridan yaratiladi. Qaror kodi bilan ko‘rsatilgan kod tizimidan foydalaning; HL7 toifalari asl tizimini saqlaydi. subject UZ Core Patient ga havola beradi. [Tez boshlash](#quick-start) ga qarang.
