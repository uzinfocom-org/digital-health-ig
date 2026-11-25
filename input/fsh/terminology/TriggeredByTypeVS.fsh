ValueSet: TriggeredByTypeVS
Id: triggered-bytype-vs
Title: "Triggered by type"
Description: "Triggered by types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/triggered-bytype-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TriggeredByTypeCS)

* include codes from system $triggered-by-type
