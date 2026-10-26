ValueSet: YesNoIndicatorVS
Id: yes-no-indicator-vs
Title: "Expanded yes/no indicator"
Description: "Yes, no and the reasons an answer is missing, from HL7 v2 table 0532."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/yes-no-indicator-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(YesNoIndicatorCS)

* include codes from system $v2-0532
