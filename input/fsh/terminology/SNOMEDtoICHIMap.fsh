Instance: snomed-to-ichi-procedures
InstanceOf: ConceptMap
Usage: #definition
Title: "SNOMED CT to ICHI Procedures Map"
Description: "Maps clinical SNOMED CT codes to ICHI statistical codes for reimbursement reporting."

* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/snomed-to-ichi-procedures"
* version = "1.0.0"
* name = "SNOMEDtoICHIProceduresMap"
* status = #draft
* experimental = true
* date = "2025-01-29"
* sourceScopeUri = "http://snomed.info/sct"
* targetScopeUri = "http://id.who.int/icd/release/11/beta/ichi"

* group[+].source = "http://snomed.info/sct"
* group[=].target = "http://id.who.int/icd/release/11/beta/ichi"
* group[=].element[+].code = #68442002
* group[=].element[=].display = "Implantation of joint prosthesis of wrist"
* group[=].element[=].target[+].code = #MFJ.DN.AA
* group[=].element[=].target[=].display = "Implantation of device into wrist joint"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #1264535000
* group[=].element[=].display = "Prosthetic arthroplasty of right wrist"
* group[=].element[=].target[+].code = #MFJ.DN.AA
* group[=].element[=].target[=].display = "Implantation of device into wrist joint"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #1264536004
* group[=].element[=].display = "Prosthetic arthroplasty of left wrist"
* group[=].element[=].target[+].code = #MFJ.DN.AA
* group[=].element[=].target[=].display = "Implantation of device into wrist joint"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #232967006
* group[=].element[=].display = "Implantation of left ventricular assist device"
* group[=].element[=].target[+].code = #HBA.DN.AA
* group[=].element[=].target[=].display = "Implantation of left ventricular assist device"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #700151002
* group[=].element[=].display = "Temporary implantation of left ventricular assist device"
* group[=].element[=].target[+].code = #HBA.DN.AA
* group[=].element[=].target[=].display = "Implantation of left ventricular assist device"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
