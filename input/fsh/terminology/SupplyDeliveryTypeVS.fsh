ValueSet: SupplyDeliveryTypeVS
Id: supply-delivery-type-vs
Title: "Supply Delivery Type"
Description: "Supply Delivery Type for blood products and supply delivery."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/supply-delivery-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SupplyDeliveryTypeCS)

* include codes from system $supplydelivery-supplyitemtype
