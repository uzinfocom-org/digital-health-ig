ValueSet: AuditEventActionVS
Id: audit-event-action-vs
Title: "Audit event action"
Description: "Audit event actions"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/audit-event-action-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AuditEventActionCS)

* include codes from system $audit-event-action
