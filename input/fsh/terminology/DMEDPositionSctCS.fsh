CodeSystem: DMEDPositionSctCS
Id: dmed-position-sct-cs
Title: "DMED Position SNOMED CodeSystem"
Description: "DMED Position SNOMED supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(dmed-position-sct-cs, $sct, 2026.1.0)

* #224577009 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Помощник медицинского работника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Healthcare Assistant"

* #158965000
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical practitioner"

* #24794006
  * ^designation[0].language = #ru
  * ^designation[=].value = "Государственный администратор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Government administrator"

* #446050000
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач общей практики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary care physician"

* #1255514008
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фармацевт, специализирующийся на вопросах регулирования."
  * ^designation[+].language = #en
  * ^designation[=].value = "Regulatory affairs pharmacist"