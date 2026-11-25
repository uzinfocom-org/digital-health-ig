ValueSet: AdverseEventActualityVS
Id: adverse-event-actuality-vs
Title: "AdverseEvent actuality"
Description: "AdverseEvent actualities"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/adverse-event-actuality-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AdverseEventActualityCS)


* $adverse-event-actuality#actual "Adverse Event"
* $adverse-event-actuality#potential "Potential Adverse Event"
// * include codes from system $adverse-event-actuality