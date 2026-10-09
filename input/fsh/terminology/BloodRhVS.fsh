ValueSet: BloodRhVS
Id: blood-rh-vs
Title: "RhD type"
Description: "RhD types"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BloodRhCS)

* include $sct#165747007
* include $sct#165746003