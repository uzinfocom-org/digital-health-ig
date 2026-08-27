// TODO: Uzbek designations are placeholders (copied from Russian) pending native-speaker review.
CodeSystem: DiabetesInRelativesCS
Id: diabetes-in-relatives-cs
Title: "Diabetes in relatives answers"
Description: "Answer codes for family history of diabetes in the diabetes early-detection screening questionnaire"
* insert OriginalCodeSystemDraft(diabetes-in-relatives-cs)
* ^language = #uz

* #immediate_relatives "Yaqin qarindoshlarida (ota-ona, aka-uka, opa-singil)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "У ближайших родственников (родители, братья, сестры)"
  * ^designation[+].language = #en
  * ^designation[=].value = "In immediate relatives (parents, siblings)"

* #distant_relatives "Uzoq qarindoshlarida (bobo, buvi, xola, amaki)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "У дальних родственников (дедушка, бабушка, тетя, дядя)"
  * ^designation[+].language = #en
  * ^designation[=].value = "In distant relatives (grandparents, aunt, uncle)"

* #none "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
