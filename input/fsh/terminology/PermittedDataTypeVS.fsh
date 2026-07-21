ValueSet: PermittedDataTypeVS
Id: permitted-data-type-vs
Title: "Laboratory Observation Value Types"
Description: "Allowed value types for laboratory observation results."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/permitted-data-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(PermittedDataTypeCS)

* include codes from system $permitted-data-type