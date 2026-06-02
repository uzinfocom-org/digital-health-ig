ValueSet: ObservationCodesVS
Id: observation-codes-vs
Title: "Observation codes"
Description: "Codes for observations, allowing use of LOINC and SNOMED CT as appropriate for the context"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes-vs"
* ^experimental = true

* include codes from system $loinc

* include codes from system $sct where concept is-a #363787002 "Observable entity (observable entity)"
* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept is-a #386053000 "Evaluation procedure (procedure)"
* include codes from system $sct where concept is-a #413350009 "Finding with explicit context (situation)"
* include codes from system $sct where concept is-a #272379006 "Event (event)"
