Ushbu jarayon laboratoriya tekshiruvi qanday tayinlanishi va uning natijasi qanday qaytarilishini ko'rsatadi. Bu FHIR diagnostikasining kanonik zanjiri bo'lib, undagi references tuzilmasi aniq ko'rsatilgan - profil jadvali `Observation.specimen` elementi *mavjudligini* ko'rsatadi, ushbu sahifada esa u mazkur tayinlash doirasida olingan namunaga reference ko'rsatishi kerakligi tushuntiriladi.

Ishtirokchilar: tekshiruvni tayinlaydigan klinitsist; laboratoriya (LIS - Laboratory Information System, laboratoriya axborot tizimi); platforma (DHP - Digital Health Platform, Raqamli sog'liqni saqlash platformasi).

O'zaro ishlash ketma-ketligi:

<div>{% include lab-sequence.svg %}</div><br clear="all"/>

Resurslar zanjiri va uning references:

<div>{% include lab-references.svg %}</div><br clear="all"/>

> Profil holati: to'rtta resursning barchasi UZ Core'da profillangan - [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) (laboratoriyaga xos) va [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Har bir resursdagi `meta.profile` elementida mos profilni ko'rsating va quyidagi references tuzilmasiga rioya qiling.

### 1. Tekshiruvni tayinlash

Klinitsist [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) resursini yaratadi va unda `intent = order` qiymatini, tekshiruv yoki panelni `code` elementida, bemorni `subject` elementida, requester elementida so'rov yuboruvchini va `reasonCode`/`reasonReference` elementida tekshirilayotgan Condition resursini ko'rsatadi. Tayinlash mumkin bo'lgan tekshiruvlar [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) yozuvlari sifatida e'lon qilinadi; `priority` qiymati `routine`, `urgent` yoki `asap`.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory"] },
  "status": "active", "intent": "order",
  "code": { "coding": [{ "system": "http://loinc.org", "code": "58410-2" }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "priority": "routine" }
```

Avvalgi tekshiruv takrorlanganda `ServiceRequest.basedOn` elementida dastlabki tayinlashga reference ko'rsatiladi.

### 2. Namunani olish

Laboratoriya [Specimen](StructureDefinition-uz-core-specimen.html) resursini qayd etadi. Unda `type` elementi, namuna olingan sana va vaqt, identifikator hamda bemor `subject` elementida ko'rsatiladi. Eng muhimi, `Specimen.request` elementida ServiceRequest resursiga reference ko'rsatiladi.

```
POST [base]/Specimen
{ "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "subject": { "reference": "Patient/[id]" },
  "request": [{ "reference": "ServiceRequest/[id]" }],
  "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }] } }
```

### 3. Natijalarni qaytarish

Har bir aniqlanadigan ko'rsatkich [Observation](StructureDefinition-uz-core-observation.html) resursi sifatida taqdim etiladi; unda LOINC `code` elementi, `value[x]`, `interpretation` (normal / high / low / critical) hamda `referenceRange` elementi ko'rsatiladi. Har bir Observation resursida `basedOn` elementida ServiceRequest resursiga reference, `specimen` elementida esa Specimen resursiga reference ko'rsatiladi. Natijalar to'plami umumlashtiriladi va [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) resursida taqdim etiladi: uning `basedOn` elementi ServiceRequest resursiga reference saqlaydi, `result` elementida esa Observation resurslari ro'yxati ko'rsatiladi.

```
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/Observation?patient=Patient/[id]&category=laboratory&_sort=-date
```

Butun to'plamni bitta tranzaksion Bundle sifatida qaytarish tavsiya etiladi, shunda tayinlash, namuna, Observation resurslari va hisobot birgalikda atomar tarzda qaytariladi. Yakunlangan va imzolangan hisobot hujjat Bundle sifatida shakllantiriladi (`Composition` natijalarga references saqlaydigan sarlavha vazifasini bajaradi va hisobot [Provenance](StructureDefinition-uz-core-provenance.html) orqali imzolanadi) - `Composition` resurslarni takrorlamaydi, balki ularga references saqlaydi. [Umumiy ko'rsatmalar &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset) bo'limiga qarang.

### Statuslar va parallel o'zgartirishlar

`ServiceRequest.status` tayinlashning hayotiy sikliga mos ravishda o'zgaradi (draft &rarr; active &rarr; completed yoki revoked); `entered-in-error`/`unknown` qiymatlari tuzatishlar uchun ajratilgan. Bekor qilishda faol tayinlash `revoked` holatiga o'tkaziladi (izoh bilan), yakunlangan tayinlashni esa o'zgartirib bo'lmaydi. Bir vaqtda tahrirlashda optimistik versiya nazorati qo'llaniladi - oxirgi o'qishda olingan `ETag` qiymatini `If-Match` sifatida yuboring; eskirgan versiya `412 Precondition Failed` xatosi bilan rad etiladi. Resursni qayta o'qing va so'rovni takrorlang - [Parallel o'zgartirishlar](api-access.html#concurrency) bo'limiga qarang.

### Tegishli materiallar

- Profillar: [Specimen](StructureDefinition-uz-core-specimen.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Ish jarayonlari haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html) &middot; [Hayotiy ko'rsatkichlar](vital-signs.html)
