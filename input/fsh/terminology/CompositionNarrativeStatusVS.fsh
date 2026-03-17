ValueSet: CompositionNarrativeStatusVS
Id: composition-narrative-status-vs
Title: "Composition narrative status value set"
Description: "Composition narrative status with Uzbek and Russian designations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-narrative-status-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionNarrativeStatusCS)  
  
* include codes from system $composition-narrative-status
