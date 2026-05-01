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
* $sct#1335890004 "Recovered from adverse event with sequelae (finding)"
* $sct#1336140009 "The condition is showing improvement and it is anticipated that the subject will recover from the event."
* $sct#1339036001 "An adverse event that continues without resolution between patient evaluation timepoints."
* $sct#1352007006 "Complete recovery from adverse event"
// * include codes from system $sct where concept is-a #281647001