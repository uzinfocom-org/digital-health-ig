Instance: cancer-id-role-to-dhp-position-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer ID Role To DHP Position"
Description: "Role classification for users within the oncology information system mapped to DHP Position and Professions ConceptMap"
* name = "CancerIDRoleToDHPPositionCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/cancer-id-role-to-dhp-position-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = Canonical(PositionAndProfessionVS)

* group[+].source = Canonical(CancerIDRolesCS)
* group[=].target = Canonical(PositionAndProfessionCS)

* group[=].element[+].code = #3
* group[=].element[=].display = "registrar"
* group[=].element[=].target[+].code = #3252.2
* group[=].element[=].target[=].display = "Tibbiy ro'yxatdan o'tkazuvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #1
* group[=].element[=].display = "System Administrator"
* group[=].element[=].target[+].code = #1211.45
* group[=].element[=].target[=].display = "Katta ma'mur"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #7
* group[=].element[=].display = "Institution Administrator"
* group[=].element[=].target[+].code = #3341.1
* group[=].element[=].target[=].display = "Ma'mur"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #4
* group[=].element[=].display = "researcher"
* group[=].element[=].target[+].code = #2212.109
* group[=].element[=].target[=].display = "Vrach statistik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target