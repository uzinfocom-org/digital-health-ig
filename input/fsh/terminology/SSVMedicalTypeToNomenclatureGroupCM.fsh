Instance: ssv-medical-type-to-nomenclature-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "SSV Medical Type to Nomenclature Group"
Description: "Maps SSV medical type codes to UZ Core Nomenclature Group codes. NomenclatureGroupCS is the Ministry of Health's high-level classification of healthcare institutions by functional category. Only the SSV medical types that correspond directly to a functional category are mapped; for the detailed institution type classification see SSVMedicalTypeToOrganizationalStructureCM."
* name = "SSVMedicalTypeToNomenclatureGroupCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/ssv-medical-type-to-nomenclature-group-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = $ssv-organization-type-medical
* targetScopeCanonical = Canonical(NomenclatureGroupVS)
* group.source = $ssv-organization-type-medical
* group.target = Canonical(NomenclatureGroupCS)

* group.element[+].code = #9
* group.element[=].display = "Disinfection station" // uz: Dezinfektsiya stantsiyasi, ru: Дезинфекционная станция
* group.element[=].target[+].code = #II_800
* group.element[=].target[=].display = "Sanitary and epidemiological welfare and health of the population"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #19
* group.element[=].display = "Pathoanatomic Service" // uz: Patologik xizmat, ru: Патологоанатомическая служба
* group.element[=].target[+].code = #II_600
* group.element[=].target[=].display = "Pathological anatomy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #24
* group.element[=].display = "Sanatorium" // uz: Sanatoriya, ru: Санаторий
* group.element[=].target[+].code = #II_400
* group.element[=].target[=].display = "Resorts"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #25
* group.element[=].display = "Blood Transfusion station" // uz: Qon quyish stansiyasi, ru: Станция переливания крови
* group.element[=].target[+].code = #II_700
* group.element[=].target[=].display = "Blood transfusion center"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #29
* group.element[=].display = "Blood transfusion facility" // uz: Qon quyish muassasalari, ru: Учреждение переливания крови
* group.element[=].target[+].code = #II_700
* group.element[=].target[=].display = "Blood transfusion center"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #31
* group.element[=].display = "Establishment of sanitary and epidemiological service" // uz: Sanepidxizmati muassasalari, ru: Учреждение санитарно-эпидемиологической службы
* group.element[=].target[+].code = #II_800
* group.element[=].target[=].display = "Sanitary and epidemiological welfare and health of the population"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #36
* group.element[=].display = "Blood Transfusion Center" // uz: Qon quyish markazi, ru: Центр переливания крови
* group.element[=].target[+].code = #II_700
* group.element[=].target[=].display = "Blood transfusion center"
* group.element[=].target[=].relationship = #equivalent
