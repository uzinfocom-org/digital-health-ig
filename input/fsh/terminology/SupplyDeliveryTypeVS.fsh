ValueSet: SupplyDeliveryTypeVS
Id: supply-delivery-type-vs
Title: "SupplyDelivery type"
Description: "SupplyDelivery types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/supply-delivery-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SupplyDeliveryTypeCS)

* include codes from system $supplydelivery-supplyitemtype
