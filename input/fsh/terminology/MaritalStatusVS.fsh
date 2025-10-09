ValueSet: MaritalStatusVS
Id: marital-status-vs
Title: "Marital status translations"
Description: "Defines marital status codes in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/marital-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MaritalStatusCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NullFlavorCS)

* include codes from system $v3-MaritalStatus
* $v3-NullFlavor#UNK
