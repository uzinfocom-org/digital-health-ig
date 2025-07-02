Profile: DHPAuditEvent
Parent: AuditEvent
Id: dhp-auditevent
Title: "Uzbekistan DHP AuditEvent"
Description: "Uzbekistan DHP AuditEvent Profile, used to track user and application activity"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-29"
* ^publisher = "Uzinfocom"

* category and code and action and occurredDateTime and recorded and outcome and patient and agent and entity MS

* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Category of audit event"
* category.coding ^slicing.ordered = false

* category.coding contains
    dhpCategory 0..1 MS

* category.coding[dhpCategory]
  * system 1..1 MS
  * system = $dicom-dcm
  * code 1..1 MS
  * code from AuditEventTypeVS (required)

* code from AuditEventSubTypeVS (required)

* action from AuditEventActionVS (required)

* outcome.code from AuditEventOutcomeVS (required)

* agent
  * type and role and who and authorization MS
  * type from AuditParticipationRoleTypeVS (required)
  * role from SecurityRoleTypeVS (required)
  * authorization from AuditPurposeOfUseVS (required)
  * who only Reference (DHPPractitionerRole or Practitioner or Patient or RelatedPerson) 

* entity
  * role and what and securityLabel and query MS
  * role from ObjectRoleVS (required)
  * securityLabel from SecurityLabelVS (required)

Instance: example-auditevent-login
InstanceOf: DHPAuditEvent
Description: "Example of an audit event where a user logs in"
Usage: #example
* language = #uz
* action = $audit-event-action#E "Execute"
* category = $dicom-dcm#110114 "User Authentication"
* code = $dicom-dcm#110122 "Login"
* outcome.code = $issue-severity#success

* occurredDateTime = "2023-11-09T15:23:47.123Z"
* recorded = "2023-11-09T15:23:47.123Z"

* agent
  * role = $sample-security-structural-codes#regulated-health-professionals
  * authorization = $v3-ActReason#TREAT
  * type = $extra-security-role-type#humanuser
  * who = Reference(example-practitionerrole)

* source
  * observer.display = "Uzbekistan Digital Health Platform"
  * type = $security-source-type#4 "Application Server"

Instance: example-auditevent-condition-lookup
InstanceOf: DHPAuditEvent
Description: "Example of an audit event where a pracititioner looked up the patient's condition"
Usage: #example
* language = #uz
* action = $audit-event-action#R "Read"
* occurredDateTime = "2025-02-15T14:02:52Z"
* recorded = "2025-02-15T14:02:52Z"
* patient = Reference(example-patient)

* category = $dicom-dcm#110112 "Query"
* code = $http-interaction#search
* outcome.code = $issue-severity#success
* agent
  * role = $sample-security-structural-codes#regulated-health-professionals
  * authorization = $v3-ActReason#TREAT
  * type = $extra-security-role-type#humanuser
  * who = Reference(example-practitionerrole)
* entity
  * what = Reference(example-condition)
  * securityLabel = $v3-ActCode#NOAUTH
  * role = $object-role#4 "Domain Resource"
* source
  * observer.display = "Uzbekistan Digital Health Platform"
  * type = $security-source-type#4 "Application Server"
