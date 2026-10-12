CodeSystem: RequestResourceTypesCS
Id: request-resource-types-cs
Title: "Request resource types"
Description: "FHIR request resource types in Uzbekistan"
* insert SupplementCodeSystemDraft(request-resource-types-cs, $resource-types, 5.0.0)


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
  * ^designation[=].value = "План медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy yordam rejasi"

* #Claim
  * ^designation[0].language = #ru
  * ^designation[=].value = "Требование на оплату"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'lov talabnomasi"

* #CommunicationRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на коммуникацию"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muloqot so'rovi"

* #CoverageEligibilityRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на проверку страхового покрытия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sug'urta qoplamasini tekshirish so'rovi"

* #DeviceRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос медицинского изделия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy buyum so'rovi"

* #EnrollmentRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на регистрацию"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tish so'rovi"

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

* #NutritionOrder
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение питания"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ovqatlanish buyurtmasi"

* #RequestOrchestration
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оркестрация запросов"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'rovlarni muvofiqlashtirish"

* #ServiceRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на медицинскую услугу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy xizmat so'rovi"

* #SupplyRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на поставку"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yetkazib berish so'rovi"

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
  * ^designation[=].value = "Рецепт на средства коррекции зрения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'rishni tuzatish vositalari uchun retsept"
