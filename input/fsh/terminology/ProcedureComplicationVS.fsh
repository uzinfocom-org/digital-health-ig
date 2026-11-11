ValueSet: ProcedureComplicationVS
Id: procedure-complication-vs
Title: "Procedure complication"
Description: "Complications and absence of reaction recorded for a procedure"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-complication-vs"
* ^status = #draft
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureComplicationSnomedCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ReactionTypeCS)

* include $sct#271594007
* include $sct#27942005
* include $sct#194828000
* include $sct#735173007
* include $sct#260389003
