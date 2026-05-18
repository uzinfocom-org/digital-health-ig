ValueSet: ImmunizationStatusVS
Id: immunization-status-vs
Title: "Immunization status value set"
Description: "Immunization status codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/immunization-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ImmunizationStatusCS)


* $event-status#entered-in-error "Entered in Error"
* $event-status#completed "Completed"
* $event-status#not-done "Not Done"
