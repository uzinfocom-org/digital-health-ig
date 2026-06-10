ValueSet: AdverseEventSeriousnessVS
Id: adverse-event-seriousness-vs
Title: "Types of AdverseEvent seriousness"
Description: "Types of AdverseEvent seriousness in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/adverse-event-seriousness-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AdverseEventSeriousnessCS)

* $adverse-event-seriousness#non-serious "Non-serious"
* $adverse-event-seriousness#serious "Serious"

// * include codes from system $adverse-event-seriousness