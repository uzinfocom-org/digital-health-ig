CodeSystem: CommunicationCategoryCS
Id: communication-category-cs
Title: "Communication category"
Description: "Local classifier of the kinds of public health alerts sent to patients through the Patient Portal"
* insert OriginalCodeSystemDraft(communication-category-cs)

* #comcat-0001-00001 "Hudud aholisini ogohlantirish"
  * ^definition = "Alert for patients who live in a zone to which a manager has assigned a level under the national alert regulation"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оповещение пациентов зоны"
  * ^designation[+].language = #en
  * ^designation[=].value = "Zone residents alert"
* #comcat-0001-00002 "Tashkilot xodimlari guruhini ogohlantirish"
  * ^definition = "Alert sent by a manager to the members of an organization employee group"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оповещение работников группы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Employee group alert"
