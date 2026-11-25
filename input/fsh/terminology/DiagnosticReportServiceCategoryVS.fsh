ValueSet: DiagnosticReportServiceCategoryVS
Id: diagnostic-report-service-category-vs
Title: "DiagnosticReport service category"
Description: "DiagnosticReport service categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/diagnostic-report-service-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DiagnosticReportServiceCategoryCS)

* include codes from system $diagnostic-report-service-category
