ValueSet: BDPDispenseMatchStatusVS
Id: bdp-dispense-match-status-vs
Title: "BiologicallyDerivedProductDispense match status"
Description: "BiologicallyDerivedProductDispense match status codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/bdp-dispense-match-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BDPDispenseMatchStatusCS)
* include codes from system $bdp-dispense-match-status
