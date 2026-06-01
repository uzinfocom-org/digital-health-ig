ValueSet: ImmunizationStatusReasonVS
Id: immunization-status-reason-vs
Title: "Immunization status reason value set"
Description: "Immunization status reason codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/immunization-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActReasonCS)


* $v3-ActReason#IMMUNE "immunity"
* $v3-ActReason#MEDPREC "medical precaution"
* $v3-ActReason#OSTOCK "product out of stock"
* $v3-ActReason#PATOBJ "patient objection"