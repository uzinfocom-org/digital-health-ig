ValueSet: ConditionCodeVS
Id: condition-code-vs
Title: "Condition Codes"
Description: "Codes for conditions, allowing use of both ICD-10 and SNOMED CT as appropriate on the context"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs"
* ^experimental = true

* include codes from system $icd-10

* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept is-a #243796009 "Context-dependent categories"
* include codes from system $sct where concept is-a #272379006 "Events"
