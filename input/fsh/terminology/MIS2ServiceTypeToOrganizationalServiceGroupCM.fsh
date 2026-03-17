Instance: mis2-service-type-to-organizational-service-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "MIS2 Service Type to Organizational Service Group"
Description: "Maps MIS2 service type flags to UZ Core Organizational Service Group codes. MIS2 uses multi-select service type flags per organization (e.g. an org can have both INPATIENT and OUTPATIENT), while OrganizationalServiceGroupCS uses a single pre-combined classification. When an organization has multiple MIS2 flags, the combination should be considered to select the appropriate target code (e.g. INPATIENT + OUTPATIENT together maps to III_100)."
* name = "MIS2ServiceTypeToOrganizationalServiceGroupCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/mis2-service-type-to-organizational-service-group-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = Canonical(OrganizationalServiceGroupVS)
* group.target = Canonical(OrganizationalServiceGroupCS)

* group.element[+].code = #OUTPATIENT
* group.element[=].display = "Outpatient"
* group.element[=].target[+].code = #III_500
* group.element[=].target[=].display = "Poliklinika bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Maps when OUTPATIENT is the sole service type. When combined with INPATIENT, use III_100 instead."

* group.element[+].code = #INPATIENT
* group.element[=].display = "Inpatient"
* group.element[=].target[+].code = #III_200
* group.element[=].target[=].display = "Statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Maps when INPATIENT is the sole service type. When combined with OUTPATIENT, use III_100 instead."

* group.element[+].code = #COMBINED
* group.element[=].display = "Combined"
* group.element[=].target[+].code = #III_100
* group.element[=].target[=].display = "Poliklinika bo'limi va statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "COMBINED indicates a facility offering multiple service modalities, closest to outpatient + inpatient."

* group.element[+].code = #EMERGENCY
* group.element[=].display = "Emergency"
* group.element[=].noMap = true

* group.element[+].code = #DIAGNOSTIC
* group.element[=].display = "Diagnostic"
* group.element[=].noMap = true

* group.element[+].code = #OTHER
* group.element[=].display = "Other"
* group.element[=].target[+].code = #III_600
* group.element[=].target[=].display = "Boshqalar"
* group.element[=].target[=].relationship = #equivalent
