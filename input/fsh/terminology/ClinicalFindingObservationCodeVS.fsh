ValueSet: ClinicalFindingObservationCodeVS
Id: clinical-finding-observation-code-vs
Title: "UZ Core Clinical Finding Observation Code ValueSet"
Description: "Codes for clinical finding observations. Includes SNOMED CT Observable Entity and Clinical Finding hierarchies for observations not representable in LOINC."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/clinical-finding-observation-code-vs"
* ^experimental = true
* include codes from system $sct where concept is-a #363787002 "Observable entity (observable entity)"
* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
