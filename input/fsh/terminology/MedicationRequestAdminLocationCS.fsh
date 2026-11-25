CodeSystem: MedicationRequestAdminLocationCS
Id: medicationrequest-admin-location-cs
Title: "MedicationRequest admin location translations"
Description: "MedicationRequest admin location supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(medicationrequest-admin-location-cs, $medicationrequest-admin-location, 5.0.0)

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