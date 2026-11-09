ValueSet: ChargeItemCodeVS
Id: charge-item-code-vs
Title: "ChargeItem code"
Description: "ChargeItem codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/charge-item-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ChargeItemCodeCS)

* include $sct#373784005 "Dispensing medication"
