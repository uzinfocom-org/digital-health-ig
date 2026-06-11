> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core QuestionnaireResponse - Raqamli sog'liqni saqlash platformasidagi [Questionnaire](StructureDefinition-uz-core-questionnaire.html) ning to'ldirilgan namunasidir - masalan, bemorning sog'lig'i holati to'g'risidagi deklaratsiyasi yoki bemor portalida qayd etilgan fikr-mulohazasi. U havola qilingan shablonning savollariga berilgan javoblarni o'z ichiga oladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va qabul qilinganda qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core QuestionnaireResponse quyidagilarga ega bo'lishi shart

Har bir QuestionnaireResponse javob berilayotgan [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) ga questionnaire havolasini (1..1) va asosiy resursdan majburiy sifatida meros qilib olingan status (in-progress, completed, amended, entered-in-error, stopped) ni o'z ichiga olishi shart.

#### Har bir UZ Core QuestionnaireResponse quyidagilarni qo'llab-quvvatlashi shart



- identifier, basedOn va partOf;
- questionnaire havolasi va status;
- subject va javob tegishli bo'lgan encounter (bir [Encounter](StructureDefinition-uz-core-encounter.html));
- yaratilgan (authored) sana/vaqt, muallif (author) (bir [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), RelatedPerson, Device yoki [Organization](StructureDefinition-uz-core-organization.html)) va manba (source) (bir [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html) yoki RelatedPerson);
- item tuzilmasi - linkId, definition, text, answer (`value[x]` va ichki `item` bilan) va ichki itemlar.

> Bemor tomonidan kiritilgan QuestionnaireResponse ma'lumotlari axborot xarakteriga ega. U avtomatik ravishda [Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html) ga aylantirilmaydi; bu faqat [Encounter](StructureDefinition-uz-core-encounter.html) doirasida klinisistning harakati orqali, Provenance vositasida qayd etilgan holda sodir bo'ladi. Yuborilganda javob faqat tuzilma va terminologiya bo'yicha tekshiriladi, klinik to'g'rilik bo'yicha emas.

### JSON ni bosqichma-bosqich qurish

Bu resurslar asosan forma to'ldirilayotganda tizim tomonidan generatsiya qilinadi, shuning uchun quyidagi misol faqat bitta vakil bo'la oladigan to'ldirilgan javobdir. Uni nusxalang va moslashtiring - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar namunasi - [bemor mamnuniyati javobi](QuestionnaireResponse-example-patient-satisfaction-response.html).

#### To'ldirilgan javob

Javob u javob berayotgan `questionnaire` ni (kanonik URL, 1..1) nomlashi va `status` (in-progress / completed / amended / entered-in-error / stopped) ni o'z ichiga olishi shart. Amalda siz, shuningdek, u tegishli bo'lgan `subject` ni va `authored` vaqtini, so'ngra har bir savol uchun bittadan `item` yuborasiz. Har bir `item` u javob beradigan savolning `linkId` siga va `value[x]` javobni saqlaydigan `answer` ga ega - kodlangan tanlov `valueCoding`, erkin matn esa `valueString` bo'ladi:

```json
{
  "resourceType": "QuestionnaireResponse",
  "language": "uz",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire",
  "status": "completed",
  "subject": { "reference": "Patient/example-salim" },
  "authored": "2025-01-15T14:30:00+05:00",
  "item": [
    {
      "linkId": "appointment-method",
      "text": "Как вы записались на приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "remote",
            "display": "Masofadan yozildim («Портал Пациента» orqali)"
          }
        }
      ]
    },
    {
      "linkId": "wait-time",
      "text": "Сколько времени вы ожидали приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "10-15min",
            "display": "10-15 daqiqa"
          }
        }
      ]
    },
    {
      "linkId": "doctor-competence-satisfaction",
      "text": "Насколько Вы удовлетворены компетентностью врача?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "fully-satisfied",
            "display": "To'liq mamnunman"
          }
        }
      ]
    },
    {
      "linkId": "health-info-completeness",
      "text": "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "questions-answered",
      "text": "Получили ли вы ответы на все интересующие вас вопросы?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "improvement-suggestions",
      "text": "Есть ли у Вас предложения по улучшению качества обслуживания?",
      "answer": [
        { "valueString": "Было бы удобно иметь возможность получать напоминания о приёме через SMS." }
      ]
    }
  ]
}
```

`questionnaire` - bu oddiy kanonik satr (Reference emas), `subject` esa oddiy `Reference` (`{ "reference": "Patient/example-salim" }`). Savolga mos keladigan `value[x]` turini tanlang: kodlangan tanlov uchun `valueCoding`, erkin matn uchun `valueString` va shunga o'xshab boshqa savol turlari uchun `valueBoolean`, `valueInteger`, `valueDate` va hokazo. Havola qilingan [Questionnaire](StructureDefinition-uz-core-questionnaire.html) majburiy deb belgilagan har bir itemga javob berilishi shart - bu javob barcha beshta majburiy savolga javob beradi; ulardan birini tushirib qoldirish validatsiya xatosidir.

API chaqiruvlari namunalari va namunaviy payload uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
