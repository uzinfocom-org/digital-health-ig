CodeSystem: MedicationRequestAdminLocationCS
Id: medicationrequest-admin-location-cs
Title: "MedicationRequest Administration Location translations"
Description: "Uzbek and Russian translations for the MedicationRequest category codes (inpatient, outpatient, community)."
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