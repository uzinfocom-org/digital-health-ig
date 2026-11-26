ValueSet: DispensaryDeregistrationReasonVS
Id: dispensary-deregistration-reason-vs
Title: "Dispensary deregistration reason"
Description: "Reasons for ending dispensary observation, reusing existing discharge disposition codes and adding only missing reasons."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/dispensary-deregistration-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterDischargeDispositionCS)
* include codes from system dispensary-deregistration-reason-cs
* include $encounter-discharge-disposition#exp
* include $encounter-discharge-disposition#other-hcf
* include $encounter-discharge-disposition#oth
* include encounter-discharge-disposition-home-cs#mserv-0004-00005
