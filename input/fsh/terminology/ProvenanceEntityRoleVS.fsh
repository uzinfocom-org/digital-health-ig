ValueSet: ProvenanceEntityRoleVS
Id: provenance-entity-role-vs
Title: "Provenance entity role"
Description: "Provenance entity roles"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/provenance-entity-role-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceEntityRoleCS)

* include codes from system $provenance-entity-role
