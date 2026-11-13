ValueSet: BDPDispenseStatusVS
Id: bdp-dispense-status-vs
Title: "BiologicallyDerivedProductDispense status"
Description: "BiologicallyDerivedProductDispense statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/bdp-dispense-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BDPDispenseStatusCS)
* include codes from system $bdp-dispense-status
