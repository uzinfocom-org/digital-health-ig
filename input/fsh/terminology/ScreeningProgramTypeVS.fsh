ValueSet: ScreeningProgramTypeVS
Id: screening-program-type-vs
Title: "Screening and Home Visit Program Types"
Description: "Eight SNOMED CT screening program types and the retained national screening and home visit codes. Program identifiers use the code as their value; clinical service coding remains independent."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/screening-program-type-vs"
* ^status = #draft
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSctCS)
* $sct#171223006 "Ischemic heart disease screening"
* $sct#408961002 "Fertility care assessment"
* $sct#171147008 "Screening for intestinal helminthiasis"
* $sct#300007000 "Screening for cardiovascular system disease"
* $sct#171183004 "Diabetes mellitus screening"
* $sct#268547008 "Screening for malignant neoplasm of breast"
* $sct#762445000 "Screening for hematological disorder"
* $sct#171149006 "Screening for malignant neoplasm of cervix"
* include codes from system ScreeningCodeCS
