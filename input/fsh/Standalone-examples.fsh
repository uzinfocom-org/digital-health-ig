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

Instance: specimen-example-blood
InstanceOf: Specimen
Usage: #example
Description: "Temporary Specimen instance for lab (based on drafted UZCoreSpecimen Excel structure)"
/* * identifier.system = "https://dhp.uz/fhir/identifier/specimen-id"
* identifier.value = "SPC-2025-000001"
* accessionIdentifier.system = "https://dhp.uz/fhir/identifier/lab-accession-id"
* accessionIdentifier.value = "ACC-2025-000045" */
* status = #available
* type = $v2-0487#BLD "Whole blood"
* subject = Reference(Patient/example-salim)
* receivedTime = "2025-11-04T08:30:00Z"
* request[0] = Reference(ServiceRequest/example-cbc-order)
* role[0] = $specimen-role#p "Patient"
* collection.collector = Reference(Practitioner/example-practitioner)
* collection.collectedDateTime = "2025-11-04T08:10:00Z"
* collection.duration = 5 'min'
* collection.quantity = 3 'mL' "mL"
* collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* note[0].text = "Venous blood collected into EDTA tube. No visible hemolysis."

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
* specimen[0] = Reference(Specimen/specimen-example-blood)

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

// Temporary stand-ins referenced by the Procedure example; both should be fleshed out (or replaced with proper profile-conforming instances) before publication
Instance: example-careplan
InstanceOf: CarePlan
Usage: #example
Title: "example-careplan"
Description: "Example of a careplan"
* status = #active
* intent = #plan
* subject = Reference(example-david)

Instance: example-medication
InstanceOf: Medication
Usage: #example
Title: "example-medication"
Description: "Example of a medication"
* identifier.value = "medic-001"

// ============== Questionnaire Instance ==============

Instance: PatientSatisfactionQuestionnaire
InstanceOf: Questionnaire
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


Instance: example-patient-satisfaction-response
InstanceOf: QuestionnaireResponse
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
