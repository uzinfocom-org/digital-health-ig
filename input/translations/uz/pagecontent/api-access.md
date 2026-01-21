# Endpoints

- **Playground**: `playground.medcore.uz/fhir`
- **Production**: `fhir.medcore.uz`


# Xavfsizlik va autentifikatsiya

Raqamli Sog'liqni Saqlash Platformasi (DHP) doirasida xavfsizlik, maxfiylik va ishonchli kirish nazoratini ta'minlash uchun xalqaro OAuth 2.0 standarti asosida autentifikatsiya va avtorizatsiya tizimi joriy etilgan.
U front-end va back-end ilovalari uchun ishlash stsenariylarini qo'llab-quvvatlaydi. Markazlashgan Single Sign-On (SSO) serveri bemorlar, tibbiyot xodimlari va tashqi tizimlar kabi barcha platforma ishtirokchilarini xavfsiz identifikatsiyalashni ta'minlaydi.

DHP ikkita asosiy autentifikatsiya stsenariysini qo'llab-quvvatlaydi:
- Back-end ilovalar - `client_credentials` grant orqali (foydalanuvchi ishtirokisiz),
- Front-end ilovalar - `authorization code` grant orqali, `redirect_uri` qo'llab-quvvatlovi va ixtiyoriy PKCE bilan.

## Back-end Integratsiyasi

Ushbu bo'limda back-end ilovalar uchun OAuth 2.0 protokoli asosida `client_credentials` grant turidan foydalangan holda access token olish jarayoni bayon etiladi.
Bu oqim xizmat foydalanuvchi nomidan emas, balki o'zi nomidan himoyalangan API'lardan foydalanishi kerak bo'lgan holatlarda qo'llaniladi.

### Mijoz konfiguratsiyasi

Back-end mijoz SSO serverida ro'yxatdan o'tgan bo'lishi kerak. Ro'yxatdan o'tgandan so'ng sizga quyidagilar taqdim etiladi:
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

Ushbu bo'limda front-end ilovalarning foydalanuvchilarni SSO serveri orqali standart OAuth 2.0 Authorization Code grantidan foydalangan holda avtorizatsiya qilish tartibi keltiriladi. Bu oqim DHP ekotizimi doirasida yagona kirishni va foydalanuvchilarning xavfsiz autentifikatsiyasini ta'minlaydi.

### Mijoz Konfiguratsiyasi

Front-end ilova SSO serverida ro'yxatdan o'tgan bo'lishi kerak. Ro'yxatdan o'tgandan so'ng sizga quyidagilar taqdim etiladi:

- **client_id** - provayder tomonidan berilgan identifikator
- **redirect_uri** - sizning ilovangiz tomonidan taqdim etilgan URL manzil

### Avtorizatsiya jarayoni

**1 Foydalanuvchini SSO front-end sahifasiga yo'naltiring:**

```
GET sso.medcore.uz
```

**Parametrlar**:

| Parametr     | Qiymat            |
|---------------|------------------|
| client\_id    | \<client\_id>    |
| redirect\_uri | \<redirect\_uri> |

**2 Avtorizatsiya kodi:**

Muvaffaqiyatli kirishdan so'ng foydalanuvchi redirect_uri manziliga avtorizatsiya kodi bilan qayta yo'naltiriladi.

**3 Kodni token bilan almashtirish:**

Bu almashtirish jarayoni `client_secret` ni himoya qilish uchun back-end'da amalga oshirilishi kerak. Agar ilovangizda back-end mavjud bo'lmasa, PKCE dan foydalaning.

**4 Tokenni ishlatish:**

Har bir so'rovda access tokenni quyidagicha kiriting:

```
Authorization: Bearer <access_token>
```

# Xatoliklarni qayta ishlash

*\<to'ldiriladi – bu yerda xatoliklarni qayta ishlash tasvirlanadi\>*

# Must Support
[Must Support] ushbu implementatsiya qo'llanmasida ikki kontekstda qo'llaniladi:

1. UZ Core profillari: bu element O'zbekiston ichidagi tizimlar o'rtasida almashilganda to'ldirilishi kutilishini bildiradi.
2. DHP-ga xos profillar: bu DHP ushbu elementni qo'llab-quvvatlashini va mijoz tizimlari ma'lumot mavjud bo'lsa uni to'ldirishi shartligini bildiradi.

Agar element manba tizimda mavjud bo'lmagani sababli to'ldirib bo'lmasa, va agar kardinallik qoidalari bunga ruxsat etsa, element bo'sh qoldirilishi mumkin. Agar kardinallik qoidalari elementni majburiy tarzda to'ldirishni talab qilsa, [Data Absent Reason] kengaytmasidan foydalanilishi shart.

{% include markdown-link-references.md %}
