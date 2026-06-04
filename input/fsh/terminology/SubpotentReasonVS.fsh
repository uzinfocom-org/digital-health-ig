ValueSet: SubpotentReasonVS
Id: subpotent-reason-vs
Title: "Immunization subpotent reason value set"
Description: "Immunization subpotent reason codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/subpotent-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SubpotentReasonCS)

* $immunization-subpotent-reason#partialdose "Partial Dose"
* $immunization-subpotent-reason#coldchainbreak "Cold Chain Break"
* $immunization-subpotent-reason#recall "Manufacturer Recall"
* $immunization-subpotent-reason#adversestorage "Adverse Storage"
* $immunization-subpotent-reason#expired "Expired Product"