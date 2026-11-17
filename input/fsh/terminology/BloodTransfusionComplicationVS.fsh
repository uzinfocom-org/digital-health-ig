ValueSet: BloodTransfusionComplicationVS
Id: blood-transfusion-complication-vs
Title: "Blood transfusion complication"
Description: "Complications of blood product transfusion in recipients"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-transfusion-complication-vs"
* ^status = #draft
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureComplicationSnomedCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureComplicationSnomedUSCS)

* include $sct#361098001
* include $sct#36617002
* include $sct#79337003
* include $sct#35633007
* include $sct|http://snomed.info/sct/731000124108/version/20250901#435001000124103
