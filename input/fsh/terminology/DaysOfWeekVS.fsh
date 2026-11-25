ValueSet: DaysOfWeekVS
Id: days-of-week-vs
Title: "Day of week"
Description: "Days of week"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/days-of-week-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DaysOfWeekCS)

// Включаем все коды из стандартной системы
* include codes from system http://hl7.org/fhir/days-of-week