ValueSet: GroupMembershipBasisVS
Id: group-membership-basis-vs
Title: "Group membership basis"
Description: "Basis for membership in a group: definitional (defined by characteristics) or enumerated (defined by listed members), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/group-membership-basis-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GroupMembershipBasisCS)

* include codes from system $group-membership-basis
