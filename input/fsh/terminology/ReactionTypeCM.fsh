Instance: reaction-type-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Reaction Type codes to SNOMED CT"
Description: "Maps local UZ reaction type codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/reaction-type-conceptmap"
* name = "ReactionTypeCodesToSNOMED"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = Canonical(DMEDReactionTypeCS)
* group[=].target = $sct
* targetScopeCanonical = $sct-vs


* group[=].element[+].code = #none
* group[=].element[=].display = "Реакция отсутствует"
* group[=].element[=].target[+].code = #260389003
* group[=].element[=].target[=].display = "No reaction"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #general
* group[=].element[=].display = "Общая реакция"
* group[=].element[=].target[+].code = #281647001
* group[=].element[=].target[=].display = "Adverse reaction"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #local
* group[=].element[=].display = "Местная реакция"
* group[=].element[=].target[+].code = #95376002
* group[=].element[=].target[=].display = "Injection site disorder"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target