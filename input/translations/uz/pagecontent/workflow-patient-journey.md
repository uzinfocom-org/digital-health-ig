> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni bemorning bitta muammo bo'yicha tibbiy yordami vaqt davomida qanday guruhlanishini ko'rsatadi. Bitta tashrif - bu [Encounter](StructureDefinition-uz-core-encounter.html); ko'plab tashriflarni qamrab oluvchi davolanish kursi - homiladorlik, saraton kasalligi davolash yo'li, surunkali infeksiya - bu [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html). Epizod bitta holatning tashriflari, tashxislari va natijalarini bir-biriga bog'laydigan ipdir, shunda klinisist tarqoq yozuvlarni emas, balki butun hikoyani ko'radi.

> Profil holati: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html) va [Observation](StructureDefinition-uz-core-observation.html) UZ Core'da profillangan. Davolanish davomida ishlatiladigan MedicationRequest profili ishlab chiqilmoqda - u nashr etilgunga qadar bazaviy FHIR R5 resursidan foydalaning.

Ishtirokchilar: umumiy amaliyot shifokori (holatni ochadi va kuzatib boradi); mutaxassislar (holat doirasida davolaydi); platforma (DHP).

<div>{% include patient-journey-sequence.svg %}</div><br clear="all"/>

### 1. Epizodni ochish

Muammo boshqarilishi kerak bo'lgan holatga aylanganda - odatda tasdiqlovchi natija olinganda - klinisist `status = active` bilan `EpisodeOfCare` yaratadi, `patient`da bemorni, mas'ul klinisist/jamoani va `period.start`da tashxis sanasini ko'rsatadi. Tashxis qo'yilgan [Encounter](StructureDefinition-uz-core-encounter.html) va [Condition](StructureDefinition-uz-core-condition.html) unga bog'lanadi.

```
POST [base]/EpisodeOfCare
{ "resourceType": "EpisodeOfCare",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "period": { "start": "2026-05-30" } }
```

### 2. Holatdagi hamma narsa epizodga murojaat qiladi

Holat amal qilgan davr mobaynida har bir tashrif va har bir natija epizodga murojaat qiladi, shunda yozuv guruhlangan holda qoladi. [Encounter](StructureDefinition-uz-core-encounter.html) `episodeOfCare`ni o'z ichiga oladi; [Observation](StructureDefinition-uz-core-observation.html) o'zining `encounter`ini qayd etadi; davolanish o'sha tashriflarda `MedicationRequest` (yoki `MedicationAdministration`) sifatida qayd etiladi.

```
POST [base]/Encounter
{ "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/[id]" }] }
```

### 3. Yo'lning ikki ko'rinishi

Epizodning hayot tsikli holat turiga qarab farq qiladi:

**O'tkir / davolanadigan (masalan, HCV davolash kursi).** Epizod tashxis qo'yilganda ochiladi, davolash tashriflari va monitoring tahlillari orqali davom etadi va davolanish tasdiqlanganda yopiladi: `status = finished` qo'ying va `period.end`ni tuzalish sanasiga o'rnating.

**Surunkali / umrbod (masalan, HBV boshqaruvi).** Epizod yillar davomida `active` holatida qoladi. To'xtatishlar va qayta tiklashlar uni yopish orqali emas, balki `EpisodeOfCare.statusHistory`da qayd etiladi. Bemor boshqa provayderga o'tganda, epizodni **qayta tayinlamang**: asl epizodni yoping (`status = finished`) va qabul qiluvchi tashkilotda yangi `EpisodeOfCare` oching, shunda har bir tashkilot o'zi taqdim etgan yo'l qismiga egalik qiladi.

| Hodisa | Ta'siri |
|-------|--------|
| Holat boshlanadi (tasdiqlovchi natija) | `EpisodeOfCare.status = active`, `period.start` o'rnatiladi |
| Yordam to'xtatildi / qayta tiklandi | `statusHistory`ga qo'shing (`onhold` &rarr; `active`); epizod ochiq qoladi |
| Davolanish tasdiqlandi (o'tkir) | `status = finished`, `period.end` o'rnatiladi |
| Yordamni o'tkazish | asl `status = finished`; yangi tashkilotda yangi `EpisodeOfCare` ochiladi |

### 4. Yo'lni o'qish

Klinisist epizodni va unga murojaat qiluvchi resurslarni o'qish orqali holatni ochadi:

```
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]&_sort=-date
GET [base]/Observation?patient=Patient/[id]&_sort=-date
```

Har bir tashrif, natija va retsept epizod murojaatini o'z ichiga olgani uchun, bu butun holatni bitta ip sifatida qaytaradi - bu yozuvlarni tashriflar bo'ylab tarqoq qoldirish o'rniga `EpisodeOfCare` bo'yicha guruhlashning mohiyatidir.

### Tegishli

- Profillar: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html)
- [Ish jarayonlari sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
