ValueSet: IdentifierUseVS
Id: identifier-use-vs
Title: "Types of possible identifier uses"
Description: "Defines the `use` of an identifier in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/identifier-use-vs"
* ^experimental = true
* include $identifier-use#usual
  * ^designation[0].language = #ru
  * ^designation[=].value = "обычный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "odatiy"
* include $identifier-use#official
  * ^designation[0].language = #ru
  * ^designation[=].value = "официальный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "rasmiy"
* include $identifier-use#temp
  * ^designation[0].language = #ru
  * ^designation[=].value = "временный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "vaqtincha"
* include $identifier-use#secondary
  * ^designation[0].language = #ru
  * ^designation[=].value = "вторичный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ikkinchi darajali"
* include $identifier-use#old
  * ^designation[0].language = #ru
  * ^designation[=].value = "старый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "eski"

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
