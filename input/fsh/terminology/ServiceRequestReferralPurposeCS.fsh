CodeSystem: ServiceRequestReferralPurposeCS
Id: service-request-referral-purpose-cs
Title: "Service Request Referral Purpose Code System"
Description: "Code system representing the purpose of a referral in the Uzbekistan State Health Insurance System workflow process."
* insert OriginalCodeSystemDraft(service-request-referral-purpose-cs)

* #purpose-0001-0001 "Konsultatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консультации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Consultation"

* #purpose-0001-0002 "Diagnostika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностика"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostics"

* #purpose-0001-0003 "Davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment"

* #purpose-0001-0004 "Tashxisni aniqlashtirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уточнение диагноза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosis clarification"

* #purpose-0001-0005 "Dispanser hisobiga olish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Взятие на Д-учёт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Registration for dispensary follow-up"

* #purpose-0001-0006 "Tug'ruqni amalga oshirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родоразрешение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Delivery"

* #purpose-0001-0007 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"