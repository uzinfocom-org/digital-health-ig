ValueSet: EncounterAdmitSourceVS
Id: encounter-admit-source-vs
Title: "Encounter admit source translations"
Description: "Encounter admit source codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-admit-source-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterAdmitSourceCS)

* include $encounter-admit-source#hosp-trans
* include $encounter-admit-source#born
* include $encounter-admit-source#psych
* include $encounter-admit-source#other
* include admit-source-home-cs#mserv-0003-00001
