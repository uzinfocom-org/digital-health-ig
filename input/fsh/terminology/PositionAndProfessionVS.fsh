ValueSet: PositionAndProfessionVS
Id: position-and-profession-vs
Title: "Defines the possible positions and professions"
Description: "State classification of positions of employees and worker professions (KODP-2020)"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DMEDROleClassCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DMEDPositionSctCS)

* include codes from system position-and-profession-cs
* include codes from system position-and-profession-cs-2
* include codes from system $v3-RoleClass
* include codes from system $sct