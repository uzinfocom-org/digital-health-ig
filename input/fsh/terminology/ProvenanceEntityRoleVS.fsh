ValueSet: ProvenanceEntityRoleVS
Id: provenance-entity-role-vs
Title: "Provenance Entity Role"
Description: "Defines the provenance entity role."
* ^url = "https://terminology.medcore.uz/ValueSet/provenance-entity-role-vs"
* ^experimental = true
* ^language = #en
* include $provenance-entity-role#source "source"
  * ^designation[+].language = #ru
  * ^designation[=].value = "источник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "manba"
