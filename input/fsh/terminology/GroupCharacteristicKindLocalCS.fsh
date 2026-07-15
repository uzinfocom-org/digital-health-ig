CodeSystem: GroupCharacteristicKindLocalCS
Id: group-characteristic-kind-local-cs
Title: "Group characteristic kind (local)"
Description: "Local codes for kinds of group characteristics that are not covered by LOINC, such as place of residence, healthcare organization and prior screening"
* insert OriginalCodeSystemDraft(group-characteristic-kind-local-cs)

* #region-of-residence "Yashash hududi (viloyat)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регион проживания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Region of residence"
* #district-of-residence "Yashash tumani"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Район проживания"
  * ^designation[+].language = #en
  * ^designation[=].value = "District of residence"
* #healthcare-organization "Tibbiyot tashkiloti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинская организация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Healthcare organization"
* #diagnosis "Tashxis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наличие диагноза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosis"
* #disability-status "Nogironlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инвалидность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disability status"
* #previous-screening "Ilgari ushbu skriningdan o'tgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проходил данный скрининг ранее"
  * ^designation[+].language = #en
  * ^designation[=].value = "Previous screening"
