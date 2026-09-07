ValueSet: ICDO3TopographyVS
Id: icd-o-3-topography-vs
Title: "ICD-O-3 Topography ValueSet"
Description: "All four-character ICD-O-3 topography codes (C00.0-C80.9); the three-character site groupers are excluded."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/icd-o-3-topography-vs"
* ^experimental = true
* include codes from system $icd-o-3 where code regex "C\\d\\d\\.\\d"
