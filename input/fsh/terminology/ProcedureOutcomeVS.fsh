ValueSet: ProcedureOutcomeVS
Id: procedure-outcome-vs
Title: "Procedure Outcome translations"
Description: "Procedure outcome ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureOutcomeCS)

// Enumerated rather than selected by hierarchy: the only SNOMED CT parent of these three is
// <<106239005 |Modifier mainly for procedure|, which also carries priorities, urgency and
// catheterisation phases and so does not describe a procedure outcome.
* include $sct#385669000 "Successful"
* include $sct#385670004 "Partially successful"
* include $sct#385671000 "Unsuccessful"