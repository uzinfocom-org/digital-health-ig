ValueSet: ImmunizationStatusReasonVS
Id: immunization-status-reason-vs
Title: "Immunization status reason value set"
Description: "Immunization status reason codes with Uzbek and Russian translations"
* ^url = "https://dhp.uz/fhir/core/ValueSet/immunization-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ImmunizationStatusReasonCS)
// * ^extension[+].url = $valueset-supplement
// * ^extension[=].valueCanonical = Canonical(ImmunizationStatusReasonSnomedCS)

* $v3-ActReason#IMMUNE "immunity"
* $v3-ActReason#MEDPREC "medical precaution"
* $v3-ActReason#OSTOCK "product out of stock"
* $v3-ActReason#PATOBJ "patient objection"
* $sct#268559007 "No consent to any immunization"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Har qanday immunizatsiyaga rozilik yo‘q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нет согласия на какую-либо иммунизацию"