ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Types of Condition severities"
Description: "Types of Condition severities in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-severity-vs"
* ^experimental = true
* ^language = #en // SNOMED-CT does not yet have Uzbek translations, so we use English for the display values
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConditionSeverityCS)


// <<272141005 |Severities| is the SNOMED CT hierarchy the previously enumerated Mild, Moderate
// severity and Severe belong to, so the supplement's translations still cover the codes in use.
* include codes from system $sct where concept is-a #272141005
