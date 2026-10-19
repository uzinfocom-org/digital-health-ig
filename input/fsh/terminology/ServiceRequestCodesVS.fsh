ValueSet: ServiceRequestCodesVS
Id: service-request-code-vs
Title: "ServiceRequest procedures and investigations"
Description: "Defines the set of codes that may be used in ServiceRequest to specify a particular service, such as a procedure, diagnostic investigation, or panel of investigations, within the DHP ecosystem."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSctCS)

* include codes from system $loinc where CLASSTYPE = "1"
* include codes from system lab-pan-cs
* include codes from system $sct where concept is-a #71388002
* include codes from system screening-code-cs

// Screening and patronage (home visit) services coded in SNOMED CT. Already covered by the
// procedure filter above; listed so they are named in the value set and pick up the
// Uzbek and Russian translations from ScreeningSctCS. Services with no suitable SNOMED CT
// concept stay in screening-code-cs.
* $sct#171223006 "Ischemic heart disease screening"
* $sct#408961002 "Fertility care assessment"
* $sct#171147008 "Screening for intestinal helminthiasis"
* $sct#300007000 "Screening for cardiovascular system disease"
* $sct#171183004 "Diabetes mellitus screening"
* $sct#268547008 "Screening for malignant neoplasm of breast"
* $sct#762445000 "Screening for hematological disorder"
* $sct#171149006 "Screening for malignant neoplasm of cervix"
* $sct#170549007 "Chronic disease monitoring"
* $sct#60689008 "Home care of patient"
* $sct#103740001 "Periodic physical examination"
* $sct#424525001 "Antenatal care"
* $sct#133906008 "Postpartum care"
* $sct#408987002 "Newborn care assessment"
* $sct#409027005 "Infant care assessment"
