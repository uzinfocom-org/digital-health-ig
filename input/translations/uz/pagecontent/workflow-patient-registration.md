Ushbu jarayon tibbiy axborot tizimi (MIS) bemorni qanday aniqlashi yoki ro'yxatga olishi hamda bemor qaysi poliklinika va qaysi oilaviy shifokorga biriktirilganini qanday qayd etishini ko'rsatadi. Odatda MIS aynan shundan boshlaydi, chunki har bir klinik resurs [Patient](StructureDefinition-uz-core-patient.html) ga havola qiladi. Asosiy qoida bir jumlada quyidagicha:

> Patient resursini bemorning so'zlaridan qo'lda tuzmang. [Patient/$populate](OperationDefinition-patient-populate.html) ni PINFL (yoki hujjat) bilan chaqiring, platforma esa Patient ni davlat reyestrlari ma'lumotlari asosida topadi yoki yaratadi. Biriktirish shu Patient da saqlanadi va Patient ni `PUT` orqali tahrirlash bilan emas, balki [$attach](OperationDefinition-patient-attach.html) va [$detach](OperationDefinition-patient-detach.html) orqali o'zgartiriladi.

Ishtirokchilar: ro'yxatga olish bo'limidagi MIS; tashkilotlar va tibbiyot xodimlarini asosiy ma'lumotlar reyestri bo'yicha tekshiradigan platforma (DHP); platforma MIS nomidan murojaat qiladigan jismoniy shaxslarning davlat reyestrlari va Adliya vazirligining bolalar reyestri.

<div>{% include patient-registration-sequence.svg %}</div><br clear="all"/>

Quyidagi barcha operatsiyalar playground va production [endpointlarining](api-access.html#endpoints) [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ida e'lon qilingan. Patient/$populate, $attach, $detach va $relate uchun OperationDefinition lar hozircha `draft` statusida, shuning uchun ularning tafsilotlari o'zgarishi mumkin.

### 1. Bemorni topish yoki yaratish

Bemor identifikatorini `system` + `code` + `value` uchligi sifatida yuboring. Operatsiya uni PINFL ga keltiradi, agar platformada shu PINFL bilan Patient allaqachon mavjud bo'lsa, uni qaytaradi, aks holda davlat reyestrlari ma'lumotlari asosida yangisini yaratadi. Javob Parameters emas, balki Patient resursining o'zidir; uning `id` qiymatini keyingi barcha chaqiruvlar uchun saqlab qo'ying.

```
POST [base]/Patient/$populate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "system", "valueUri": "http://terminology.hl7.org/CodeSystem/v2-0203" },
    { "name": "code", "valueCode": "NI" },
    { "name": "value", "valueString": "[PINFL]" } ] }
```

| `code` | Hujjat | `value` | `birthDate` |
|--------|--------|---------|-------------|
| `NI` (milliy noyob shaxs identifikatori) | PINFL | 14 xonali PINFL, mahalliy tekshiriladi | ixtiyoriy, qo'shimcha moslashtirish mezoni |
| `PPN` (pasport raqami) | pasport yoki ID-karta | seriya va raqam | majburiy |
| `BCT` (tug'ilganlik haqidagi guvohnoma) | tug'ilganlik haqidagi guvohnoma | seriya va raqam | ixtiyoriy, qo'shimcha moslashtirish mezoni |

`system` - misoldagidek `http://terminology.hl7.org/CodeSystem/v2-0203` yoki [identifikator tizimlaridan](identifiers.html) biri: `https://dhp.uz/fhir/core/sid/pid/uz/ni`, `.../ppn/local`, `.../ppn/intl` yoki `.../bct`. Agar fuqaro reyestrlarda topilmasa, resurs yaratilmaydi va xatolik qaytariladi. Manzil alohida so'raladi; agar u mavjud bo'lmasa, Patient baribir yaratiladi, lekin manzilsiz. Reyestrlar bila olmaydigan bemor, masalan, xorijiy fuqaro yoki shaxsi aniqlanmagan bemor, [Patient](StructureDefinition-uz-core-patient.html) profili sahifasida ko'rsatilganidek, oddiy `POST [base]/Patient` orqali ro'yxatga olinadi.

Bemorni yaratmasdan, u ro'yxatga olinganligini tekshirish uchun qidiruvdan foydalaning:

```
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[PINFL]
```

[Person/$populate](OperationDefinition-person-populate.html) xuddi shu parametrlarni qabul qiladi va Patient o'rniga Person qaytaradi. UZ Core da Person profili yo'q; bemorni ro'yxatga olish uchun Patient/$populate dan foydalaning.

### 2. Poliklinika va shifokorni tanlash

Tibbiyot xodimlari tashkilotlar bilan [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) orqali bog'lanadi. Faqat o'qish uchun mo'ljallangan uchta operatsiya bu bog'lanishlarni bitta chaqiruvda ochib beradi, shunda MIS bemorga tanlangan poliklinikada haqiqatan ishlaydigan shifokorni taklif qila oladi:

```
GET [base]/Organization/[id]/$practitioners?_page=1&_count=20
GET [base]/Practitioner/[id]/$specializations
GET [base]/Practitioner/[id]/$organizations
```

- [Organization/$practitioners](OperationDefinition-organization-practitioners.html) [Organization](StructureDefinition-uz-core-organization.html) da ishlaydigan [Practitioner](StructureDefinition-uz-core-practitioner.html) lar ro'yxatini qaytaradi, har birini bir martadan. Natija sahifalarga bo'linadi: `_count` sukut bo'yicha 20, ko'pi bilan 100; `Bundle.total` umumiy sonni ko'rsatadi.
- [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) tibbiyot xodimining faol PractitionerRole larini `specialty`, `code` (lavozim) va `organization` bilan, shuningdek, ular havola qilgan Organization larni `search.mode = include` yozuvlari sifatida qaytaradi. Shifokor shu poliklinikada oilaviy shifokor ekanini tekshirish uchun undan foydalaning. Sahifalarga bo'lish qo'llab-quvvatlanmaydi.
- [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) $practitioners ning teskarisi: tibbiyot xodimi ishlaydigan tashkilotlar.

`[id]` UUID bo'lishi kerak, aks holda server `400` va `invalid` (noto'g'ri tarkib) bilan javob beradi. Agar chiqariladigan hech narsa bo'lmasa, javob bo'sh Bundle emas, balki `not-found` (topilmadi) kodli bitta OperationOutcome saqlovchi Bundle bilan `200` bo'ladi. Tashkilotning `id` sini uning STIR raqami bo'yicha topish uchun `GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|[tin]` qidiruvini bajaring.

### 3. Bemorni biriktirish

[Patient/$attach](OperationDefinition-patient-attach.html) tashkilot va tibbiyot xodimi mavjudligini tekshirgach, bitta chaqiruvda `Patient.managingOrganization` (poliklinika), `Patient.generalPractitioner` (oilaviy shifokor) va [biriktirish sanasini](StructureDefinition-managing-organization-attachment.html) yozadi. `organization` va `practitioner` parametrlaridan kamida bittasi majburiy.

```
POST [base]/Patient/[id]/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "organization", "valueReference": { "reference": "Organization/[id]" } },
    { "name": "practitioner", "valueReference": { "reference": "Practitioner/[id]" } },
    { "name": "attachmentDate", "valueDate": "2026-11-25" } ] }
```

Agar MIS faqat PINFL ni bilsa, operatsiyani tur darajasida chaqiring. U bemorni $populate kabi topadi yoki yaratadi, shuning uchun bitta chaqiruv $populate + $attach juftligini almashtiradi:

```
POST [base]/Patient/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "patientIdentifier", "valueIdentifier": { "value": "[PINFL]" } },
    { "name": "organization", "valueIdentifier": { "value": "[organization identifier]" } } ] }
```

`organization` va `practitioner` nisbiy `valueReference` yoki aynan bitta resursga mos kelishi kerak bo'lgan `valueIdentifier` ni qabul qiladi (uning `system` qiymati e'tiborga olinmaydi). `practitioner` PractitionerRole emas, balki Practitioner bo'lishi kerak. Javob yangilangan Patient resursidir:

```
{ "resourceType": "Patient", "id": "[id]",
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
                  "valueDate": "2026-11-25" }],
  "managingOrganization": { "reference": "Organization/[id]" },
  "generalPractitioner": [{ "reference": "Practitioner/[id]" }], ... }
```

Biriktirishning bir tomonini o'zgartirish ikkinchi tomoniga ta'sir qiladi:

| Chaqiruv | `managingOrganization` | `generalPractitioner` | Biriktirish sanasi |
|----------|------------------------|-----------------------|--------------------|
| yangi `organization`, `practitioner` siz | o'rnatiladi | tozalanadi | `attachmentDate` yoki joriy sana |
| yangi `practitioner`, `organization` siz | tozalanadi | o'rnatiladi | joriy sana |
| ikkalasi ham yuborilgan | o'rnatiladi | o'rnatiladi | `attachmentDate` yoki joriy sana |
| hozirgi bilan bir xil `organization` | o'zgarmaydi | yuborilgan bo'lsa, o'rnatiladi | o'zgarmaydi |
| takroriy bir xil chaqiruv | Patient ning yangi versiyasi yaratilmaydi | | |

`attachmentDate` - `YYYY-MM-DD` formatidagi to'liq sana, faqat `organization` bilan birga qabul qilinadi va kelajakdagi sana ham, allaqachon saqlangan sanadan oldingi sana ham bo'lishi mumkin emas.

> Server bemor poliklinikani yiliga faqat bir marta o'zgartirishi mumkinligi qoidasini nazorat qilmaydi, tibbiyot xodimi tashkilotda ishlashini tekshirmaydi va `Patient.active` hamda `Patient.deceased[x]` ni hisobga olmaydi. MIS bularni chaqiruvdan oldin tekshiradi: saqlangan biriktirish sanasini Patient dan o'qing, shifokor uchun esa 2-qadamdan foydalaning.

Poliklinika yoki shifokorga biriktirilgan bemorlar ro'yxatini olish uchun:

```
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?general-practitioner=Practitioner/[id]
```

### 4. Ota-ona va bolani bog'lash

[Patient/$relate](OperationDefinition-patient-relate.html) ota-onaning Patient resursida chaqiriladi, unda `https://dhp.uz/fhir/core/sid/pid/uz/ni` tizimidagi PINFL bo'lishi shart. Bola PINFL bo'yicha ko'rsatiladi. Platforma Adliya vazirligining bolalar reyestri bo'yicha ota-ona bolaning onasi yoki otasi ekanini tasdiqlaydi, bolaning Patient resursini $populate kabi topadi yoki yaratadi va ota-ona uchun bolaga havola qiluvchi [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) yaratadi.

```
POST [base]/Patient/[parent-id]/$relate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "childIdentifier", "valueIdentifier": { "value": "[child PINFL]" } },
    { "name": "relationship", "valueCode": "MTH" },
    { "name": "link", "valueBoolean": true } ] }
```

- `relationship` sukut bo'yicha `http://terminology.hl7.org/CodeSystem/v3-RoleCode` tizimidagi `GUARD` (vasiy) ga teng; ma'lum bo'lsa, `MTH` (ona) yoki `FTH` (ota) ni yuboring.
- `link = true` qo'shimcha ravishda ota-onaning Patient resursiga RelatedPerson ga ishora qiluvchi `type = seealso` (shuningdek qarang) bilan `Patient.link` qo'shadi.
- Javob `collection` turidagi Bundle: RelatedPerson, bolaning Patient resursi, ota-onaning Patient resursi (faqat `link` `true` bo'lsa va yozuv muvaffaqiyatli bo'lsa) va har doim oxirida turadigan OperationOutcome.

> $relate har doim `200` bilan javob beradi. Yakuniy OperationOutcome ning severity qiymatini tekshiring: `error` hech narsa yaratilmaganini va Bundle faqat shu OperationOutcome ni saqlashini bildiradi. Tasdiqlanmagan qarindoshlik `business-rule` (biznes qoidasi buzilishi) bo'lib, bunda bolaning Patient resursi yaratilmaydi.

Chaqiruv ota-ona PINFL i va bola juftligi bo'yicha idempotent: mavjud faol bog'lanish o'zgarishsiz qaytariladi, lekin qarindoshlik har safar qayta tekshiriladi. Bog'lanish faqat qarindoshlikni qayd etadi va o'z-o'zidan bolaning ma'lumotlariga kirish huquqini bermaydi. Ota-onaning bolalarini topish uchun:

```
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[parent PINFL]
```

### 5. Bemorni biriktirishdan chiqarish

[Patient/$detach](OperationDefinition-patient-detach.html) $attach ning teskarisi: u `managingOrganization`, `generalPractitioner` va biriktirish sanasini birgalikda tozalaydi. `reason` majburiy; u uchun kodlar tizimi belgilanmagan, shuning uchun `text` yetarli. Sabab jurnalga yoziladi, lekin Patient da saqlanmaydi.

```
POST [base]/Patient/[id]/$detach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "reason", "valueCodeableConcept": { "text": "Patient's application to detach" } } ] }
```

Faqat poliklinikadan yoki faqat shifokordan chiqarish qo'llab-quvvatlanmaydi; bir tomonni o'zgartirish uchun $attach dan foydalaning. Agar chiqariladigan hech narsa bo'lmasa, joriy Patient yangi versiya yaratilmasdan qaytariladi.

### 6. Natijalarni qayta ishlash

| Issue kodi | Qayerda | Ma'nosi va harakat |
|------------|---------|--------------------|
| `invalid` (noto'g'ri tarkib) | $populate | noma'lum `system` yoki `code`; so'rovni tuzating |
| `invalid` (noto'g'ri tarkib), HTTP `400` | $practitioners, $organizations, $specializations | `[id]` UUID emas |
| `invalid` (noto'g'ri tarkib) | $attach | `patientIdentifier` nusxa darajasida yuborilgan |
| `required` (majburiy element yo'q) | $attach; $detach da HTTP `400` | na `organization`, na `practitioner` yuborilgan; `reason` yo'q |
| `value` (element qiymati noto'g'ri) | $attach; $detach da HTTP `400` | mutlaq havola yoki Organization/Practitioner ga emas havola; bo'sh `reason` |
| `structure` (tuzilma xatosi) | $attach | bitta parametr uchun ham `valueReference`, ham `valueIdentifier` yuborilgan |
| `not-found` (topilmadi), HTTP `422` | $attach | tashkilot yoki tibbiyot xodimi mavjud emas |
| HTTP `412` | $attach, $detach | Patient o'qish va yozish orasida o'zgargan; uni qayta o'qing va takrorlang |
| severity `error`, HTTP `200` | $relate | bog'lanish rad etilgan; hech narsa yaratilmagan |

### Bog'liq materiallar

- Profillar: [Patient](StructureDefinition-uz-core-patient.html) &middot; [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) &middot; [Practitioner](StructureDefinition-uz-core-practitioner.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [Organization](StructureDefinition-uz-core-organization.html)
- [Identifikator tizimlari](identifiers.html) &middot; [Boshqaruvchi tashkilotga biriktirish sanasi](StructureDefinition-managing-organization-attachment.html)
- Komponent: [Asosiy ma'lumotlarni boshqarish (MDM)](components.html#master-data-management-mdm)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
