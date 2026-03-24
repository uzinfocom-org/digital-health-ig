Instance: ssv-service-type-to-organizational-service-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "SSV Service Type to Organizational Service Group"
Description: "Maps SSV service type codes to UZ Core Organizational Service Group codes. SSV uses service type classification per organization, while OrganizationalServiceGroupCS uses a single pre-combined classification. When an organization has multiple SSV service types, the combination should be considered to select the appropriate target code (e.g. Inpatient + Outpatient together maps to III_100)."
* name = "SSVServiceTypeToOrganizationalServiceGroupCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/ssv-service-type-to-organizational-service-group-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = Canonical(OrganizationalServiceGroupVS)
* group.source = $ssv-organization-type-service
* group.target = Canonical(OrganizationalServiceGroupCS)

* group.element[+].code = #1
* group.element[=].display = "Outpatient" // uz: Ambulatoriya, ru: Амбулатория
* group.element[=].target[+].code = #III_500
* group.element[=].target[=].display = "Poliklinika bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Maps when Outpatient is the sole service type. When combined with Inpatient, use III_100 instead."

* group.element[+].code = #2
* group.element[=].display = "Inpatient" // uz: Statsionar, ru: Стационар
* group.element[=].target[+].code = #III_200
* group.element[=].target[=].display = "Statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Maps when Inpatient is the sole service type. When combined with Outpatient, use III_100 instead."

* group.element[+].code = #3
* group.element[=].display = "Emergency medicine" // uz: Favqulodda tibbiy yordam, ru: Чрезвычайная медицинская помощь
* group.element[=].target[+].code = #III_100
* group.element[=].target[=].display = "Poliklinika bo'limi va statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #4
* group.element[=].display = "Combined" // uz: Birlashtirilgan, ru: Комбинированная
* group.element[=].target[+].code = #III_100
* group.element[=].target[=].display = "Poliklinika bo'limi va statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Combined indicates a facility offering multiple service modalities, closest to outpatient + inpatient."

* group.element[+].code = #5
* group.element[=].display = "Diagnostic" // uz: Diagnostika, ru: Диагностика
* group.element[=].target[+].code = #III_100
* group.element[=].target[=].display = "Poliklinika bo'limi va statsionar bo'limi mavjud"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #6
* group.element[=].display = "Other" // uz: Boshqa, ru: Другое
* group.element[=].target[+].code = #III_600
* group.element[=].target[=].display = "Boshqalar"
* group.element[=].target[=].relationship = #equivalent
