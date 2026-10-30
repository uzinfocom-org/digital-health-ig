ValueSet: SupplyDeliveryStatusVS
Id: supply-delivery-status-vs
Title: "SupplyDelivery status"
Description: "SupplyDelivery statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/supply-delivery-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SupplyDeliveryStatusCS)

* include codes from system $supplydelivery-status
