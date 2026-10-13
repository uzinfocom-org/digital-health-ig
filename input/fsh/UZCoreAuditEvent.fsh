Profile: UZCoreAuditEvent
Parent: AuditEvent
Id: uz-core-auditevent
Title: "UZ Core AuditEvent"
Description: "Uzbekistan Core AuditEvent profile, used to track user and application activity"
* ^experimental = true
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
  * role from SecurityRoleTypeVS (preferred)
  * role ^slicing.discriminator.type = #value
  * role ^slicing.discriminator.path = "$this"
  * role ^slicing.rules = #open
  * role ^slicing.description = "Agent roles from the national value set; codes from other systems are allowed alongside them"
  * role ^slicing.ordered = false
  * role contains dhpRole 0..* MS
  * role[dhpRole] from SecurityRoleTypeVS (required)
  * role[dhpRole] ^short = "Agent role from the national value set"
  * authorization from AuditPurposeOfUseVS (preferred)
  * authorization ^slicing.discriminator.type = #value
  * authorization ^slicing.discriminator.path = "$this"
  * authorization ^slicing.rules = #open
  * authorization ^slicing.description = "Purposes of use from the national value set; codes from other systems are allowed alongside them"
  * authorization ^slicing.ordered = false
  * authorization contains dhpAuthorization 0..* MS
  * authorization[dhpAuthorization] from AuditPurposeOfUseVS (required)
  * authorization[dhpAuthorization] ^short = "Purpose of use from the national value set"
  * who only Reference (UZCorePractitionerRole or UZCorePractitioner or UZCorePatient or UZCoreRelatedPerson) 

* entity
  * role and what and securityLabel and query MS
  * role from ObjectRoleVS (required)
  * securityLabel from SecurityLabelVS (preferred)
  * securityLabel ^slicing.discriminator.type = #value
  * securityLabel ^slicing.discriminator.path = "$this"
  * securityLabel ^slicing.rules = #open
  * securityLabel ^slicing.description = "Security labels from the national value set; codes from other systems are allowed alongside them"
  * securityLabel ^slicing.ordered = false
  * securityLabel contains dhpSecurityLabel 0..* MS
  * securityLabel[dhpSecurityLabel] from SecurityLabelVS (required)
  * securityLabel[dhpSecurityLabel] ^short = "Security label from the national value set"
  * detail MS
  * detail.type from AuditEventDetailTypeVS (example)

Instance: example-auditevent-login
InstanceOf: UZCoreAuditEvent
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
  * type = $extra-security-role-type#humanuser
  * role = $sample-security-structural-codes#regulated-health-professionals
  * authorization = $v3-ActReason#TREAT
  * who = Reference(example-practitionerrole)

* source
  * observer.display = "Uzbekistan Digital Health Platform"
  * type = $security-source-type#4 "Application Server"

Instance: example-auditevent-condition-lookup
InstanceOf: UZCoreAuditEvent
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
  * type = $extra-security-role-type#humanuser
  * role = $sample-security-structural-codes#regulated-health-professionals
  * authorization = $v3-ActReason#TREAT
  * who = Reference(example-practitionerrole)
* entity
  * what = Reference(example-headache)
  * securityLabel = $v3-ActCode#NOAUTH
  * role = $object-role#4 "Domain Resource"
* source
  * observer.display = "Uzbekistan Digital Health Platform"
  * type = $security-source-type#4 "Application Server"
