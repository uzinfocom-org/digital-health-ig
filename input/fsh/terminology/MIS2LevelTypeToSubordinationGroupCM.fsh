Instance: mis2-level-type-to-subordination-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "MIS2 Level Type to Subordination Group"
Description: "Maps MIS2 organization level type codes to UZ Core Organizational Subordination Group codes. MIS2 classifies healthcare facilities into administrative levels, while OrganizationalSubordinationGroupCS groups institutions by their administrative subordination (republican, territorial, district/city, other ministries, private). The MIS2 level types Shahar (Urban), Tuman (Area), and Mahalla (District) all fall under the combined district-and-city administration category in the target."
* name = "MIS2LevelTypeToSubordinationGroupCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/mis2-level-type-to-subordination-group-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = Canonical(OrganizationalSubordinationGroupVS)
* group.source = $ssv-organization-type-level
* group.target = Canonical(OrganizationalSubordinationGroupCS)


* group.element[+].code = #1
* group.element[=].display = "Republican" // uz: Respublika, ru: Республиканский
* group.element[=].target[+].code = #I_1
* group.element[=].target[=].display = "Institutions under the control of the republic"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #2
* group.element[=].display = "Regional" // uz: Viloyat, ru: Областной
* group.element[=].target[+].code = #I_2
* group.element[=].target[=].display = "In territorial administration"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #3
* group.element[=].display = "Urban" // uz: Shahar, ru: Городской
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Urban (city-level) is a subset of the combined district and city administration category."

* group.element[+].code = #4
* group.element[=].display = "Area" // uz: Tuman, ru: Районный
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Area-level falls under the combined district and city administration category."

* group.element[+].code = #5
* group.element[=].display = "District" // uz: Mahalla, ru: Махаллинский
* group.element[=].target[+].code = #I_3
* group.element[=].target[=].display = "In district and city administration"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "District-level is a subset of the combined district and city administration category."

* group.element[+].code = #6
* group.element[=].display = "Interdistrict" // uz: Tumanlararo, ru: Межрайонный
* group.element[=].target[+].code = #I_2
* group.element[=].target[=].display = "In territorial administration"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Interdistrict facilities serve multiple districts and typically fall under territorial (regional) administration."

* group.element[+].code = #9
* group.element[=].display = "Not defined" // uz: Aniqlanmagan, ru: Не определено
* group.element[=].noMap = true
