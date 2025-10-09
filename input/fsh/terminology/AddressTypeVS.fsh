ValueSet: AddressTypeVS
Id: address-type-vs
Title: "Types of possible addresses"
Description: "Defines the types of addresses with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/address-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressTypeCS)

* include codes from system $address-type
