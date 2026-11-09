CodeSystem: BDPDispenseOriginRelationshipCS
Id: bdp-dispense-origin-relationship-cs
Title: "BiologicallyDerivedProductDispense origin relationship translations"
Description: "BiologicallyDerivedProductDispense origin relationship supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(bdp-dispense-origin-relationship-cs, $bdp-dispense-origin-relationship, 5.0.0)

* #autologous
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аутологичный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Autologik"

* #related
  * ^designation[0].language = #ru
  * ^designation[=].value = "От кровного родственника"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qon-qarindosh donordan"

* #directed
  * ^designation[0].language = #ru
  * ^designation[=].value = "От донора, специально подобранного для реципиента"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muayyan retsipiyent uchun maxsus tanlangan donordan"

* #allogeneic
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аллогенный (от неродственного донора)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Allogenik (qarindosh bo‘lmagan donordan)"

* #xenogenic
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ксеногенный (от другого биологического вида)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ksenogenik (boshqa biologik turdan)"
