ValueSet: DiagnosticReportStatusVS
Id: diagnostic-report-status-vs
Title: "Diagnostic report status valueset"
Description: "Value set defining codes that represent the clinical status of an allergy or intolerance."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/diagnostic-report-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DiagnosticReportStatusCS)

* include codes from system $diagnostic-report-status
