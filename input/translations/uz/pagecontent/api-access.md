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

Milliy raqamli sog'liqni saqlash platformasi (DHP) doirasida xavfsizlik, maxfiylik va kirishni ishonchli nazorat qilishni ta'minlash uchun OAuth 2.0 xalqaro standartiga asoslangan autentifikatsiya va avtorizatsiya tizimi joriy etilgan.
U ilovalarning frontend va backend ssenariylarini qo'llab-quvvatlaydi. Markazlashtirilgan Single Sign-On (SSO) serveri bemorlar va tibbiyot tashkilotlaridan tortib tashqi tizimlargacha bo'lgan platformaning barcha ishtirokchilarini xavfsiz identifikatsiya qilishni ta'minlaydi.

DHP autentifikatsiyaning ikkita asosiy ssenariysini qo'llab-quvvatlaydi:
- Backend ilovalar - `client_credentials` grant turi orqali (foydalanuvchi ishtirokisiz),
- Frontend ilovalar - `redirect_uri` qo'llab-quvvatlanadigan va ixtiyoriy PKCE bilan `authorization code` grant turi orqali.

#### Back-end Integratsiyasi

Ushbu bo'limda `client_credentials` grant turidan foydalangan holda OAuth 2.0 protokoli orqali backend ilovalar uchun kirish tokenini olish jarayoni tavsiflanadi.
Ushbu oqim servis himoyalangan APIlarga foydalanuvchi nomidan emas, balki o'z nomidan kirishi zarur bo'lganda qo'llaniladi.

##### Mijoz konfiguratsiyasi

Backend mijoz SSO serverida ro'yxatdan o'tkazilgan bo'lishi kerak. Ro'yxatdan o'tkazilgandan so'ng quyidagilar taqdim etiladi:
- **client_id** - provayder tomonidan berilgan identifikator
- **client_secret** - provayder tomonidan berilgan maxfiy kalit

##### Token olish

**So'rov**

```
POST /oauth/token
```

**So'rov tanasi**

| Parameter      | Value               |
|----------------|---------------------|
| grant\_type    | client\_credentials |
| client\_id     | \<client\_id>       |
| client\_secret | \<client\_secret>   |

##### Xatolik javoblari

* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-dce119ab-d60d-4112-acba-cb31503753b5/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">400 Bad Request</a>
* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-b279c65c-72e6-4161-be4c-0281fed405bd/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">401 Unauthorized</a>

#### Front-end integratsiyasi

Ushbu bo'limda frontend ilovalar OAuth 2.0 protokolining standart `Authorization Code` grant turidan foydalangan holda SSO serveri orqali foydalanuvchilarni qanday avtorizatsiya qilishi mumkinligi tavsiflanadi. Ushbu oqim DHP ekotizimida yagona kirish va foydalanuvchilarning xavfsiz autentifikatsiyasini ta'minlaydi.

##### Mijoz konfiguratsiyasi

Frontend ilova SSO serverida ro'yxatdan o'tkazilgan bo'lishi kerak. Ro'yxatdan o'tkazilgandan so'ng quyidagilar taqdim etiladi:

- **client_id** - provayder tomonidan berilgan identifikator
- **redirect_uri** - ilovangiz tomonidan taqdim etilgan URL-manzil

##### Avtorizatsiya jarayoni

**1 Foydalanuvchini frontend SSOga yo'naltiring:**

```
GET sso.dhp.uz
```

**Parametrlar**:

| Parameter     | Value            |
|---------------|------------------|
| client\_id    | \<client\_id>    |
| redirect\_uri | \<redirect\_uri> |

**2 Avtorizatsiya kodi:**

Muvaffaqiyatli kirishdan so'ng foydalanuvchi avtorizatsiya kodi bilan `redirect_uri` manziliga qayta yo'naltiriladi.

**3 Kodni tokenga almashtirish:**

`client_secret` himoyasini ta'minlash uchun ushbu almashinuv backend tomonida bajarilishi kerak. Agar ilovada backend bo'lmasa, `PKCE`dan foydalaning.

**4 Tokendan foydalanish:**

Har bir so'rovga kirish tokenini qo'shing:

```
Authorization: Bearer <access_token>
```

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
