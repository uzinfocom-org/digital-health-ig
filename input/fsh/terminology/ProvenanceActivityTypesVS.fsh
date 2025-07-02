ValueSet: ProvenanceActivityTypesVS
Id: provenance-activity-types-vs
Title: "Provenance Activity Types"
Description: "Defines the provenance activity types."
* ^url = "https://terminology.medcore.uz/ValueSet/provenance-activity-types-vs"
* ^experimental = true
* ^language = #en
* include $v3-DocumentCompletion#LA "legally authenticated"
  * ^designation[+].language = #ru
  * ^designation[=].value = "юридическое заверение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "qonuniy tasdiqlangan"
