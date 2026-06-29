Ushbu jarayon bitta muammo bo'yicha bemorga ko'rsatiladigan tibbiy yordam ma'lumotlari vaqt davomida qanday guruhlanishini ko'rsatadi. Alohida tashrif [Encounter](StructureDefinition-uz-core-encounter.html) resursi bilan ifodalanadi; bir nechta tashrifni qamrab oladigan tibbiy yordam jarayoni - masalan, homiladorlikni kuzatish, onkologik kasallikni davolash yoki surunkali infeksiyani boshqarish - [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) resursi bilan ifodalanadi. EpisodeOfCare bitta klinik holatga tegishli tashriflar, tashxislar va natijalarni bog'laydi, natijada klinitsist tarqoq yozuvlar o'rniga holatning to'liq tarixini ko'radi.

> Profillarning holati: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html) va [Observation](StructureDefinition-uz-core-observation.html) UZ Core doirasida profillangan. Davolash vaqtida ishlatiladigan MedicationRequest profili ishlab chiqilmoqda. U e'lon qilingunga qadar FHIR R5 bazaviy resursidan foydalaning.

Ishtirokchilar: umumiy amaliyot shifokori (klinik holatni ochadi va kuzatib boradi); mutaxassislar (klinik holat doirasida davolaydi); DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi).

<div>{% include patient-journey-sequence.svg %}</div><br clear="all"/>

### 1. EpisodeOfCare resursini ochish

Muammo yuritilishi kerak bo'lgan klinik holatga aylanganda - odatda tasdiqlovchi natija olingach - klinitsist `status = active` bo'lgan `EpisodeOfCare` resursini yaratadi, `patient` elementida bemorni, mas'ul klinitsist yoki jamoani ko'rsatadi va `period.start` elementiga tashxis qo'yilgan sanani kiritadi. Diagnostik [Encounter](StructureDefinition-uz-core-encounter.html) va [Condition](StructureDefinition-uz-core-condition.html) ushbu EpisodeOfCare bilan bog'lanadi.

```
POST [base]/EpisodeOfCare
{ "resourceType": "EpisodeOfCare",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "period": { "start": "2026-05-30" } }
```

### 2. Klinik holatga tegishli barcha ma'lumotlar EpisodeOfCare bilan bog'lanadi

Klinik holat davomida har bir tashrif va har bir natija EpisodeOfCare resursiga reference saqlaydi, shu sababli yozuvlar birgalikda guruhlangan holda qoladi. [Encounter](StructureDefinition-uz-core-encounter.html) resursida `episodeOfCare` elementi orqali EpisodeOfCare ko'rsatiladi; [Observation](StructureDefinition-uz-core-observation.html) resursida unga tegishli Encounter `encounter` elementida qayd etiladi; davolash esa shu Encounter resurslari doirasida `MedicationRequest` (yoki `MedicationAdministration`) yordamida qayd etiladi.

```
POST [base]/Encounter
{ "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/[id]" }] }
```

### 3. Tibbiy yordam jarayonining ikki ko'rinishi

EpisodeOfCare resursining hayotiy sikli klinik holat turiga qarab farq qiladi:

**O'tkir / davolash mumkin bo'lgan holat (masalan, HCV - C gepatiti virusini davolash kursi).** EpisodeOfCare tashxis qo'yilganda ochiladi, davolash tashriflari va nazorat laboratoriya tekshiruvlarini qamrab oladi hamda sog'ayish tasdiqlanganda yopiladi: `status = finished` qiymatini belgilang va `period.end` elementida sog'ayish sanasini ko'rsating.

**Surunkali / umrbod kuzatuvni talab qiladigan holat (masalan, HBV - B gepatiti virusi bilan bog'liq holatni yuritish).** EpisodeOfCare ko'p yillar davomida `active` statusida qoladi. Tibbiy yordamning to'xtatilishi va qayta boshlanishi EpisodeOfCare resursini yopish orqali emas, `EpisodeOfCare.statusHistory` elementida qayd etiladi. Bemor boshqa tibbiy xizmat ko'rsatuvchi tashkilotga o'tganda, EpisodeOfCare resursini boshqa tashkilotga **qayta biriktirmang**: dastlabki EpisodeOfCare resursini yoping (`status = finished`) va qabul qiluvchi tashkilotda yangi `EpisodeOfCare` yarating. Shunda har bir tashkilot o'zi ko'rsatgan tibbiy yordam qismi uchun javob beradi.

| Hodisa | Natija |
|-------|--------|
| Klinik holat boshlanadi (tasdiqlovchi natija) | `EpisodeOfCare.status = active`, `period.start` ko'rsatiladi |
| Tibbiy yordam to'xtatiladi / qayta boshlanadi | `statusHistory` elementiga yozuv qo'shiladi (`onhold` &rarr; `active`); EpisodeOfCare ochiq holatda qoladi |
| Sog'ayish tasdiqlandi (o'tkir holat) | `status = finished`, `period.end` ko'rsatiladi |
| Tibbiy yordamni boshqa tashkilotga o'tkazish | dastlabki `status = finished`; yangi tashkilotda yangi `EpisodeOfCare` ochiladi |

### 4. Tibbiy yordam jarayonini ko'rish

Klinitsist EpisodeOfCare va unga reference saqlaydigan resurslarni o'qish orqali klinik holatni ochadi:

```
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]&_sort=-date
GET [base]/Observation?patient=Patient/[id]&_sort=-date
```

Har bir tashrif, natija va dori vositasini tayinlash EpisodeOfCare resursiga reference saqlaganligi sababli, ushbu so'rovlar butun klinik holatni yagona bog'langan ketma-ketlik sifatida qaytaradi. Yozuvlarni alohida Encounter resurslari bo'yicha tarqoq qoldirmasdan `EpisodeOfCare` yordamida guruhlashning maqsadi ham shundan iborat.

### Bog'liq materiallar

- Profillar: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html)
- [Jarayonlar sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
