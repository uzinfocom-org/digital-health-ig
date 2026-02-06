ValueSet: DiagnosticReportServiceCategoryVS
Id: diagnostic-report-service-category-vs
Title: "Diagnostic report service category valueset"
Description: "Value set defining codes that represent the service category of diagnostic report ."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/diagnostic-report-service-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DiagnosticReportServiceCategoryCS)

* include codes from system $diagnostic-report-service-category
