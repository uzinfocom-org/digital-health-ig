ValueSet: ServiceRequestCategoriesVS
Id: service-request-categories-vs
Title: "Uzbekistan Service RequestCategories ValueSet"
Description: "ValueSet including categories of healthcare service requests used in the Uzbekistan."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-categories-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SRSctCategoryCS)

* include codes from system lab-categories-cs

* $sct#108252007 "Laboratory procedure"
* $sct#363679005 "Imaging (procedure)"
* $sct#165197003 "Diagnostic procedure"
* $sct#387713003 "Surgical procedure"
* $sct#91251008 "Physiotherapy procedure"
* $sct#277132007 "Therapeutic procedure"
* $sct#371883000 "Outpatient procedure"
* $sct#11429006 "Consultation"
* $sct#32485007 "Admission to hospital"
* $sct#52052004 "Rehabilitation therapy"
* $sct#448337001 "Telemedicine consultation"
* $sct#20135006 "Screening and home visits"
* $sct#25179006 "Donation"


