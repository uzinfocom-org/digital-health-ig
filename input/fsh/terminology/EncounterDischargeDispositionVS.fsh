ValueSet: EncounterDischargeDispositionVS
Id: encounter-discharge-disposition-vs
Title: "Encounter discharge disposition translations"
Description: "Encounter discharge disposition codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-discharge-disposition-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterDischargeDispositionCS)

* include $encounter-discharge-disposition#home
* include $encounter-discharge-disposition#other-hcf
* include $encounter-discharge-disposition#oth
* include encounter-discharge-disposition-home-cs#mserv-0004-00001
* include encounter-discharge-disposition-home-cs#mserv-0004-00002
