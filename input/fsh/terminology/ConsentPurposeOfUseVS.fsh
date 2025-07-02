ValueSet: ConsentPurposeOfUseVS
Id: consent-purpose-of-use-vs
Title: "Consent purpose of use"
Description: "Defines the purposes of use for consent"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-purpose-of-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActReasonCS)
* ^version = "2.0.0"

* include $v3-ActReason#RECORDMGT
