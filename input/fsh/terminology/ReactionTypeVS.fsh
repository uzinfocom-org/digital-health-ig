ValueSet: ReactionTypeVS
Id: reaction-type-vs
Title: "Reaction Type ValueSet"
Description: "Reaction type codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/reaction-type-vs"
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ReactionTypeCS)

* include codes from system $sct where concept is-a #404684003
// * include codes from system $sct