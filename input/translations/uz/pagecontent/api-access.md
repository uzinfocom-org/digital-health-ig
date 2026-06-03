# Endpoints

- **Playground**: `playground.dhp.uz/fhir`
- **Production**: `fhir.dhp.uz`


# Xavfsizlik va autentifikatsiya

Milliy raqamli sog'liqni saqlash platformasi (DHP) doirasida xavfsizlik, maxfiylik va kirishni ishonchli nazorat qilishni ta'minlash uchun OAuth 2.0 xalqaro standartiga asoslangan autentifikatsiya va avtorizatsiya tizimi joriy etilgan.
U ilovalarning frontend va backend ssenariylarini qo'llab-quvvatlaydi. Markazlashtirilgan Single Sign-On (SSO) serveri bemorlar va tibbiyot tashkilotlaridan tortib tashqi tizimlargacha bo'lgan platformaning barcha ishtirokchilarini xavfsiz identifikatsiya qilishni ta'minlaydi.

DHP autentifikatsiyaning ikkita asosiy ssenariysini qo'llab-quvvatlaydi:
- Backend ilovalar - `client_credentials` grant turi orqali (foydalanuvchi ishtirokisiz),
- Frontend ilovalar - `redirect_uri` qo'llab-quvvatlanadigan va ixtiyoriy PKCE bilan `authorization code` grant turi orqali.

## Back-end Integratsiyasi

Ushbu bo'limda `client_credentials` grant turidan foydalangan holda OAuth 2.0 protokoli orqali backend ilovalar uchun kirish tokenini olish jarayoni tavsiflanadi.
Ushbu oqim servis himoyalangan APIlarga foydalanuvchi nomidan emas, balki o'z nomidan kirishi zarur bo'lganda qo'llaniladi.

### Mijoz konfiguratsiyasi

Backend mijoz SSO serverida ro'yxatdan o'tkazilgan bo'lishi kerak. Ro'yxatdan o'tkazilgandan so'ng quyidagilar taqdim etiladi:
- **client_id** - provayder tomonidan berilgan identifikator
- **client_secret** - provayder tomonidan berilgan maxfiy kalit

### Token olish

**So'rov**

```
POST /oauth/token
```

**So'rov tanasi**

| Parametr      | Qiymat               |
|----------------|---------------------|
| grant\_type    | client\_credentials |
| client\_id     | \<client\_id>       |
| client\_secret | \<client\_secret>   |

### Xatolik javoblari

* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-dce119ab-d60d-4112-acba-cb31503753b5/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">400 Bad Request</a>
* <a href="https://www.postman.com/eg3333-1491/dhp/example/45312060-b279c65c-72e6-4161-be4c-0281fed405bd/dhp-core?active-environment=45312060-e14d5c80-4578-464f-a016-dd51f566a5cd" target="_blank">401 Unauthorized</a>

## Front-end integratsiyasi

Ushbu bo'limda frontend ilovalar OAuth 2.0 protokolining standart `Authorization Code` grant turidan foydalangan holda SSO serveri orqali foydalanuvchilarni qanday avtorizatsiya qilishi mumkinligi tavsiflanadi. Ushbu oqim DHP ekotizimida yagona kirish va foydalanuvchilarning xavfsiz autentifikatsiyasini ta'minlaydi.

### Mijoz konfiguratsiyasi

Frontend ilova SSO serverida ro'yxatdan o'tkazilgan bo'lishi kerak. Ro'yxatdan o'tkazilgandan so'ng quyidagilar taqdim etiladi:

- **client_id** - provayder tomonidan berilgan identifikator
- **redirect_uri** - ilovangiz tomonidan taqdim etilgan URL-manzil

### Avtorizatsiya jarayoni

**1 Foydalanuvchini frontend SSOga yo'naltiring:**

```
GET sso.dhp.uz
```

**Parametrlar**:

| Parametr     | Qiymat            |
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

# Tranzaksiyalar

FHIR [tranzaksiyalari](https://hl7.org/fhir/http.html#transaction) bir nechta resursni bitta atomar so'rovda yuborish imkonini beradi. Yoki barcha operatsiyalar muvaffaqiyatli bajariladi, yoki hech biri qo'llanilmaydi - qisman natijalar bo'lmaydi.

Tranzaksiya - bu `type` qiymati `transaction` etib belgilangan `Bundle`. Har bir `entry` quyidagilarni o'z ichiga oladi:
- `fullUrl`  - `urn:uuid:` formatidagi resursning vaqtinchalik identifikatori
- `resource`  - yaratish yoki yangilash uchun resurs
- `request.method`  - HTTP metodi (`POST` yaratish uchun, `PUT` yangilash uchun)
- `request.url`  - resurs turi (`POST` uchun) yoki resursga yo'l (`PUT` uchun)

Tranzaksiya ichidagi resurslar `urn:uuid:` qiymatlari orqali bir-biriga havola qilishi mumkin. Server ularni qayta ishlashdan so'ng haqiqiy identifikatorlar bilan almashtiradi.

`Bundle`ni `POST [base]` orqali yuboring (muayyan resurs endpointiga emas).

**So'rov namunasi**: [Transaction Bundle JSON](Bundle-example-transaction-bundle.json) - EpisodeOfCare, Encounter va uchta Observation yuboradi.

## Server javobi

Muvaffaqiyatli bajarilganda server `transaction-response` turidagi Bundle qaytaradi. Har bir yozuv server tomonidan berilgan identifikator bilan `response.status` va `response.location` ni o'z ichiga oladi.

**Misol**: [Muvaffaqiyatli javob JSON](Bundle-example-transaction-response.json)

Agar biror yozuv validatsiyadan o'tmasa, butun tranzaksiya bekor qilinadi va server xatolik tavsifi bilan `OperationOutcome` qaytaradi.

**Misol**: [Xatolik javobi JSON](OperationOutcome-example-transaction-response-error.json)

# Xatoliklarni qayta ishlash

*\<to be filled in - describe error handling here\>*

# Must Support
[Must Support] ushbu implementatsiya qo'llanmasida ikki kontekstda qo'llaniladi:

1. UZ Core profillari: bu element O'zbekistondagi tizimlar o'rtasida ma'lumot almashinuvida to'ldirilishi kutilishini bildiradi.
2. DHPning maxsus profillari: bu DHP ushbu elementni qo'llab-quvvatlashini va mijoz tizimlar, agar ma'lumotlar mavjud bo'lsa, uni to'ldirishi shartligini bildiradi.

Agar element manba tizimda mavjud bo'lmagani sababli to'ldirib bo'lmasa va kardinallik qoidalari bunga ruxsat bersa, element bo'sh qoldirilishi mumkin. Agar kardinallik qoidalari elementni majburiy to'ldirishni talab qilsa, [Data Absent Reason] kengaytmasidan foydalanish zarur.

{% include markdown-link-references.md %}
