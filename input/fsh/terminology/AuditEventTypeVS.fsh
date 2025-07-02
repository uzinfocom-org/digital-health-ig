ValueSet: AuditEventTypeVS
Id: audit-event-type-vs
Title: "Audit event type"
Description: "Defines the type of event that is being recorded in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AuditEventTypeCS)
* ^version = "5.0.0"

* include $dicom-dcm#110100
* include $dicom-dcm#110101
* include $dicom-dcm#110106
* include $dicom-dcm#110107
* include $dicom-dcm#110110
* include $dicom-dcm#110112
* include $dicom-dcm#110114
* include $dicom-dcm#110121
