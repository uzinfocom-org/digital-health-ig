ValueSet: InventoryUnitVS
Id: inventory-unit-vs
Title: "Inventory Units"
Description: "Inventory units used in the Uzbekistan healthcare system"
* ^url = "https://dhp.uz/fhir/core/ValueSet/inventory-unit-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryUnitSnomedCS)

* include codes from system inventory-unit-cs

* include $sct#732936001 "Tablet"
* include $sct#732937005 "Capsule"
* include $sct#733026001 "Vial"
* include $sct#732978007 "Ampoule"
* include $sct#732986007 "Bottle"
* include $sct#732982009 "Bag"

* include $medication-total-volume-local-units-cs#piece
* include $medication-total-volume-local-units-cs#dose