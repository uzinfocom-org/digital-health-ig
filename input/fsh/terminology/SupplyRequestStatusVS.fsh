ValueSet: SupplyRequestStatusVS
Id: supply-request-status-vs
Title: "SupplyRequest status"
Description: "SupplyRequest statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/supply-request-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SupplyRequestStatusCS)

* include codes from system $supplyrequest-status