ValueSet: SupplyDeliveryTypeVS
Id: supply-delivery-type-vs
Title: "Supply delivery type"
Description: "Supply delivery types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/supply-delivery-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SupplyDeliveryTypeCS)

* include codes from system $supplydelivery-supplyitemtype
