ValueSet: AuditEventSubTypeVS
Id: audit-event-subtype-vs
Title: "AuditEvent subtype"
Description: "AuditEvent subtypes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/audit-event-subtype-vs"
* ^experimental = true
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DicomDCMCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(HttpInteractionCS)

* include $http-interaction#read
* include $http-interaction#update
* include $http-interaction#create
* include $http-interaction#delete
* include $http-interaction#search

* include $dicom-dcm#110122
* include $dicom-dcm#110123
