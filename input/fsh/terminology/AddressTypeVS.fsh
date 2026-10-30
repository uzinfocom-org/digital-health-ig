ValueSet: AddressTypeVS
Id: address-type-vs
Title: "Address type"
Description: "Address types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/address-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AddressTypeCS)

* include codes from system $address-type
