ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Types of severity"
Description: "Types of severity in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-severity-vs"
* ^experimental = true
* ^language = #en // SNOMED-CT does not yet have Uzbek translations, so we use English for the display values

* include $sct#255604002 "Mild"
* include $sct#6736007 "Moderate"
* include $sct#24484000 "Severe"
