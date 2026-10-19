CodeSystem: RequestResourceTypesCS
Id: request-resource-types-cs
Title: "Request resource types"
Description: "FHIR request resource types in Uzbekistan"
* insert SupplementCodeSystemDraft(request-resource-types-cs, $resource-types, 5.0.0)

* #ImmunizationRecommendation
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рекомендация по вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlash tavsiyasi"

* #MedicationRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на медикаменты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori so'rovi"
* #Appointment
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись на приём"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qabulga yozilish"
* #AppointmentResponse
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ответ на запись на приём"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qabulga yozilishga javob"
* #CarePlan
  * ^designation[0].language = #ru
  * ^designation[=].value = "План лечения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Davolash rejasi"
* #Claim
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заявка на возмещение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'lov talabnomasi"
* #CommunicationRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на сообщение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xabar so'rovi"
* #CoverageEligibilityRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос о праве на страховое покрытие"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sug'urta qoplamasi huquqi bo'yicha so'rov"
* #DeviceRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на медицинское изделие"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy buyum so'rovi"
* #EnrollmentRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на включение в страховой план"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sug'urta rejasiga kiritish so'rovi"
* #NutritionOrder
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение питания"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ovqatlanish tayinlovi"
* #RequestOrchestration
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группа запросов"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'rovlar guruhi"
* #ServiceRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Направление на услугу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xizmatga yo'llanma"
* #SupplyRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на поставку"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ta'minot so'rovi"
* #Task
  * ^designation[0].language = #ru
  * ^designation[=].value = "Задача"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vazifa"
* #Transport
  * ^designation[0].language = #ru
  * ^designation[=].value = "Транспортировка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashish"
* #VisionPrescription
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рецепт на очки или линзы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'zoynak yoki linza retsepti"
