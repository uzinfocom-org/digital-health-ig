Instance: blood-product-type-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Blood Product Type codes to SNOMED CT"
Description: "Maps local UZ blood product type codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/blood-product-type-conceptmap"
* name = "BloodProductTypeCodesToSNOMED"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = Canonical(BloodProductTypeCS)
* group[=].target = $sct
* targetScopeCanonical = Canonical(BloodProductTypeVS)
* targetScopeCanonical = $sct-vs

* group[=].element[+].code = #whole-blood
* group[=].element[=].display = "To'liq qon"
* group[=].element[=].target[+].code = #420135007
* group[=].element[=].target[=].display = "Whole blood"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #red-cell-mass
* group[=].element[=].display = "Eritrotsitar massa"
* group[=].element[=].target[+].code = #431069006
* group[=].element[=].target[=].display = "Red blood cell mass"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #fresh-frozen-plasma
* group[=].element[=].display = "Yangi muzlatilgan plazma"
* group[=].element[=].target[+].code = #346447007
* group[=].element[=].target[=].display = "Fresh frozen plasma"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #platelet-mass
* group[=].element[=].display = "Trombotsitar massa"
* group[=].element[=].target[+].code = #126258005
* group[=].element[=].target[=].display = "Platelet mass"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #cryoprecipitate
* group[=].element[=].display = "Kriopretsipitat"
* group[=].element[=].target[+].code = #420599006
* group[=].element[=].target[=].display = "Cryoprecipitate"
* group[=].element[=].target[=].relationship = #equivalent