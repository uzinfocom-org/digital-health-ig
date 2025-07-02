ValueSet: MaritalStatusVS
Id: marital-status-vs
Title: "Marital status translations"
Description: "Defines Uzbek and Russian translations for marital status codes in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/marital-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MaritalStatusCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NullFlavorCS)

* include codes from system $v3-MaritalStatus
* $v3-NullFlavor#UNK
