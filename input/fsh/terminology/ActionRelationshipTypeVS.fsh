ValueSet: ActionRelationshipTypeVS
Id: action-relationship-type-vs
Title: "Action relationship type"
Description: "Action relationship types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-relationship-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionRelationshipTypeCS)

* include codes from system $action-relationship-type
