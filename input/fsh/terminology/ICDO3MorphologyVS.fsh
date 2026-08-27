ValueSet: ICDO3MorphologyVS
Id: icd-o-3-morphology-vs
Title: "ICD-O-3 Morphology ValueSet"
Description: "All ICD-O-3 morphology codes (histology/behaviour, 8000/0-9993/3), including terms marked obsolete in ICD-O-3.2 so that historical records stay valid."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/icd-o-3-morphology-vs"
* ^experimental = true
* include codes from system $icd-o-3 where concept descendent-of #M
