ValueSet: CompositionListEmptyReasonVS
Id: composition-list-empty-reason-vs
Title: "Composition list empty reason value set"
Description: "Composition list empty reason value set with Uzbek and Russian designations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-list-empty-reason-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionListEmptyReasonCS)    

* include codes from system $composition-list-empty-reason
