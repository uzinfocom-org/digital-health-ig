ValueSet: CompositionListOrderVS
Id: composition-list-order-vs
Title: "Composition list order"
Description: "Composition list orders"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-list-order-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionListOrderCS)  

* include codes from system $composition-list-order
