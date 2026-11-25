ValueSet: AddressUseVS
Id: address-use-vs
Title: "Address registration type"
Description: "Address registration types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/address-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressUseCS)

* include codes from system $address-use
