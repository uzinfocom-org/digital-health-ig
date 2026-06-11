CodeSystem: ServiceRequestStatusCS
Id: service-request-status-cs
Title: "Service Request status translations"
Description: "Service request status with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(service-request-status-cs, $service-request-status, 5.0.0)

* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "черновик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "qoralama"
* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "активен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faol"

* #on-hold
  * ^designation[0].language = #ru
  * ^designation[=].value = "приостановлен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "vaqtincha to'xtatilgan"

* #revoked
  * ^designation[0].language = #ru
  * ^designation[=].value = "отменён"
  * ^designation[+].language = #uz
  * ^designation[=].value = "bekor qilingan"

* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "выполнен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "bajarilgan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "введён по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "xato bilan kiritilgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "неизвестен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "noma'lum"
