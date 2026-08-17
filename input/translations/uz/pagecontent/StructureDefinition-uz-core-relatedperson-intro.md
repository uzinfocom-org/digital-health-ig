> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core RelatedPerson bemor bilan bog'liq shaxsni - yaqin qarindosh, qonuniy vakil yoki ota-ona/vasiyni ifodalaydi. U doim bitta [Patient](StructureDefinition-uz-core-patient.html) ga tegishli bo'ladi va platforma bemor kim bilan bog'langanini qayd etishi zarur bo'lgan har qanday joyda qo'llaniladi: masalan, bolaning emlanishiga rozilik beradigan va uni ko'radigan ota-ona. Practitioner dan farqli o'laroq, RelatedPerson xodimlar tarkibiga kirmaydi va hech qanday professional rolga ega emas.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz har bir Must Support elementni ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinallik, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core RelatedPerson da bo'lishi shart

Har bir RelatedPerson kamida bitta identifikatorga ega bo'lishi kerak - belgilangan slayslardan birining milliy yoki hujjat identifikatori (PINFL, mahalliy yoki xalqaro pasport, tug'ilganlik haqidagi guvohnoma, haydovchilik guvohnomasi, diplomatik pasport, sog'liqni saqlash kartasi yoki harbiy bilet); qiymat haqiqatan ham mavjud bo'lmagan joyda identifikator data-absent-reason qiymatini olib yurishi mumkin (qo'llab-quvvatlanadigan system URI'lar uchun [Identifikator tizimlari](identifiers.html) ga qarang). Shuningdek, u bemorga havola olib yurishi kerak - bu shaxs bog'liq bo'lgan bemor (UZ Core Patient ga ishora qilishi kerak).

#### Har bir UZ Core RelatedPerson qo'llab-quvvatlashi kerak



- bemorga bo'lgan munosabat (majburiy munosabat qiymatlar to'plamidan kodlangan);
- ism (use, text, family, given, suffix, period);
- telecom aloqa ma'lumotlari (majburiy system va use bog'lanishlari bilan);
- jins (kerak bo'lganda milliy `gender-other` kengaytmasi bilan);
- manzil - yo o'zbek manzili (kodlangan ma'muriy bo'linmalar) yoki xalqaro erkin matnli manzil;
- active bayrog'i, tug'ilgan sana hamda munosabat amal qilgan/qiladigan davr.

> Ma'lumotlaringizga mos keladigan identifikator *slays*ini to'ldiring - siz har bir slaysni to'ldirmaysiz - ammo kamida bitta identifikator talab qilinadi. `gender-other` kengaytmasi faqat `gender` `other` ga o'rnatilganda ishlatilishi mumkin.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar serverning qabul qiladigan eng kichik nusxasidan tortib to'liq yaqin qarindosh yozuvigacha boradi. Bittasini nusxalab, uni moslashtiring - ko'rsatilgan har bir qiymat ushbu profilga muvofiq tekshiruvdan o'tadi. To'liq mos yozuvlar nusxasi sahifaning pastki qismida havola qilingan ([related person misoli](RelatedPerson-example-related-person.html)).

#### Yuborishingiz kerak bo'lgan eng kichik RelatedPerson

RelatedPerson kamida bitta `identifier` olib yurishi va o'zi bog'liq bo'lgan `patient` ni nomlashi kerak - ikkalasi ham majburiy. Har bir UZ Core resursi shuningdek `meta.profile` ichida o'zi muvofiq deb da'vo qilayotgan profilni nomlashi kerak, shunda server qaysi qoidalarga ko'ra tekshirishni biladi. PINFL - bu sizda mavjud bo'lganda yuborishingiz kerak bo'lgan identifikator; uni PINFL qiladigan narsa uning `system` URI'sidir - `sid/pid/uz/ni` bilan tugaydigani. Shuncha narsaning o'zi allaqachon tekshiruvdan o'tadi:

```json
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "12345678901234"
    }
  ],
  "patient": { "reference": "Patient/example-david" }
}
```

`patient` - bu UZ Core [Patient](StructureDefinition-uz-core-patient.html) ga oddiy `Reference` - `reference` satri `Type/id` ko'rinishida bo'ladi. PINFL o'rniga (yoki u bilan birga) boshqa hujjatni qayd etish uchun quyidagi jadvaldan mos `system` va `type` ni ishlating.

#### Hayotiy yaqin qarindosh misoli

Amalda siz bemorga `relationship` ni, `name` ni, shaxsga yetishish usulini (`telecom`) va uning `gender` ini ham yuborasiz. `relationship` - bu majburiy qiymatlar to'plamiga bog'langan `CodeableConcept`; quyidagi misol guvohni qayd etadi. Ismlar to'liq matn va tahlil qilingan qismlarni olib yuradi:

```json
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "12345678901234"
    }
  ],
  "patient": { "reference": "Patient/example-david" },
  "relationship": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code": "WIT",
          "display": "witness"
        }
      ]
    }
  ],
  "name": [
    {
      "use": "usual",
      "text": "Зафаров Дамир Каримович",
      "family": "Зафаров",
      "given": [ "Дамир" ],
      "suffix": [ "Каримович" ]
    }
  ],
  "telecom": [ { "system": "phone", "value": "+998901234567", "use": "mobile" } ],
  "gender": "male"
}
```

`telecom.system` va `telecom.use` ning har biri majburiy bog'lanishdan foydalanadi, `relationship` ham xuddi shunday - qiymat bog'langan qiymatlar to'plamidan kelishi kerak (quyidagi Snapshot ko'rinishi har birini sanab o'tadi). `gender` `other` bo'lganda milliy `gender-other` kengaytmasini taqdim eting; o'sha kengaytma faqat shu holatda ruxsat etiladi.

#### Manzil va munosabat davrini qo'shish

Mavjud bo'lganda, shaxsning `address` ini va munosabat amal qiladigan `period` ni qo'shing. O'zbek manzili erkin matn o'rniga **kodlangan** ma'muriy bo'linmalardan (viloyat, tuman, mahalla) foydalanadi - inson o'qiy oladigan `text` kodlar bilan birga keladi. Ushbu kalitlar yuqoridagi hayotiy yozuv bilan bir xil resursga joylashadi:

```json
{
  "address": [
    {
      "use": "home",
      "type": "physical",
      "text": "махалля Дилобод, Каторток кўчаси, 9-уй, 15-хонадон",
      "line": ["Каторток кўчаси"],
      "state": "1726",
      "district": "1726294",
      "city": "103-0104",
      "country": "182",
      "period": { "start": "1999-06-04" }
    }
  ],
  "period": { "start": "1998-02-16" }
}
```

`state` / `district` / `city` kodlari milliy SOATO qiymatlar to'plamlaridan keladi - har bir kod qayerdan olinishini bilish uchun [Manzillar](general-guidance.html#addresses) ga qarang. Chet elda yashayotgan yaqin shaxs uchun `country` chet el ISO kodiga o'rnatilgan erkin matnli manzilni ishlating.

#### Bittadan ortiq identifikatorni yoki birortasini ham olib yurmaslik

Shaxs odatda bir nechta hujjatga ega bo'ladi. `identifier` massiviga har bir hujjat uchun bittadan yozuv qo'shing, har biri o'z `system` va `type` bilan; faqat haqiqatan ham mavjud bo'lganlarini to'ldiring. `system` URI'si slaysni tanlaydi, shuning uchun u aniq mos kelishi kerak:

| Identifikator | `system` | `type` kodi |
|---|---|---|
| PINFL (milliy id) | `https://dhp.uz/fhir/core/sid/pid/uz/ni` | `NI` |
| Mahalliy pasport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` | `PPN` |
| Xalqaro pasport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` | `PPN` |
| Tug'ilganlik haqidagi guvohnoma | `https://dhp.uz/fhir/core/sid/pid/uz/bct` | `BCT` |
| Haydovchilik guvohnomasi | `https://dhp.uz/fhir/core/sid/pid/uz/dl` | `DL` |
| Diplomatik pasport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/dp` | `DP` |
| Sog'liqni saqlash kartasi | `https://dhp.uz/fhir/core/sid/pid/uz/hc` | `HC` |
| Harbiy bilet | `https://dhp.uz/fhir/core/sid/pid/uz/mi` | `MI` |

Agar qiymat haqiqatan ham mavjud bo'lmasa - aytaylik, shaxsda pasport yo'q - uni o'ylab topmang va butun identifikatorni ham tashlab yubormang. Qiymatni `_value` dagi `data-absent-reason` kengaytmasi bilan mavjud emas deb belgilang:

```json
{
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PPN", "display": "Passport number" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
      "_value": {
        "extension": [
          { "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason", "valueCode": "unknown" }
        ]
      }
    }
  ]
}
```

Boshidagi pastki chiziqqa e'tibor bering: `_value` - FHIR yetishmayotgan `value` o'rnini bosadigan kengaytmani joylashtiradigan joy. Qo'llab-quvvatlanadigan system URI'larning to'liq ro'yxati uchun [Identifikator tizimlari](identifiers.html) ga, to'g'ri yo'qlik mexanizmini tanlash uchun esa [Yetishmayotgan va bostirilgan ma'lumotlar](general-guidance.html#missing-data) ga qarang.

API chaqiruvlari misollari va namunaviy yuk uchun ushbu sahifaning pastki qismidagi [Tezkor start](#quick-start) ga qarang.
