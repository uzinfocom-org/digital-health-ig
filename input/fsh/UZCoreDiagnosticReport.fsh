Profile: UZCoreDiagnosticReport
Parent: DiagnosticReport
Id: uz-core-diagnostic-report
Title: "UZ Core AllergyIntolerance"
Description: "Uzbekistan Core profile for AllergyIntolerance, representing clinical records of allergy or intolerance within the national health information exchange. "
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
  * ^short = "Diagnostic Report status . Binding : http://hl7.org/fhir/diagnostic-report-status"
* category MS
* category from DiagnosticReportServiceCategoryVS
  * ^short = "Service category Binding: http://terminology.hl7.org/CodeSystem/v2-0074"
* code MS
* code from LabReportTypesVS
  * ^short = "Type of Report Binding: LabReportTypesVS"
* subject MS
* subject only Reference(Patient or Organization or Practitioner)
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


