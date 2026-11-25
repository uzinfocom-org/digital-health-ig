CodeSystem: MedicationDispenseAdminLocationCS
Id: medicationdispense-admin-location-cs
Title: "MedicationDispense admin location translations"
Description: "MedicationDispense admin location supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(medicationdispense-admin-location-cs, $medicationdispense-admin-location, 5.0.0)

* #inpatient
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационар"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Statsionar"

* #outpatient
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амбулаторный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ambulator"

* #community
  * ^designation[0].language = #ru
  * ^designation[=].value = "По месту жительства"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yashash joyida"