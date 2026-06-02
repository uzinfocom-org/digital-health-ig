ValueSet: QuantityComparatorVS
Id: quantity-comparator-vs
Title: "Quantity Comparator translations"
Description: "Quantity comparator with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/quantity-comparator-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(QuantityComparatorCS)

* include codes from system $quantity-comparator
