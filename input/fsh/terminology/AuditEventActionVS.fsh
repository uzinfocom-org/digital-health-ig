ValueSet: AuditEventActionVS
Id: audit-event-action-vs
Title: "Audit event action"
Description: "Defines audit event action that is being recorded in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-action-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AuditEventActionCS)
* ^version = "5.0.0"

* include codes from system $audit-event-action
