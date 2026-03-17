ValueSet: CompositionAttModeVS
Id: composition-att-mode-vs
Title: "Document Reference Composition Attestattion"
Description: "Defines the consent state codes in Russian and Uzbek"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-att-mode-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionAttModeCS)

* include codes from system $composition-att-mode
