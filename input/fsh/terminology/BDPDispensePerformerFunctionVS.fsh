ValueSet: BDPDispensePerformerFunctionVS
Id: bdp-dispense-performer-function-vs
Title: "BiologicallyDerivedProductDispense performer function"
Description: "BiologicallyDerivedProductDispense performer functions"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/bdp-dispense-performer-function-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BDPDispensePerformerFunctionCS)
* include codes from system $bdp-dispense-performer-function
