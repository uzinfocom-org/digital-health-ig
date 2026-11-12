ValueSet: BDPDispenseOriginRelationshipVS
Id: bdp-dispense-origin-relationship-vs
Title: "BiologicallyDerivedProductDispense origin relationship"
Description: "BiologicallyDerivedProductDispense origin relationships"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/bdp-dispense-origin-relationship-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BDPDispenseOriginRelationshipCS)
* include codes from system $bdp-dispense-origin-relationship
