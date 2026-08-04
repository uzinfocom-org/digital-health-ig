ValueSet: CompositionAttModeVS
Id: composition-att-mode-vs
Title: "Composition attestation mode"
Description: "Composition attestation mode codes with Uzbek and Russian designations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-att-mode-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionAttModeCS)

* include codes from system $composition-att-mode
