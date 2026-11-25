ValueSet: DiagnosticReportStatusVS
Id: diagnostic-report-status-vs
Title: "DiagnosticReport status"
Description: "DiagnosticReport statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/diagnostic-report-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DiagnosticReportStatusCS)

* include codes from system $diagnostic-report-status
