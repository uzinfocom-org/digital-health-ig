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
* date = "2025-01-01"
* publisher = "Digital Health Platform"
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
  * answerOption[+].valueString = "Я записался (-ась) дистанционно (через Портал Пациента)"
  * answerOption[+].valueString = "Я записался на приём по приходу в мед.учреждение"
  * answerOption[+].valueString = "Я записался по телефону"
  * answerOption[+].valueString = "Меня записал мой врач (мед.сестра)"
  * answerOption[+].valueString = "Другое"
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
  * answerOption[+].valueString = "10-15 минут"
  * answerOption[+].valueString = "20-30 минут"
  * answerOption[+].valueString = "60 минут и больше"

// Question 3: Насколько Вы удовлетворены компетентностью врача?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * text = "Насколько Вы удовлетворены компетентностью врача?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How satisfied are you with the doctor's competence?"
  * type = #coding
  * required = true
  * answerOption[+].valueString = "Полностью удовлетворен"
  * answerOption[+].valueString = "Скорее удовлетворен"
  * answerOption[+].valueString = "Скорее не удовлетворен"
  * answerOption[+].valueString = "Совсем не удовлетворен"
  * answerOption[+].valueString = "Другое"
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
  * answerOption[+].valueString = "Да, полностью"
  * answerOption[+].valueString = "Не совсем полностью"
  * answerOption[+].valueString = "Только частично"
  * answerOption[+].valueString = "Нет"
  * answerOption[+].valueString = "Другое"
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
  * answerOption[+].valueString = "Да, полностью"
  * answerOption[+].valueString = "Только частично"
  * answerOption[+].valueString = "Нет, не получил(а) ответы"
  * answerOption[+].valueString = "Другое"
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
