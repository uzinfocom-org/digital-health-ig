ValueSet: AddressTypeVS
Id: address-type-vs
Title: "Types of possible addresses"
Description: "Defines the types of addresses with translations in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/address-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressTypeCS)
* ^version = "5.0.0"

* include codes from system $address-type
