CodeSystem: LocationKindsCS
Id: location-kinds-cs
Title: "Location Kinds"
Description: "Defines the kind of Location in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/CodeSystem/location-kinds-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2025-03-17"
* ^publisher = "Uzinfocom"
* ^content = #complete
* ^language = #uz
* ^caseSensitive = true
* #Branch "Bo'limi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отделение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Branch"
* #Ward "Palata"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Палата"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ward"
* #Bed "To'shak"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Койка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bed"
