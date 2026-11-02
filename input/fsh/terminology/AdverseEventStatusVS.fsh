ValueSet: AdverseEventStatusVS
Id: adverse-event-status-vs
Title: "AdverseEvent status"
Description: "AdverseEvent statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/adverse-event-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AdverseEventStatusCS)

* $event-status#in-progress "In Progress"
* $event-status#completed "Completed"
* $event-status#entered-in-error "Entered in Error"
* $event-status#unknown "Unknown"


// * include codes from system $event-status