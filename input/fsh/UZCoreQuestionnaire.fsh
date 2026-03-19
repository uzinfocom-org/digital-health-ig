Profile: UZCoreQuestionnaire
Parent: Questionnaire
Id: uz-core-questionnaire
Title: "UZ Core Questionnaire"
Description: "Uzbekistan Core Questionnaire profile for multilingual structured data capture forms"
* ^experimental = true
* ^status = #active
* ^date = "2025-12-16"
* ^publisher = "Uzinfocom"

// Core elements
* url MS
* identifier MS
* version MS
* name MS
* status MS

// Multilingual title
* title 1..1 MS
  * ^short = "Questionnaire title (in Uzbek language)"
  * extension contains $translation-extension named translation 0..* MS
    * ^short = "Questionnaire title (in Russian and Karakalpak languages)"

// Description with translation
* description MS
  * extension contains $translation-extension named translation 0..* MS
    * ^short = "Description (in Russian and Karakalpak languages)"

// Publisher and use context
* publisher MS
* useContext MS
* jurisdiction MS
* purpose MS
* effectivePeriod MS

// Subject type
* subjectType MS
  * ^short = "Resource types that can be subject of this questionnaire"

// Item structure
* item MS
  * linkId MS
  * definition MS
  * code MS
  * prefix MS
    * extension contains $translation-extension named translation 0..* MS
      * ^short = "Item prefix (in Russian and Karakalpak languages)"
  * text MS
    * extension contains $translation-extension named translation 0..* MS
      * ^short = "Item text (in Russian and Karakalpak languages)"
  * type MS
  * enableWhen MS
  * required MS
  * repeats MS
  * readOnly MS
  * maxLength MS
  * answerConstraint MS
  * answerValueSet MS

  // Answer options with translation support
  * answerOption MS
    * value[x] MS
    * valueCoding MS
    * valueCoding.display.extension contains $translation-extension named translation 0..* MS
      * ^short = "Answer option display (in Russian and Karakalpak languages)"

  // Initial value
  * initial MS

  // Nested items
  * item MS


// ============== Questionnaire Instance ==============

Instance: PatientSatisfactionQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Опросник удовлетворённости пациента"
Description: "Опросник для оценки удовлетворённости пациента качеством обслуживания (для Patient Portal)"
* url = "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire"
* name = "PatientSatisfactionQuestionnaire"
* title = "Опросник удовлетворённости пациента"
* language = #ru
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient Satisfaction Survey"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Bemor so'rovnomasi"
* status = #active
* subjectType = #Patient
* description = "Вопросы для опросника пациента (для Patient Portal)"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient satisfaction survey questions (for Patient Portal)"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Bemor so'rovnomasi uchun savollar (Patient Portal uchun)"

// Question 1: Как вы записались на приём?
* item[+]
  * linkId = "appointment-method"
  * text = "Как вы записались на приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How did you make an appointment?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Qabulga qanday yozildingiz?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#remote "Дистанционно (через Портал Пациента)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Remotely (via Patient Portal)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Masofadan yozildim («Портал Пациента» orqali)"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#in-person "По приходу в мед.учреждение"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "In person at the medical facility"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Tibbiyot muassasasiga kelib yozildim"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#phone "По телефону"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "By phone"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Telefon orqali yozildim"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#by-staff "Записал врач/мед.сестра"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Scheduled by doctor/nurse"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Meni shifokor / hamshira yozdi"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Boshqa"
  * item[+]
    * linkId = "appointment-method-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #uz
        * extension[content].valueString = "Boshqa (ko'rsating)"
    * type = #string

// Question 2: Сколько времени вы ожидали приём?
* item[+]
  * linkId = "wait-time"
  * text = "Сколько времени вы ожидали приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How long did you wait for your appointment?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Qabulni qancha vaqt kutdingiz?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#10-15min "10-15 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "10-15 minutes"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "10-15 daqiqa"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#20-30min "20-30 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "20-30 minutes"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "20-30 daqiqa"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#60min-plus "60 минут и больше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "60 minutes or more"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "60 daqiqa yoki undan ortiq"

// Question 3: Насколько Вы удовлетворены компетентностью врача?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * text = "Насколько Вы удовлетворены компетентностью врача?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How satisfied are you with the doctor's competence?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Shifokorning malakasidan qanchalik mamnunsiz?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#fully-satisfied "Полностью удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Fully satisfied"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "To'liq mamnunman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#rather-satisfied "Скорее удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather satisfied"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Ko'proq mamnunman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#rather-unsatisfied "Скорее не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather unsatisfied"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Ko'proq mamnun emasman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#not-satisfied "Совсем не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not satisfied at all"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Umuman mamnun emasman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Boshqa"
  * item[+]
    * linkId = "doctor-competence-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #uz
        * extension[content].valueString = "Boshqa (ko'rsating)"
    * type = #string

// Question 4: Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?
* item[+]
  * linkId = "health-info-completeness"
  * text = "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Was information about your health condition provided in full and in an understandable form?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Sog'lig'ingiz holati haqida ma'lumot to'liq va tushunarli shaklda berildimi?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Ha, to'liq"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#not-quite-complete "Не совсем полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not quite completely"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Unchalik to'liq emas"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#only-partial "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Faqat qisman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#no "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Yo'q"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Boshqa"
  * item[+]
    * linkId = "health-info-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #uz
        * extension[content].valueString = "Boshqa (ko'rsating)"
    * type = #string

// Question 5: Получили ли вы ответы на все интересующие вас вопросы?
* item[+]
  * linkId = "questions-answered"
  * text = "Получили ли вы ответы на все интересующие вас вопросы?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Did you get answers to all your questions?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Sizni qiziqtirgan barcha savollarga javob oldingizmi?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Ha, to'liq"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#only-partial "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Faqat qisman"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#no-answers "Нет, не получил(а) ответы"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No, I didn't get answers"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Yo'q, javob olmadim"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Boshqa"
  * item[+]
    * linkId = "questions-answered-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #uz
        * extension[content].valueString = "Boshqa (ko'rsating)"
    * type = #string

// Question 6: Есть ли у Вас предложения по улучшению качества обслуживания?
* item[+]
  * linkId = "improvement-suggestions"
  * text = "Есть ли у Вас предложения по улучшению качества обслуживания?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have any suggestions for improving the quality of service?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "Xizmat ko'rsatish sifatini yaxshilash bo'yicha takliflaringiz bormi?"
  * type = #text
  * required = false
