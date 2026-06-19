CodeSystem: DMEDRoleCS
Id: dmed-role-cs
Title: "DMED Role Code System"
Description: "List of healthcare personnel roles used in DMED"
* insert OriginalCodeSystemDraft(dmed-role-cs)

* #director "Direktor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Директор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Director"

* #doctor "Shifokor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач"
  * ^designation[+].language = #en
  * ^designation[=].value = "Doctor"

* #manager "Menejer"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Менеджер"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manager"

* #laboratory "Laboratoriya xodimi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сотрудник лаборатории"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory"

* #nurse "Hamshira"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медсестра"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nurse"