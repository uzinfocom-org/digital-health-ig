ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure Codes"
Description: "Procedure codes used in the Uzbekistan Digital Health Platform: SNOMED CT for clinical meaning, ICHI for statistical reporting."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-code-vs"
* ^status = #active
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureCodeCS)

* include codes from system $sct where concept is-a #71388002
// ICHI carries the statistical code a procedure is reported under. Both systems are
// allowed on Procedure.code so a resource can carry either, or both as two codings.
* include codes from valueset $ichi-vs

// * include $sct#33879002
// * include $sct#20135006
// * include $sct#25179006
