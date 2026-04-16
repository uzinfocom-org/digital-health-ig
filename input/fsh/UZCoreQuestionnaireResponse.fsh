Profile: UZCoreQuestionnaireResponse
Parent: QuestionnaireResponse
Id: uz-core-questionnaire-response
Title: "UZ Core QuestionnaireResponse"
Description: "Uzbekistan Core QuestionnaireResponse profile for capturing responses with digital signature support"
* ^experimental = true
* ^status = #active
* ^date = "2025-12-16"
* ^publisher = "Uzinfocom"

// Core elements
* identifier MS
* basedOn MS
* partOf MS
* questionnaire 1..1 MS
  * ^short = "Reference to the UZCoreQuestionnaire being answered"
* status MS
* subject MS
* subject only Reference(UZCorePatient or UZCoreRelatedPerson)
* encounter MS
* encounter only Reference(UZCoreEncounter)
* authored MS
* author MS
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device or UZCoreOrganization)
* source MS
* source only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson)

// Item structure
* item MS
  * linkId MS
  * definition MS
  * text MS
  * answer MS
    * value[x] MS
    * item MS
  * item MS


// ============== Example Instance ==============

Instance: example-patient-satisfaction-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Пример ответа на опросник удовлетворённости"
Description: "Пример заполненного опросника удовлетворённости пациента"
* questionnaire = Canonical(PatientSatisfactionQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2025-01-15T14:30:00+05:00"
* language = #ru

// Answer 1: Как вы записались на приём?
* item[+]
  * linkId = "appointment-method"
  * text = "Как вы записались на приём?"
  * answer[+].valueCoding = $patient-satisfaction-cs#remote "Дистанционно (через Портал Пациента)"

// Answer 2: Сколько времени вы ожидали приём?
* item[+]
  * linkId = "wait-time"
  * text = "Сколько времени вы ожидали приём?"
  * answer[+].valueCoding = $patient-satisfaction-cs#10-15min "10-15 минут"

// Answer 3: Насколько Вы удовлетворены компетентностью врача?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * text = "Насколько Вы удовлетворены компетентностью врача?"
  * answer[+].valueCoding = $patient-satisfaction-cs#fully-satisfied "Полностью удовлетворен"

// Answer 4: Была ли предоставлена информация о Вашем состоянии здоровья?
* item[+]
  * linkId = "health-info-completeness"
  * text = "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?"
  * answer[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"

// Answer 5: Получили ли вы ответы на все интересующие вас вопросы?
* item[+]
  * linkId = "questions-answered"
  * text = "Получили ли вы ответы на все интересующие вас вопросы?"
  * answer[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"

// Answer 6: Есть ли у Вас предложения по улучшению качества обслуживания?
* item[+]
  * linkId = "improvement-suggestions"
  * text = "Есть ли у Вас предложения по улучшению качества обслуживания?"
  * answer[+].valueString = "Было бы удобно иметь возможность получать напоминания о приёме через SMS."
