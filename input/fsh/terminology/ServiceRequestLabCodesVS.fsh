ValueSet: ServiceRequestLabCodesVS
Id: service-request-labresearch-code-vs
Title: "ServiceRequest laboratory tests and panels"
Description: "Defines the set of laboratory test and panel codes that may be used in ServiceRequest to specify requested laboratory investigations within the DHP ecosystem."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-labresearch-code-vs"
* ^experimental = true

* include codes from system $loinc where CLASSTYPE = "1"
* include codes from system lab-pan-cs
* include codes from system $sct where concept is-a #71388002
