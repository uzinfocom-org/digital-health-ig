CodeSystem: StatelessCitizenschipCS
Id: stateless-citizenship-cs
Title: "Additional codesystem for ISO 3166-2 to add 'stateless'"
Description: "Additional codesystem for ISO 3166-2 for DHP, adding the 'stateless' code"
* ^url = "https://terminology.medcore.uz/CodeSystem/stateless-citizenship-cs"
* ^status = #active
* ^experimental = true
* ^language = #uz
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #stateless "Fuqaroliksiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Без гражданства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stateless"
