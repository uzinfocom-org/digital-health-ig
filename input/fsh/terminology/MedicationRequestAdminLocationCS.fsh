CodeSystem: MedicationRequestAdminLocationCS
Id: medicationrequest-admin-location-cs
Title: "Medication Request Administration Location - UZ/RU Translations"
Description: "Uzbek and Russian translations for the MedicationRequest category codes (inpatient, outpatient, community)."
* insert SupplementCodeSystemDraft(medicationrequest-admin-location-cs, $medicationrequest-admin-location, 5.0.0)

* #inpatient
  * ^designation[0].language = #uz
  * ^designation[0].value = "statsionar"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Стационар"

* #outpatient
  * ^designation[0].language = #uz
  * ^designation[0].value = "ambulatoriya"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Амбулатория"

* #community
  * ^designation[0].language = #uz
  * ^designation[0].value = "Uyda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "На дому"