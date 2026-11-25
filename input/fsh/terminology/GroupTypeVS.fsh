ValueSet: GroupTypeVS
Id: group-type-vs
Title: "Group type"
Description: "Group types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/group-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GroupTypeCS)

* include codes from system $group-type
