ValueSet: RelevantClinicalInformationVS
Id: relevant-clinical-information-vs
Title: "Clinical information"
Description: "Relevant clinical information status types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/relevant-clinical-information-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RelevantClinicalInformationCS)

* include codes from system $v2-0916
