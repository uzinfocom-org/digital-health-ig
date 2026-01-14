ValueSet: SpecimenRoleVS
Id: specimen-role-vs
Title: "Specimen role"
Description: "Codes providing the role of a specimen."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/specimen-role-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SpecimenRoleCS)

* include codes from system $specimen-role
