CodeSystem: SupplyDeliveryTypeCS
Id: supply-delivery-type-cs
Title: "Supply delivery type translations"
Description: "Supply delivery type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(supply-delivery-type-cs, $supplydelivery-supplyitemtype, 5.0.0)

* #medication
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медикамент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori-darmon"

* #device
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройство"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilma"

* #biologicallyderivedproduct
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биологически полученный продукт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biologik hosila mahsulot"
