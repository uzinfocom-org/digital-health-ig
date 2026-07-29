ValueSet: ProcedureOutcomeVS
Id: procedure-outcome-vs
Title: "Procedure Outcome translations"
Description: "Procedure outcome ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureOutcomeCS)

* include codes from system $sct

// * include $sct#385669000 "Successful"
// * include $sct#385670004 "Partially successful"
// * include $sct#385671000 "Unsuccessful" 