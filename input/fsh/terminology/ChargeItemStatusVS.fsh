ValueSet: ChargeItemStatusVS
Id: chargeitem-status-vs
Title: "ChargeItem status"
Description: "ChargeItem statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/chargeitem-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ChargeItemStatusCS)

* include codes from system $chargeitem-status
