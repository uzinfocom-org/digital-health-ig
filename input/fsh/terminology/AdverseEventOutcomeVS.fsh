ValueSet: AdverseEventOutcomeVS
Id: adverse-event-outcome-vs
Title: "Types of AdverseEvent outcome"
Description: "Types of AdverseEvent outcome in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/adverse-event-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AdverseEventOutcomeCS)

* $sct#405491001 "Adverse incident resulting in no harmful effect"
* $sct#405531001 "Adverse incident resulting in potentially permanent but not disabling damage"
* $sct#405532008 "Adverse incident resulting in potentially permanent disabling damage"
* $sct#405535005 "Adverse incident resulting in death"
* $sct#1335890004 "Recovered from adverse event with sequelae"
* $sct#1336140009 "Recovering from adverse event"
* $sct#1339036001 "Persistent adverse event without recovery"
* $sct#1352007006 "Recovered from adverse event without sequela"
// * include codes from system $sct where concept is-a #281647001