ValueSet: ConsentPurposeOfUseVS
Id: consent-purpose-of-use-vs
Title: "Consent purpose of use"
Description: "Defines the purposes of use for consent"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/consent-purpose-of-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActReasonCS)

* include codes from system $v3-ActReason where concept is-a #PurposeOfUse
