CodeSystem: BloodDonorObservationTypeCS
Id: blood-donor-observation-type-cs
Title: "Blood Donor Observation Type Code System"
Description: "Observation type codes used for blood donor data in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(blood-donor-observation-type-cs)

* #donor-category "Donor toifasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Категория донора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donor category"