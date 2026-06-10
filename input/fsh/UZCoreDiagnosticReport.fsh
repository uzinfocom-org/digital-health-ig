Profile: UZCoreDiagnosticReport
Parent: DiagnosticReport
Id: uz-core-diagnostic-report
Title: "UZ Core DiagnosticReport"
Description: "Uzbekistan Core profile for DiagnosticReport, representing clinical records of diagnostic reports within the national health information exchange."
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"
//rules
* identifier MS
  * ^short = "Identifier for report"
* basedOn MS
* basedOn only Reference(ServiceRequest)
  * ^short = "What was requested"
* status MS
* status from DiagnosticReportStatusVS
* category MS
* category from DiagnosticReportServiceCategoryVS
* code MS
* code from LabReportTypesVS (extensible)
  * ^short = "Report types used in Ministry of Health of Uzbekistan (399)"
* subject MS
* subject only Reference(UZCorePatient or UZCoreOrganization or UZCorePractitioner or UZCoreLocation or UZCoreMedication or UZCoreEncounter)
  * ^short = "Who and/or what this report is about"
* encounter MS
* encounter only Reference(Encounter)
  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
* effective[x] MS
  * ^short = "Clinically relevant time/time-period for report."
* performer MS
* performer only Reference(Practitioner or PractitionerRole)
  * ^short = "Responsible Diagnostic Service."
* specimen MS
* specimen only Reference(Specimen)
  * ^short = "Specimens this report is based on."
* result MS
* result only Reference(Observation)
  * ^short = "Laboratory and etc,. results"
* media MS
  * ^short = "Additional data (like images, diagrams or documents) associated with this report"
* media.comment MS
  * ^short = "Comment or explanation about the image or data"
* media.link MS
  * ^short = "Reference to the image or data"
* presentedForm MS
  * ^short = "Entire report as issued pdf"


Instance: uz-core-diagnostic-report-example
InstanceOf: UZCoreDiagnosticReport
Usage: #example
Title: "UZ Core DiagnosticReport Example"
Description: "Laboratory diagnostic report for a complete blood count (CBC), including the hematology panel result and the issued report as a PDF."

* identifier.system = "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id"
* identifier.value = "DR-2026-0001"

* basedOn = Reference(ServiceRequest/example-cbc-order)

* status = #final

* category = $diagnostic-report-service-category#HM "Hematology"

* code = lab-report-types-cs#lab-rep-02 "CBC panel"

* subject = Reference(Patient/example-salim)

* encounter = Reference(Encounter/example-encounter)

* effectiveDateTime = "2026-02-06T10:30:00+05:00"

* performer = Reference(Practitioner/example-practitioner)

* specimen = Reference(Specimen/example-specimen-blood-cbc)

* result[0] = Reference(Observation/cbc-panel-example)

* issued = "2026-02-06T11:00:00+05:00"

* presentedForm.contentType = #application/pdf
* presentedForm.title = "Complete Blood Count report"
* presentedForm.url = "http://example.org/fhir/Binary/cbc-report-pdf"
