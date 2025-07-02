ValueSet: AddressUseVS
Id: address-use-vs
Title: "Types of address registration"
Description: "Defines type of address registration in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/address-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressUseCS)
* ^version = "5.0.0"

* include codes from system $address-use
