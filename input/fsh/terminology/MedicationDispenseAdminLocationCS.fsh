CodeSystem: MedicationDispenseAdminLocationCS
Id: medicationdispense-admin-location-cs
Title: "MedicationDispense AdminLocation (UZ supplement)"
Description: "Uzbek and Russian display translations for MedicationDispense administration location codes"
* insert SupplementCodeSystemDraft(medicationdispense-admin-location-cs, $medicationdispense-admin-location, 5.0.0)
* ^language = #uz

* #inpatient "Statsionar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационар"
  * ^designation[+].language = #en
  * ^designation[=].value = "Inpatient"

* #outpatient "Ambulator"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амбулаторный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Outpatient"

* #community "Yashash joyida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По месту жительства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Community"