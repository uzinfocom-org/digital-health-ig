CodeSystem: MedicationAdministrationAdminLocationCS
Id: medicationadministration-admin-location-cs
Title: "MedicationAdministration admin location translations"
Description: "MedicationAdministration admin location supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(
    medicationadministration-admin-location-cs,
    $medication-admin-location,
    1.0.1
)
* #inpatient
  * ^designation[0].language = #uz
  * ^designation[=].value = "statsionar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стационар"

* #outpatient
  * ^designation[0].language = #uz
  * ^designation[=].value = "ambulatoriya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амбулатория"

* #community
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uyda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На дому"