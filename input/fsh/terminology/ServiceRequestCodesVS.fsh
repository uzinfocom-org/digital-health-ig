ValueSet: ServiceRequestCodesVS
Id: service-request-code-vs
Title: "ServiceRequest procedures and investigations"
Description: "Defines the set of codes that may be used in ServiceRequest to specify a particular service, such as a procedure, diagnostic investigation, or panel of investigations, within the DHP ecosystem."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs"
* ^experimental = true

* include codes from system $loinc where CLASSTYPE = "1"
* include codes from system lab-pan-cs
* include codes from system $sct where concept is-a #71388002
* include codes from system screening-code-cs 
