ValueSet: ProvenanceParticipationRoleTypeVS
Id: provenance-participation-role-type-vs
Title: "Provenance Participation Role Type"
Description: "Defines how the participant participated in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/provenance-participation-role-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceParticipationRoleTypeCS)

* include $provenance-participant-type#legal
* include $provenance-participant-type#author
