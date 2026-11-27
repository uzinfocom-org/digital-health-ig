Instance: dmed-dispensary-deregistration-reason-to-dhp-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED dispensary deregistration reasons to DHP"
Description: "Maps DMED deregistration reasons to Encounter.admission.dischargeDisposition, reusing existing codes and adding only missing reasons."
* name = "DMEDDispensaryDeregistrationReasonCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-dispensary-deregistration-reason-to-dhp-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(DMEDDispensaryDeregistrationReasonVS)
* targetScopeCanonical = Canonical(DispensaryDeregistrationReasonVS)

* group[+].source = Canonical(DMEDDispensaryDeregistrationReasonCS)
* group[=].target = Canonical(EncounterDischargeDispositionHomeCS)
// No DHP code: dischargeDisposition is left empty when the reason is unknown.
* group[=].element[+].code = #unspecified
* group[=].element[=].noMap = true
* group[=].element[+].code = #recovery_improvement
* group[=].element[=].target[0].code = #chr-0129-0002
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #patitient_decline
* group[=].element[=].target[0].code = #chr-0129-0003
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #prison
* group[=].element[=].target[0].code = #mserv-0004-00005
* group[=].element[=].target[=].relationship = #related-to

* group[+].source = Canonical(DMEDDispensaryDeregistrationReasonCS)
* group[=].target = $encounter-discharge-disposition
* group[=].element[+].code = #deceased
* group[=].element[=].target[0].code = #exp
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[+].code = #residence_change
* group[=].element[=].target[0].code = #other-hcf
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[+].code = #other
* group[=].element[=].target[0].code = #oth
* group[=].element[=].target[=].relationship = #equivalent
