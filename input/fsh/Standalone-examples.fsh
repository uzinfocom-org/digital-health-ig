// This file contains only example instances to help enforce referential integrity within the profiles
// As soon as a profile for an instance is created, the instance should be removed from this file

Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* name
  * family = "Ибрагимов"
  * given = "Алишер"

Instance: example-cbc-order
InstanceOf: ServiceRequest
Usage: #example
Description: "Example ServiceRequest for CBC (Umumiy qon tahlili) order"
* status = #active
* intent = #order
* code = observation-lab-research-codes-cs#lab-A "CBC panel"
* subject = Reference(Patient/example-salim)
* requester = Reference(Practitioner/example-practitioner)
* authoredOn = "2025-11-04T08:00:00Z"
* specimen[0] = Reference(Specimen/example-specimen-blood-cbc)

Instance: example-transaction-bundle
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle"
Description: "Example transaction bundle that submits an episode of care, two encounters, and three observations in a single transaction"
* type = #transaction

* entry[0].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-111111111111"
* entry[=].resource = UZCoreEpisodeOfCare-Example
* entry[=].request.method = #POST
* entry[=].request.url = "EpisodeOfCare"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-222222222222"
* entry[=].resource = example-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-333333333333"
* entry[=].resource = blood-pressure-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-444444444444"
* entry[=].resource = body-weight-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-555555555555"
* entry[=].resource = body-temperature-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: example-transaction-response
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Response"
Description: "Example of a successful transaction response where all resources were created"
* type = #transaction-response

* entry[0].response.status = "201 Created"
* entry[=].response.location = "EpisodeOfCare/UZCoreEpisodeOfCare-Example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Encounter/example-encounter/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/blood-pressure-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/body-weight-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/body-temperature-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

Instance: example-transaction-response-error
InstanceOf: OperationOutcome
Usage: #example
Title: "Example Transaction Error"
Description: "Example OperationOutcome returned when a transaction fails due to a validation error"
* issue[0].severity = #error
* issue[=].code = #required
* issue[=].diagnostics = "Observation.status: minimum required = 1, but only found 0 (from https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation)"
* issue[=].expression = "Bundle.entry[2].resource.ofType(Observation)"

// Temporary stand-in referenced by the Procedure example; should be fleshed out (or replaced with a proper profile-conforming instance) before publication
Instance: example-careplan
InstanceOf: CarePlan
Usage: #example
Title: "example-careplan"
Description: "Example of a careplan"
* status = #active
* intent = #plan
* subject = Reference(example-david)

// ============== Questionnaire Instance ==============

Instance: PatientSatisfactionQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Patient Satisfaction Survey"
Description: "Example patient satisfaction survey questionnaire (for Patient Portal)"
* url = "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire"
* name = "PatientSatisfactionQuestionnaire"
* language = #uz
* status = #active
* subjectType = #Patient
* title = "Bemor so'rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник удовлетворённости пациента"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient Satisfaction Survey"
* description = "Bemor so'rovnomasi uchun savollar (Patient Portal uchun)"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Вопросы для опросника пациента (для Patient Portal)"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Patient satisfaction survey questions (for Patient Portal)"

// Question 1: How did you make an appointment?
* item[+]
  * linkId = "appointment-method"
  * text = "Qabulga qanday yozildingiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Как вы записались на приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How did you make an appointment?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#remote "Masofadan yozildim («Портал Пациента» orqali)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Дистанционно (через Портал Пациента)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Remotely (via Patient Portal)"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#in-person "Tibbiyot muassasasiga kelib yozildim"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "По приходу в мед.учреждение"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "In person at the medical facility"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#phone "Telefon orqali yozildim"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "По телефону"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "By phone"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#by-staff "Meni shifokor / hamshira yozdi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Записал врач/мед.сестра"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Scheduled by doctor/nurse"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Boshqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "appointment-method-other"
    * text = "Boshqa (ko'rsating)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 2: How long did you wait for your appointment?
* item[+]
  * linkId = "wait-time"
  * text = "Qabulni qancha vaqt kutdingiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Сколько времени вы ожидали приём?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How long did you wait for your appointment?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#10-15min "10-15 daqiqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "10-15 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "10-15 minutes"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#20-30min "20-30 daqiqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "20-30 минут"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "20-30 minutes"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#60min-plus "60 daqiqa yoki undan ortiq"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "60 минут и больше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "60 minutes or more"

// Question 3: How satisfied are you with the doctor's competence?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * text = "Shifokorning malakasidan qanchalik mamnunsiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Насколько Вы удовлетворены компетентностью врача?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How satisfied are you with the doctor's competence?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#fully-satisfied "To'liq mamnunman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Полностью удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Fully satisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#rather-satisfied "Ko'proq mamnunman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скорее удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather satisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#rather-unsatisfied "Ko'proq mamnun emasman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скорее не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Rather unsatisfied"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#not-satisfied "Umuman mamnun emasman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Совсем не удовлетворен"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not satisfied at all"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Boshqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "doctor-competence-other"
    * text = "Boshqa (ko'rsating)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 4: Was information about your health condition provided in full and in an understandable form?
* item[+]
  * linkId = "health-info-completeness"
  * text = "Sog'lig'ingiz holati haqida ma'lumot to'liq va tushunarli shaklda berildimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Was information about your health condition provided in full and in an understandable form?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#yes-complete "Ha, to'liq"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#not-quite-complete "Unchalik to'liq emas"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не совсем полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not quite completely"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#only-partial "Faqat qisman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Boshqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "health-info-other"
    * text = "Boshqa (ko'rsating)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 5: Did you get answers to all your questions?
* item[+]
  * linkId = "questions-answered"
  * text = "Sizni qiziqtirgan barcha savollarga javob oldingizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Получили ли вы ответы на все интересующие вас вопросы?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Did you get answers to all your questions?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $patient-satisfaction-cs#yes-complete "Ha, to'liq"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, полностью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, completely"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#only-partial "Faqat qisman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Только частично"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Only partially"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#no-answers "Yo'q, javob olmadim"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет, не получил(а) ответы"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No, I didn't get answers"
  * answerOption[+].valueCoding = $patient-satisfaction-cs#other "Boshqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"
  * item[+]
    * linkId = "questions-answered-other"
    * text = "Boshqa (ko'rsating)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Другое (укажите)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other (please specify)"
    * type = #string

// Question 6: Do you have any suggestions for improving the quality of service?
* item[+]
  * linkId = "improvement-suggestions"
  * text = "Xizmat ko'rsatish sifatini yaxshilash bo'yicha takliflaringiz bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли у Вас предложения по улучшению качества обслуживания?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have any suggestions for improving the quality of service?"
  * type = #text
  * required = false


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
  * answer[+].valueCoding = $patient-satisfaction-cs#remote "Дистанционно (через Портал Пациента)"

// Answer 2: Сколько времени вы ожидали приём?
* item[+]
  * linkId = "wait-time"
  * answer[+].valueCoding = $patient-satisfaction-cs#10-15min "10-15 минут"

// Answer 3: Насколько Вы удовлетворены компетентностью врача?
* item[+]
  * linkId = "doctor-competence-satisfaction"
  * answer[+].valueCoding = $patient-satisfaction-cs#fully-satisfied "Полностью удовлетворен"

// Answer 4: Была ли предоставлена информация о Вашем состоянии здоровья?
* item[+]
  * linkId = "health-info-completeness"
  * answer[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"

// Answer 5: Получили ли вы ответы на все интересующие вас вопросы?
* item[+]
  * linkId = "questions-answered"
  * answer[+].valueCoding = $patient-satisfaction-cs#yes-complete "Да, полностью"

// Answer 6: Есть ли у Вас предложения по улучшению качества обслуживания?
* item[+]
  * linkId = "improvement-suggestions"
  * answer[+].valueString = "Было бы удобно иметь возможность получать напоминания о приёме через SMS."