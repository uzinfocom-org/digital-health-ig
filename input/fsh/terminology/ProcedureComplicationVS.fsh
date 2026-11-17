ValueSet: ProcedureComplicationVS
Id: procedure-complication-vs
Title: "Blood donation complication"
Description: "Blood donation complications"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-complication-vs"
* ^status = #draft
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureComplicationSnomedCS)

* include $sct#271594007
* include $sct#271787007
* include $sct#194828000
* include $sct#735173007
