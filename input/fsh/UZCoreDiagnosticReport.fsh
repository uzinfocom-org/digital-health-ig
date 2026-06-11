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
* subject only Reference(UZCorePatient or UZCoreOrganization or UZCorePractitioner or UZCoreLocation or UZCoreMedication)
  * ^short = "Who and/or what this report is about"
* encounter MS
* encounter only Reference(UZCoreEncounter)
  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
* effective[x] MS
  * ^short = "Clinically relevant time/time-period for report."
* performer MS
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole)
  * ^short = "Responsible Diagnostic Service."
* specimen MS
* specimen only Reference(UZCoreSpecimen)
  * ^short = "Specimens this report is based on."
* result MS
* result only Reference(UZCoreObservation)
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

* code = lab-report-types-cs#lab-rep-01 "CBC panel"

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


Instance: example-external-lab-report-coded
InstanceOf: UZCoreDiagnosticReport
Usage: #example
Title: "UZ Core DiagnosticReport Example - External Report Type (coded)"
Description: "Diagnostic report whose type is not in LabReportTypesCS. Preferred approach: the originating system carries its own code in code.coding (here a code from the Aurora LIS) together with the original report name in code.text. Allowed because the code binding is extensible. The Aurora LIS code system shown here is only an example; the actual code system and codes will differ depending on the source laboratory information system."

* identifier.system = "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id"
* identifier.value = "DR-2026-0002"

* status = #final

* category = $diagnostic-report-service-category#LAB "Laboratory"

// Code system below is illustrative - the real source system and codes vary in practice
* code.coding[0].system = "http://example.org/fhir/CodeSystem/lab-report-type"
* code.coding[0].code = #AUR-0142
* code.coding[0].display = "Maxsus immunologik tahlil"
* code.text = "Special immunology assay reported by Aurora LIS"

* subject = Reference(Patient/example-salim)

* effectiveDateTime = "2026-02-06T10:30:00+05:00"

* performer = Reference(Practitioner/example-practitioner)

* issued = "2026-02-06T11:00:00+05:00"

* presentedForm.contentType = #application/pdf
* presentedForm.title = "External laboratory report"
* presentedForm.url = "http://example.org/fhir/Binary/external-lab-report-pdf"


Instance: example-external-lab-report-text-only
InstanceOf: UZCoreDiagnosticReport
Usage: #example
Title: "UZ Core DiagnosticReport Example - External Report Type (text only)"
Description: "Diagnostic report whose type is not in LabReportTypesCS and for which the originating system has no code at all. Fallback approach: code carries only text, with no coding. Prefer the [coded example](DiagnosticReport-example-external-lab-report-coded.html), which keeps the source system's own code in code.coding, whenever the originating system has a code."

* identifier.system = "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id"
* identifier.value = "DR-2026-0003"

* status = #final

* category = $diagnostic-report-service-category#LAB "Laboratory"

* code.text = "Special immunology assay reported by an external laboratory"

* subject = Reference(Patient/example-salim)

* effectiveDateTime = "2026-02-06T10:30:00+05:00"

* performer = Reference(Practitioner/example-practitioner)

* issued = "2026-02-06T11:00:00+05:00"

* presentedForm.contentType = #application/pdf
* presentedForm.title = "External laboratory report"
* presentedForm.url = "http://example.org/fhir/Binary/external-lab-report-pdf"
