> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Endpointlar {#endpoints}

Bular FHIR serverining bazaviy URL-manzillari - har bir profil sahifasidagi API namunalarida ko'rsatilgan `[base]`. Ulardan biriga resurs turini va istalgan qidiruv parametrlarini qo'shing, masalan `[base]/Patient?identifier=...`.

- **Playground**: `playground.dhp.uz/fhir`
- **Production**: `fhir.dhp.uz`


### Platformaning mavjudligi {#availability}

Ushbu qo'llanmadagi profillar DHP uchun maqsadli FHIR yuzasini belgilaydi. Platforma ushbu yuzani bosqichma-bosqich joriy etadi, shuning uchun ayrim imkoniyatlar hali **playground**da mavjud emas. Profilga yozilganidek quring - ushbu qo'llanma davomida ko'rsatilgan so'rov shakllari to'g'ri; biror imkoniyat hali ishga tushmagan joyda quyidagi izoh oraliq yondashuvni beradi.

Holat playgroundni 2026-06-03 holatiga ko'ra aks ettiradi va joriy etish davom etgan sari o'zgaradi. Ko'zlangan xatti-harakat haqiqatining manbasi sifatida ushbu jadvalni emas, balki profillarni asos qilib oling.

| Imkoniyat | Playground | Bugun u bilan ishlash |
|------------|------------|-----------------------|
| `AuditEvent`, `Consent`, `Provenance`, `DocumentReference` endpointlari | Hali yoqilmagan | Bular ishga tushganda namunalar to'g'ri bo'ladi; hozircha ushbu integratsiyalarni keyinga qoldiring. |
| `Observation` (`date`), `Condition` (`onset-date`), `Procedure` (`date`), `Immunization` (`date`), `Specimen` (`collected`), `AdverseEvent` (`date`), `PlanDefinition` (`date`) bo'yicha sana oralig'i qidiruvi | Natijalarni sana bo'yicha filtrlamasdan qaytaradi | Hozircha sana filtrini o'z mijozingizda qo'llang. `Condition` (`recorded-date`), `Encounter` (`date`) va `EpisodeOfCare` (`date`) kutilganidek filtrlaydi. |
| `Practitioner` (`qualification-code`), `Organization` (`partof`), `Procedure` (`status`), `PlanDefinition` (`context-type-value`) bo'yicha qidiruv | Natijalarni filtrlamasdan qaytaradi | Hozircha mijoz tomonida filtrlang. |
| UZ Core CodeSystem va ValueSetlarga nisbatan `$validate-code` / `$expand` | Ushbu IG platformaga nashr etilganda yuklanadi | Xalqaro kod tizimlari (LOINC, SNOMED CT, ICD-10, HL7) allaqachon validatsiyadan o'tadi. |


### Xavfsizlik va autentifikatsiya {#security}

DHP FHIR API'lariga kirish OAuth 2.0 standarti bo'yicha markazlashtirilgan Single Sign-On (SSO) serveri orqali himoyalangan va ham backend ilovalarni (`client_credentials` grant turi), ham frontend ilovalarni (ixtiyoriy PKCE bilan `authorization code` grant turi) qo'llab-quvvatlaydi.

Mijozni ro'yxatdan o'tkazish, avtorizatsiya oqimlari, kirish tokenlarini olish va ulardan foydalanish hamda xatolik javoblari SSO serverida to'liq hujjatlashtirilgan: [sso.dhp.uz/docs](https://sso.dhp.uz/docs).

### Tranzaksiyalar

FHIR [tranzaksiyalari](https://hl7.org/fhir/http.html#transaction) bir nechta resursni bitta atomar so'rovda yuborish imkonini beradi. Yoki barcha operatsiyalar muvaffaqiyatli bajariladi, yoki hech biri qo'llanilmaydi - qisman natijalar bo'lmaydi.

Tranzaksiya - bu `type` qiymati `transaction` etib belgilangan `Bundle`. Har bir `entry` quyidagilarni o'z ichiga oladi:
- `fullUrl`  - `urn:uuid:` formatidagi resursning vaqtinchalik identifikatori
- `resource`  - yaratish yoki yangilash uchun resurs
- `request.method`  - HTTP metodi (`POST` yaratish uchun, `PUT` yangilash uchun)
- `request.url`  - resurs turi (`POST` uchun) yoki resursga yo'l (`PUT` uchun)

Tranzaksiya ichidagi resurslar `urn:uuid:` qiymatlari orqali bir-biriga havola qilishi mumkin. Server ularni qayta ishlashdan so'ng haqiqiy identifikatorlar bilan almashtiradi.

`Bundle`ni `POST [base]` orqali yuboring (muayyan resurs endpointiga emas).

**So'rov namunasi**: [Transaction Bundle JSON](Bundle-example-transaction-bundle.json) - EpisodeOfCare, Encounter va uchta Observation yuboradi.

#### Server javobi

Muvaffaqiyatli bajarilganda server `transaction-response` turidagi Bundle qaytaradi. Har bir yozuv server tomonidan berilgan identifikator bilan `response.status` va `response.location` ni o'z ichiga oladi.

**Misol**: [Muvaffaqiyatli javob JSON](Bundle-example-transaction-response.json)

Agar biror yozuv validatsiyadan o'tmasa, butun tranzaksiya bekor qilinadi va server xatolik tavsifi bilan `OperationOutcome` qaytaradi.

**Misol**: [Xatolik javobi JSON](OperationOutcome-example-transaction-response-error.json)

### Bir vaqtdalik {#concurrency}

Platforma optimistik bloklashdan foydalanadi, shunda bir xil resursni yangilayotgan ikkita mijoz bir-birini sezdirmasdan qayta yoza olmaydi ("yo'qolgan yangilanish" muammosi).

Har bir o'qish resursning joriy versiyasini zaif `ETag` sifatida qaytaradi:

```
GET [base]/Observation/[id]

200 OK
ETag: W/"3"
```

Xavfsiz yangilash uchun ushbu qiymatni `If-Match` sarlavhasida qaytarib yuboring. Server yozishni faqat resurs hali o'sha versiyada bo'lsagina qo'llaydi, so'ngra versiya oshadi:

```
PUT [base]/Observation/[id]
If-Match: W/"3"

200 OK
ETag: W/"4"
```

Agar kimdir resursni siz o'qiganingizdan beri o'zgartirgan bo'lsa, versiya endi mos kelmaydi va yozish rad etiladi - hech narsa qayta yozilmaydi:

```
PUT [base]/Observation/[id]
If-Match: W/"3"

412 Precondition Failed
{ "resourceType": "OperationOutcome",
  "issue": [{ "severity": "error", "code": "invalid", "details": { "text": "Version is mismatch" } }] }
```

`412` holatida resursni qayta o'qing, o'zgartirishingizni yangi versiya ustiga qayta qo'llang va yana `PUT` qiling. Platforma har bir yangilashda `If-Match` ni talab qiladi: usiz yuborilgan `PUT` `412` bilan rad etiladi, shuning uchun har doim oxirgi o'qishingizdagi `ETag` ni qaytarib yuboring.

### Xatoliklarni qayta ishlash

*\<to be filled in - describe error handling here\>*

### Must Support
Profillardagi ko'plab elementlar Must Support deb belgilangan. Bu nimani anglatishini, u qo'llaniladigan ikki kontekstni va to'ldira olmaydigan elementlar bilan qanday ishlashni alohida [Must Support](must-support.html) sahifasida ko'ring.

{% include markdown-link-references.md %}
