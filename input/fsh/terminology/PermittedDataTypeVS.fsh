ValueSet: PermittedDataTypeVS
Id: permitted-data-type-vs
Title: "Permitted data type"
Description: "Permitted data types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/permitted-data-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(PermittedDataTypeCS)

* include codes from system $permitted-data-type