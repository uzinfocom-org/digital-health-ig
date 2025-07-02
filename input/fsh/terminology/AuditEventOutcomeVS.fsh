ValueSet: AuditEventOutcomeVS
Id: audit-event-outcome-vs
Title: "Audit event outcome"
Description: "Defines the outcome of the event that is being recorded in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AuditEventOutcomeCS)
* ^version = "5.0.0"

* include codes from system $issue-severity
