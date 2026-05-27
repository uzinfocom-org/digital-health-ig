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
  * ^short = "Diagnostic Report status. Binding : http://hl7.org/fhir/diagnostic-report-status"
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


Instance: uz-core-diagnostic-report-example
InstanceOf: UZCoreDiagnosticReport
Usage: #example
Title: "UZ Core DiagnosticReport Example"
Description: "Laboratory diagnostic report for a complete blood count, including hematology observations and an associated imaging reference."

* identifier.system = "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id"
* identifier.value = "DR-2026-0001"

* basedOn = Reference(ServiceRequest/example-cbc-order)

* status = #final

* category = $diagnostic-report-service-category#AU "Audiology"

* code = lab-report-types-cs#lab-rep-01 "Laboratory report"

* subject = Reference(Patient/example-salim)

* encounter = Reference(Encounter/example-encounter)

* effectiveDateTime = "2026-02-06T10:30:00+05:00"

* performer = Reference(Practitioner/example-practitioner)

* specimen = Reference(Specimen/example-specimen-blood-cbc)

* result[0] = Reference(Observation/body-temperature-example)

* media.comment = "Related diagnostic image"
* media.link = Reference(DocumentReference/example-diagnostic-media)





Instance: example-diagnostic-media
InstanceOf: DocumentReference
Title: "Example Diagnostic Media"
Description: "Represents an imaging artifact associated with a diagnostic report, such as a photograph or radiology image used for clinical evaluation."
Usage: #example

* status = #current
* subject = Reference(example-salim)
* type = http://loinc.org#18748-4 "Diagnostic imaging study"
* content[0].attachment.contentType = #image/jpeg
* content[=].attachment.url = "http://example.org/fhir/Binary/example-diagnostic-image"



