ValueSet: EncounterClassVS
Id: encounter-class-vs
Title: "Encounter class translations"
Description: "Encounter Class codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-class-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActCodeCS)

* include $v3-ActCode#IMP
* include $v3-ActCode#AMB
* include $v3-ActCode#EMER
* include $v3-ActCode#VR
* include $v3-ActCode#HH
