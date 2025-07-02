ValueSet: ProvenanceParticipationRoleTypeVS
Id: provenance-participation-role-type-vs
Title: "Provenance Participation Role Type"
Description: "Defines how the participant participated in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/provenance-participation-role-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceParticipationRoleTypeCS)
* ^version = "5.0.0"

* include $provenance-participant-type#legal
* include $provenance-participant-type#author
