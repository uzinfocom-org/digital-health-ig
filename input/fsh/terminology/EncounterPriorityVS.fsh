ValueSet: EncounterPriorityVS
Id: encounter-priority-vs
Title: "Encounter priority translations"
Description: "Encounter priority codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-priority-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterPriorityCS)

* include $v3ActPriority#EM
* include $v3ActPriority#P
* include $v3ActPriority#PRN
* include encounter-priority-home-cs#gencl-0002-00001
* include encounter-priority-home-cs#gencl-0002-00002
* include encounter-priority-home-cs#gencl-0002-00003
