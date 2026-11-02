ValueSet: GroupMembershipBasisVS
Id: group-membership-basis-vs
Title: "Group membership basis"
Description: "Group membership bases"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/group-membership-basis-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GroupMembershipBasisCS)

* include codes from system $group-membership-basis
