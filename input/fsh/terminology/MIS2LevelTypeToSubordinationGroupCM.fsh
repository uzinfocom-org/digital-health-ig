Instance: mis2-level-type-to-subordination-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "MIS2 Level Type to Subordination Group"
Description: "Maps MIS2 level type codes to UZ Core Organizational Subordination Group codes. MIS2 classifies healthcare facilities into 7 administrative levels, while OrganizationalSubordinationGroupCS groups institutions by their administrative subordination (republican, territorial, district/city, other ministries, private). The MIS2 level types URBAN, AREA, and DISTRICT all fall under the combined district-and-city administration category in the target."
* name = "MIS2LevelTypeToSubordinationGroupCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/mis2-level-type-to-subordination-group-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = Canonical(OrganizationalSubordinationGroupVS)
* group.target = Canonical(OrganizationalSubordinationGroupCS)

* group.element[+].code = #REPUBLICAN
* group.element[=].display = "Republican"
* group.element[=].target[+].code = #I_1
* group.element[=].target[=].display = "Institutions under the control of the republic"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #REGIONAL
* group.element[=].display = "Regional"
* group.element[=].target[+].code = #I_2
* group.element[=].target[=].display = "In territorial administration"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #URBAN
* group.element[=].display = "Urban"
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Urban (city-level) is a subset of the combined district and city administration category."

* group.element[+].code = #AREA
* group.element[=].display = "Area"
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Area-level falls under the combined district and city administration category."

* group.element[+].code = #DISTRICT
* group.element[=].display = "District"
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "District-level is a subset of the combined district and city administration category."

* group.element[+].code = #INTERDISTRICT
* group.element[=].display = "Interdistrict"
* group.element[=].target[+].code = #I_2
* group.element[=].target[=].display = "In territorial administration"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Interdistrict facilities serve multiple districts and typically fall under territorial (regional) administration."

* group.element[+].code = #NOT_DEFINED
* group.element[=].display = "Not defined"
* group.element[=].noMap = true
