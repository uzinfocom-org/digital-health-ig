ValueSet: CarePlanLocationVS
Id: care-plan-location-vs
Title: "CarePlan location"
Description: "CarePlan location value set, used to describe the location where care is provided to a patient"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/care-plan-location-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CarePlanLocationCS)

* include $v3-RoleCode#PTRES
* include $v3-RoleCode#OF