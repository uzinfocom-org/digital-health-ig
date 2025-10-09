ValueSet: AddressUseVS
Id: address-use-vs
Title: "Types of address registration"
Description: "Defines type of address registration in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/address-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressUseCS)

* include codes from system $address-use
