CodeSystem: PaymentTypeCS
Id: payment-type-cs
Title: "Payment Type Code System"
Description: "List of payment types used in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(payment-type-cs)

* #paytype-0001-0001 "Bepul"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бесплатно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Free"

* #paytype-0001-0002 "Pullik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Платно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Paid"

* #paytype-0001-0003 "Sug'urta"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Страхование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Insurance"

* #paytype-0001-0004 "Davlat tomonidan moliyalashtiriladigan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Финансируется государством"
  * ^designation[+].language = #en
  * ^designation[=].value = "State-funded"