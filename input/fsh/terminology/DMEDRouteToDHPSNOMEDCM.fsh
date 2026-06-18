Instance: dmed-administration-route-to-dhp-sct-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED administration route codes To DHP/SNOMED administration route codes"
Description: "ConceptMap for mapping DMED administration route codes to DHP/SNOMED administration route codes"
* name = "DMEDAdministrationRouteCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-administration-route-to-dhp-sct-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DMEDRouteCodeCS)
* group.target = $sct

* sourceScopeCanonical = Canonical(DMEDRouteCodeVS)
* targetScopeCanonical = Canonical(RouteCodeVS)


* group[=].element[+].code = #subcutaneously
* group[=].element[=].display = "Подкожно"
* group[=].element[=].target[+].code = #300036000
* group[=].element[=].target[=].display = "Subcutaneous infusion"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #intramuscularly
* group[=].element[=].display = "Внутримышечно"
* group[=].element[=].target[+].code = #76601001
* group[=].element[=].target[=].display = "Injection, intramuscular"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #intradermally
* group[=].element[=].display = "Внутрикожно"
* group[=].element[=].target[+].code = #36673005
* group[=].element[=].target[=].display = "Intradermal injection"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #orally
* group[=].element[=].display = "Перорально"
* group[=].element[=].target[+].code = #26643006
* group[=].element[=].target[=].display = "Swallow, oral"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #intranasally
* group[=].element[=].display = "Интраназально"
* group[=].element[=].target[+].code = #260617000
* group[=].element[=].target[=].display = "Intranasal approach"
* group[=].element[=].target[=].relationship = #equivalent