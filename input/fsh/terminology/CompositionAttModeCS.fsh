CodeSystem: CompositionAttModeCS
Id: composition-att-mode-cs
Title: "Composition attestation mode"
Description: "Composition attestation mode supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(composition-att-mode-cs, $composition-att-mode, 5.0.0)

* #personal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Личная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shaxsiy"
* #professional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессиональная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Professional"  
* #legal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Юридическая"           
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yuridik"
* #official
  * ^designation[0].language = #ru
  * ^designation[=].value = "Официальная"   
  * ^designation[+].language = #uz  
  * ^designation[=].value = "Rasmiy"