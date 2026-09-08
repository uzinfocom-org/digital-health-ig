ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure Codes"
Description: "SNOMED CT procedure codes used in the Uzbekistan Digital Health Platform."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-code-vs"
* ^status = #active
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureCodeCS)

* include codes from system $sct where concept is-a #71388002

// * include $sct#33879002
// * include $sct#20135006
// * include $sct#25179006
