Instance: dmed-position-to-snomed-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Position To SNOMED CT"
Description: "Maps DMED position and profession codes to SNOMED CT concepts."
* name = "DMEDPositionToSnomedCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-snomed-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = $sct-vs
* group.source = Canonical(DMEDProfessionsCS)
* group.target = $sct

* group[=].element[+].code = #370
* group[=].element[=].display = "Statsionar shifokori" // ru: Стационарный врач
* group[=].element[=].target[+].code = #405279007
* group[=].element[=].target[=].display = "Attending physician"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #445
* group[=].element[=].display = "Gistolog" // ru: Гистолог
* group[=].element[=].target[+].code = #159143006
* group[=].element[=].target[=].display = "Histologist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #1066
* group[=].element[=].display = "Neyroreabilitolog" // ru: Нейрореабилитолог
* group[=].element[=].target[+].code = #25855006
* group[=].element[=].target[=].display = "Neurological rehabilitation"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #396
* group[=].element[=].display = "Bolalar KBB (otolaringolog)" // ru: Детский ЛОР (Отоларинголог)
* group[=].element[=].target[+].code = #309372007
* group[=].element[=].target[=].display = "Ear, nose and throat surgeon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #433
* group[=].element[=].display = "Dopplerografiya" // ru: Допплерография
* group[=].element[=].target[+].code = #431488007
* group[=].element[=].target[=].display = "Doppler ultrasound of myocardium for tissue strain rate"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #413
* group[=].element[=].display = "Kunduzgi shifoxona shifokori" // ru: Врач дневного стационара
* group[=].element[=].target[+].code = #405279007
* group[=].element[=].target[=].display = "Attending physician"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
