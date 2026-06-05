> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Questionnaire - bu Raqamli sog'liqni saqlash platformasidagi forma shabloni, ya'ni savollar to'plami bo'lib, javoblar emas. Ularning ba'zilari milliy darajada standartlashtirilgan (masalan, Sog'liqni saqlash vazirligi tomonidan tasdiqlangan); tizimlar va tashkilotlar o'zlarining mahalliy shablonlarini ham belgilashlari mumkin. To'ldirilgan forma alohida [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) sifatida saqlanadi. Questionnaire draft -> active -> retired hayot tsikliga ega; yangi javoblarni qayd etish uchun faqat `active` shablonlardan foydalanish kerak. Itemlar, sarlavhalar va javob-variantlari displeylari ko'p tilli kontentni qo'llab-quvvatlaydi (o'zbek tili, rus va qoraqalpoq tarjimalari bilan).

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementni ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson tomonidan o'qiladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Questionnaire quyidagilarga ega bo'lishi shart

Har bir Questionnaire o'zbek tilida sarlavha (1..1) tashishi kerak, u rus va qoraqalpoq tillari uchun tarjima kengaytmalarini olib yurishi mumkin, hamda holat (draft, active, retired, unknown) - bu asosiy resursdan majburiy sifatida meros qilib olinadi.

#### Har bir UZ Core Questionnaire quyidagilarni qo'llab-quvvatlashi shart



- kanonik url, identifikator, versiya, nom va holat;
- sarlavha (va uning tarjimalari);
- tavsif (tarjimalari bilan), publisher, useContext, jurisdiction, purpose va effectivePeriod;
- subjectType (ushbu so'rovnoma qo'llaniladigan resurs turlari);
- item tuzilmasi - linkId, definition, code, prefix va text (ikkalasi ham tarjimalari bilan), type, enableWhen, required, repeats, readOnly, maxLength, answerConstraint, answerValueSet, answerOption (`valueCoding` display tarjimalari bilan), boshlang'ich qiymat va ichma-ich joylashgan itemlar.

> Yangi javoblarni qayd etish uchun faqat `active` shablonlardan foydalanish kerak. `draft` holatidagi shablon hali tayyor emas; `retired` shablon endi chiqarilmasligi kerak.

### JSON-ni bosqichma-bosqich qurish

Questionnaire klinik yozuv emas, balki forma ta'rifi bo'lgani uchun u asosan bir marta yaratiladi va qayta ishlatiladi. Quyidagi misollar serverning qabul qiladigan eng kichik shablonidan tortib real ko'p tilli itemgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar namunasi - [bemor qoniqishi so'rovnomasi](Questionnaire-PatientSatisfactionQuestionnaire.html).

#### Yuborishingiz mumkin bo'lgan eng kichik Questionnaire

`status` - yagona qat'iy majburiy element (asosiy resursdan meros qilib olingan), va bu profil `title`-ni ham majburiy qiladi. Amalda siz `name`-ni ham (kompyuter uchun qulay token) yuborasiz va `subjectType` orqali forma qaysi resurs haqida ekanligini e'lon qilasiz. Har bir UZ Core resursi `meta.profile`-da o'zi mos kelishini da'vo qilayotgan profilni ham nomlashi shart:

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire"]
  },
  "status": "active",
  "name": "PatientSatisfactionQuestionnaire",
  "title": "Bemor so'rovnomasi",
  "subjectType": ["Patient"]
}
```

`status` required bog'lanishdan foydalanadi - forma hali yaratilayotgan paytda `draft`, javoblarni qayd eta oladigan holatga kelganda `active`, va endi chiqarilmasligi kerak bo'lganda `retired` ishlating. Yangi javoblar uchun faqat `active` shablonlardan foydalanish kerak.

#### Real ko'p tilli forma

Real shablon barqaror `url`, `description` va `item` ro'yxatini tashiydi. Sarlavha, item `text` va javob-varianti `display` bitta tilda yoziladi va boshqalarini mos `_` bilan boshlanadigan qondosh elementdagi (`_text`, `_display`) `translation` kengaytmalari sifatida olib yuradi. Quyidagi misol ikkita javob varianti bo'lgan bitta kodlangan savolni ko'rsatadi - har bir variantning `valueCoding`-i o'zining `code` va `system`-ini UZ CodeSystem-dan oladi, erkin matnli qo'shimcha savol esa ichma-ich joylashgan `string` item hisoblanadi:

```json
{
  "resourceType": "Questionnaire",
  "language": "uz",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire"]
  },
  "url": "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire",
  "status": "active",
  "name": "PatientSatisfactionQuestionnaire",
  "title": "Bemor so'rovnomasi",
  "_title": {
    "extension": [
      {
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Опросник удовлетворённости пациента" }
        ],
        "url": "http://hl7.org/fhir/StructureDefinition/translation"
      }
    ]
  },
  "description": "Bemor so'rovnomasi uchun savollar (Patient Portal uchun)",
  "_description": {
    "extension": [
      {
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Вопросы для опросника пациента (для Patient Portal)" }
        ],
        "url": "http://hl7.org/fhir/StructureDefinition/translation"
      }
    ]
  },
  "subjectType": ["Patient"],
  "item": [
    {
      "linkId": "appointment-method",
      "text": "Qabulga qanday yozildingiz?",
      "_text": {
        "extension": [
          {
            "extension": [
              { "url": "lang", "valueCode": "ru" },
              { "url": "content", "valueString": "Как вы записались на приём?" }
            ],
            "url": "http://hl7.org/fhir/StructureDefinition/translation"
          }
        ]
      },
      "type": "coding",
      "required": true,
      "answerOption": [
        {
          "valueCoding": {
            "code": "phone",
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "display": "Telefon orqali yozildim",
            "_display": {
              "extension": [
                {
                  "extension": [
                    { "url": "lang", "valueCode": "ru" },
                    { "url": "content", "valueString": "По телефону" }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        },
        {
          "valueCoding": {
            "code": "other",
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "display": "Boshqa",
            "_display": {
              "extension": [
                {
                  "extension": [
                    { "url": "lang", "valueCode": "ru" },
                    { "url": "content", "valueString": "Другое" }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        }
      ],
      "item": [
        {
          "linkId": "appointment-method-other",
          "text": "Boshqa (ko'rsating)",
          "_text": {
            "extension": [
              {
                "extension": [
                  { "url": "lang", "valueCode": "ru" },
                  { "url": "content", "valueString": "Другое (укажите)" }
                ],
                "url": "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "type": "string"
        }
      ]
    }
  ]
}
```

Har bir item `linkId` (forma ichida noyob) va `type` (`coding`, `string`, `text`, ...) talab qiladi. `coding` item uchun tanlanadigan javoblar `answerOption`-da `valueCoding` sifatida joylashadi. `translation` kengaytmasi har doim ikkita bola kengaytmani - `lang` (til kodi) va `content` (tarjima qilingan satr) - `http://hl7.org/fhir/StructureDefinition/translation` URL ostida ichma-ich joylashtiradi. Erkin matnli "boshqa" maydoni kabi qo'shimcha savollar uchun ichma-ich joylashgan `item`-dan foydalaning.

API chaqiruvlari misollari va namunaviy yuk uchun ushbu sahifaning pastki qismidagi [Quick Start](#quick-start) bo'limiga qarang.
