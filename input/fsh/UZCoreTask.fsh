Invariant: uzcore-tsk-1
Description: "If Task.status is not completed, cancelled, or failed, and requestedPeriod.end is in the past, businessStatus should be set to overdue for SLA monitoring"
Severity: #warning
Expression: "(status != 'completed' and status != 'cancelled' and status != 'failed' and requestedPeriod.end.exists() and requestedPeriod.end < now()) implies businessStatus.coding.exists(code = 'overdue')"

Profile: UZCoreTask
Parent: Task
Id: uz-core-task
Title: "UZ Core Task"
Description: "Uzbekistan Core Task profile, used to track workflow steps of the state-insurance referral and hospitalization approval process (Annex 1 to Resolution of the Cabinet of Ministers No. 694, 04.11.2025)"
* ^experimental = true
* ^status = #active
* ^date = "2026-06-18"
* ^publisher = "Uzinfocom"

* identifier 0..1 MS

* code MS
* code from TaskCodesVS (required)

* basedOn 1..1 MS
* basedOn only Reference(ServiceRequest)

* partOf only Reference(Task)

* status MS
* status from TaskStatusVS (required)

* businessStatus MS
* businessStatus from TaskBusinessStatusVS (required)

* intent MS
* intent from TaskIntentVS (required)

* focus 1..1 MS
* focus only Reference(ServiceRequest)

* for MS
* for only Reference(UZCorePatient)

* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)

* requestedPeriod MS
  * start and end MS
* executionPeriod MS
  * start and end MS

* obeys uzcore-tsk-1

Instance: example-task-family-doctor
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task assigned to the family doctor for initial approval"
Usage: #example
* language = #uz
* code = TaskCodesCS#approve-family-doctor "Oilaviy shifokorning roziligi"
* basedOn = Reference(ServiceRequest/example-state-insurance-referral)
* status = #in-progress
* businessStatus = TaskBusinessStatusCS#active "Faol"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-state-insurance-referral)
* for = Reference(UZCorePatient/example-salim)
* owner = Reference(Organization/xonobod-medical-association)
* requestedPeriod
  * start = "2026-03-05"
  * end = "2026-03-06"
* executionPeriod
  * start = "2026-03-05"
  * end = "2026-03-06"

Instance: example-task-specialist
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task assigned to a specialist physician for review"
Usage: #example
* language = #uz
* code = TaskCodesCS#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-state-insurance-referral)
* partOf = Reference(Task/example-task-family-doctor)
* status = #requested
* businessStatus = TaskBusinessStatusCS#active "Faol"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-state-insurance-referral)
* for = Reference(UZCorePatient/example-david)
* owner = Reference(UZCoreOrganization/tashkent-diseases-hospital)
* requestedPeriod
  * start = "2026-03-06"
  * end = "2026-03-07"
* executionPeriod
  * start = "2026-03-06"
  * end = "2026-03-07"

Instance: example-task-regional-commission
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task assigned to the regional health commission for approval"
Usage: #example
* language = #uz
* code = TaskCodesCS#approve-regional-commission "Mintaqaviy komissiyaning roziligi"
* basedOn = Reference(ServiceRequest/example-state-insurance-referral)
* partOf = Reference(Task/example-task-specialist)
* status = #completed
* businessStatus = TaskBusinessStatusCS#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-state-insurance-referral)
* for = Reference(UZCorePatient/example-emma)
* owner = Reference(UZCoreOrganization/example-organization)
* requestedPeriod
  * start = "2026-03-07"
  * end = "2026-03-08"
* executionPeriod
  * start = "2026-03-07"
  * end = "2026-03-08"

Instance: example-task-national-commission
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task assigned to the national (republican) health commission for approval"
Usage: #example
* language = #uz
* code = TaskCodesCS#approve-national-commission "Respublika komissiyasining roziligi"
* basedOn = Reference(ServiceRequest/example-state-insurance-referral)
* partOf = Reference(Task/example-task-regional-commission)
* status = #completed
* businessStatus = TaskBusinessStatusCS#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-state-insurance-referral)
* for = Reference(UZCorePatient/example-unidentified-patient)
* owner = Reference(UZCoreOrganization/xonobod-medical-association)
* requestedPeriod
  * start = "2026-03-08"
  * end = "2026-03-10"
* executionPeriod
  * start = "2026-03-08"
  * end = "2026-03-10"

Instance: example-task-hospitalization
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task representing the hospitalization step at the receiving clinic"
Usage: #example
* language = #uz
* code = TaskCodesCS#approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
* basedOn = Reference(ServiceRequest/example-state-insurance-referral)
* partOf = Reference(Task/example-task-national-commission)
* status = #completed
* businessStatus = TaskBusinessStatusCS#completed "Tugallangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-state-insurance-referral)
* for = Reference(UZCorePatient/example-organization)
* owner = Reference(UZCoreOrganization/example-david)
* requestedPeriod
  * start = "2026-03-10"
  * end = "2026-05-10"
* executionPeriod
  * start = "2026-03-10"
  * end = "2026-05-10"
