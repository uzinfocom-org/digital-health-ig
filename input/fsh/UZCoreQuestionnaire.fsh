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
* version = "1.0.0"
* name = "PatientSatisfactionQuestionnaire"
* title = "Опросник удовлетворённости пациента"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient Satisfaction Survey"
* status = #active
* subjectType = #Patient
* description = "Вопросы для опросника пациента (для Patient Portal)"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient satisfaction survey questions (for Patient Portal)"

// Question 1: Как вы записались на приём?
* item[+]
  * linkId = "appointment-method"
  * text = "Как вы записались на приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How did you make an appointment?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#remote "Дистанционно (через Портал Пациента)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Remotely (via Patient Portal)"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#in-person "По приходу в мед.учреждение"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "In person at the medical facility"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#phone "По телефону"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "By phone"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#by-staff "Записал врач/мед.сестра"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Scheduled by doctor/nurse"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "appointment-method-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 2: Сколько времени вы ожидали приём?
* item[+]
  * linkId = "wait-time"
  * text = "Сколько времени вы ожидали приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How long did you wait for your appointment?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#10-15min "10-15 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "10-15 minutes"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#20-30min "20-30 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "20-30 minutes"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#60min-plus "60 минут и больше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "60 minutes or more"

// Question 3: Насколько Вы удовлетворены компетентностью врача?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * text = "Насколько Вы удовлетворены компетентностью врача?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How satisfied are you with the doctor's competence?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#fully-satisfied "Полностью удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Fully satisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#rather-satisfied "Скорее удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather satisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#rather-unsatisfied "Скорее не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather unsatisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#not-satisfied "Совсем не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not satisfied at all"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "doctor-competence-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 4: Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?
* item[+]
  * linkId = "health-info-completeness"
  * text = "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Was information about your health condition provided in full and in an understandable form?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#yes-complete "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#not-quite-complete "Не совсем полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not quite completely"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#only-partial "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#no "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "health-info-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 5: Получили ли вы ответы на все интересующие вас вопросы?
* item[+]
  * linkId = "questions-answered"
  * text = "Получили ли вы ответы на все интересующие вас вопросы?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Did you get answers to all your questions?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#yes-complete "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#only-partial "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#no-answers "Нет, не получил(а) ответы"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No, I didn't get answers"
  * answerOption[+].valueCoding = $patient-satisfaction-questionnaire#other "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "questions-answered-other"
    * text = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 6: Есть ли у Вас предложения по улучшению качества обслуживания?
* item[+]
  * linkId = "improvement-suggestions"
  * text = "Есть ли у Вас предложения по улучшению качества обслуживания?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have any suggestions for improving the quality of service?"
  * type = #text
  * required = false
