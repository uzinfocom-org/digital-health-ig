ValueSet: DaysOfWeekVS
Id: days-of-week-vs
Title: "Days of Week ValueSet"
Description: "A value set defining the days of the week (mon, tue, wed, etc.) with UZ/RU translations."
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(DaysOfWeekCS)

// Включаем все коды из стандартной системы
* include codes from system http://hl7.org/fhir/days-of-week