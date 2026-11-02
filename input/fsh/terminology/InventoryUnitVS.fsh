ValueSet: InventoryUnitVS
Id: inventory-unit-vs
Title: "Inventory unit"
Description: "Inventory units used in the Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventory-unit-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryUnitSnomedCS)

* include codes from system inventory-unit-cs

* include $sct#732936001 "Tablet"
* include $sct#732937005 "Capsule"
* include $sct#733026001 "Vial"
* include $sct#732978007 "Ampule"
* include $sct#732986007 "Bottle"
* include $sct#732982009 "Bag"
* include $sct#418445004 "Box - unit of product usage"
* include $sct#1681000175101 "Package - unit of product usage"
* include $sct#419179001 "Kit - unit of product usage"

* include $medication-total-volume-local-units-cs#piece
* include $medication-total-volume-local-units-cs#dose