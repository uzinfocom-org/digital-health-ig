ValueSet: ConsentStateCodesVS
Id: consent-state-codes-vs
Title: "Consent State Codes"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-state-codes-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConsentStateCodesCS)
* ^version = "5.0.0"

* include $consent-state-codes#draft
* include $consent-state-codes#active
* include $consent-state-codes#inactive
* include $consent-state-codes#not-done
* include $consent-state-codes#entered-in-error
* include $consent-state-codes#unknown
