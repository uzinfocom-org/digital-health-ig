ValueSet: ProvenanceEntityRoleVS
Id: provenance-entity-role-vs
Title: "Provenance Entity Role"
Description: "Defines the provenance entity role."
* ^url = "https://terminology.medcore.uz/ValueSet/provenance-entity-role-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceEntityRoleCS)
* ^version = "5.0.0"

* include codes from system $provenance-entity-role
