CodeSystem: CancerIDRolesCS
Id: cancer-id-roles-cs
Title: "Cancer ID Roles CodeSystem"
Description: "Role classification for users within cancer information system."

* insert OriginalCodeSystemDraft(cancer-id-roles-cs)

* #1 "Katta ma'mur"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системный администратор"
  * ^designation[+].language = #en
  * ^designation[=].value = "System Administrator"

* #3 "Tibbiy ro'yxatdan o'tkazuvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регистратор"
  * ^designation[+].language = #en
  * ^designation[=].value = "registrar"

* #4 "Tadqiqotchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "исследователь"
  * ^designation[+].language = #en
  * ^designation[=].value = "researcher"

* #7 "Ma'mur"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Администратор учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Institution Administrator"
