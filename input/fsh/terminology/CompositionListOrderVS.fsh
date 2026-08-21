ValueSet: CompositionListOrderVS
Id: composition-list-order-vs
Title: "Composition list order value set"
Description: "Composition list order value set with translations in uzbek and russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-list-order-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionListOrderCS)  

* include codes from system $composition-list-order
