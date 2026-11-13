ValueSet: ProvenanceParticipationRoleTypeVS
Id: provenance-participation-role-type-vs
Title: "Provenance participation role type"
Description: "Provenance participation role types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/provenance-participation-role-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceParticipationRoleTypeCS)

* include $provenance-participant-type#legal
* include $provenance-participant-type#author
* include $provenance-participant-type#attester
