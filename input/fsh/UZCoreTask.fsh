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
* identifier ^short = "Identifiers assigned to the task"

* code MS
* code ^short = "Task category"
* code from TaskCodesVS (required)

* basedOn 1..1 MS
* basedOn ^short = "Service request under which this task is performed"
* basedOn only Reference(ServiceRequest)

* partOf MS
* partOf ^short = "Parent task in the workflow"
* partOf only Reference(Task)

* status MS
* status ^short = "Task status"
* status from TaskStatusVS (required)

* businessStatus MS
* businessStatus ^short = "Business status"
* businessStatus from TaskBusinessStatusVS (required)

* intent MS
* intent ^short = "Task intent"
* intent from TaskIntentVS (required)

* focus 1..1 MS
* focus ^short = "Service request being acted upon"
* focus only Reference(ServiceRequest)

* for MS
* for ^short = "Patient for whom this task is performed"
* for only Reference(UZCorePatient)

* owner ^short = "Organization or practitioner responsible for the task"
* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)

* requestedPeriod MS
* requestedPeriod ^short = "Planned timeframe for task completion"
  * start and end MS

* executionPeriod MS
* executionPeriod ^short = "Actual start and end time of task execution"
  * start and end MS

* obeys uzcore-tsk-1


Instance: example-task-family-doctor
InstanceOf: UZCoreTask
Description: "Example of a state-insurance workflow task assigned to the family doctor for initial approval"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-family-doctor "Oilaviy shifokorning roziligi"
* basedOn = Reference(ServiceRequest/example-cbc-order)
* status = #in-progress
* businessStatus = task-business-status-cs#overdue "Muddati o'tgan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-cbc-order)
* for = Reference(Patient/example-salim)
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
* code = task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-cbc-order)
* partOf = Reference(Task/example-task-family-doctor)
* status = #requested
* businessStatus = task-business-status-cs#overdue "Muddati o'tgan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-cbc-order)
* for = Reference(Patient/example-david)
* owner = Reference(Organization/tashkent-diseases-hospital)
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
* code = task-codes-cs#approve-regional-commission "Mintaqaviy komissiyaning roziligi"
* basedOn = Reference(ServiceRequest/example-cbc-order)
* partOf = Reference(Task/example-task-specialist)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-cbc-order)
* for = Reference(Patient/example-emma)
* owner = Reference(Organization/example-organization)
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
* code = task-codes-cs#approve-national-commission "Respublika komissiyasining roziligi"
* basedOn = Reference(ServiceRequest/example-cbc-order)
* partOf = Reference(Task/example-task-regional-commission)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-cbc-order)
* for = Reference(Patient/example-unidentified-patient)
* owner = Reference(Organization/xonobod-medical-association)
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
* code = task-codes-cs#approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
* basedOn = Reference(ServiceRequest/example-cbc-order)
* partOf = Reference(Task/example-task-national-commission)
* status = #completed
* businessStatus = task-business-status-cs#completed "Tugallangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-cbc-order)
* for = Reference(Patient/example-david)
* owner = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-10"
  * end = "2026-05-10"
* executionPeriod
  * start = "2026-03-10"
  * end = "2026-05-10"

// The six instances below form one coherent snapshot of the state-insurance referral
// approval chain for ServiceRequest/example-hospitalization-referral (patient Nodira):
// stages 1-5 are completed and the final hospitalization stage is still in progress
// past its planned period, so only that task carries businessStatus = overdue.
// Tasks are siblings ordered in time - each stage is created after the previous one
// completes - and all reference the referral via basedOn/focus.

Instance: example-referral-task-family-doctor
InstanceOf: UZCoreTask
Description: "Stage 1 of the state-insurance referral approval chain: approval by the family doctor, completed"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T1"
* code = task-codes-cs#approve-family-doctor "Oilaviy shifokorning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#completed "Tugallangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(PractitionerRole/example-practitionerrole)
* requestedPeriod
  * start = "2026-03-05"
  * end = "2026-03-06"
* executionPeriod
  * start = "2026-03-05"
  * end = "2026-03-06"

Instance: example-referral-task-specialist
InstanceOf: UZCoreTask
Description: "Stage 2 of the state-insurance referral approval chain: approval by the specialist physician, completed"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T2"
* code = task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#completed "Tugallangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(PractitionerRole/example-practitionerrole-freetext)
* requestedPeriod
  * start = "2026-03-06"
  * end = "2026-03-07"
* executionPeriod
  * start = "2026-03-06"
  * end = "2026-03-07"

Instance: example-referral-task-regional-commission
InstanceOf: UZCoreTask
Description: "Stage 3 of the state-insurance referral approval chain: review by the regional health commission, completed and confirmed"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T3"
* code = task-codes-cs#approve-regional-commission "Mintaqaviy komissiyaning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/xonobod-medical-association)
* requestedPeriod
  * start = "2026-03-07"
  * end = "2026-03-09"
* executionPeriod
  * start = "2026-03-07"
  * end = "2026-03-08"

Instance: example-referral-task-national-commission
InstanceOf: UZCoreTask
Description: "Stage 4 of the state-insurance referral approval chain: review by the national (republican) health commission, completed and confirmed"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T4"
* code = task-codes-cs#approve-national-commission "Respublika komissiyasining roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-09"
  * end = "2026-03-11"
* executionPeriod
  * start = "2026-03-09"
  * end = "2026-03-10"

Instance: example-referral-task-insurance-fund
InstanceOf: UZCoreTask
Description: "Stage 5 of the state-insurance referral approval chain: review by the state health insurance fund, completed and confirmed"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T5"
* code = task-codes-cs#approve-insurance-fund "Sug'urta fondi tomonidan tasdiqlash"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-11"
  * end = "2026-03-13"
* executionPeriod
  * start = "2026-03-11"
  * end = "2026-03-12"

Instance: example-referral-task-hospitalization
InstanceOf: UZCoreTask
Description: "Stage 6 of the state-insurance referral approval chain: hospitalization at the receiving facility, still in progress past the planned period, so businessStatus is overdue per the SLA rule (uzcore-tsk-1)"
Usage: #example
* language = #uz
* identifier.value = "REF-2026-0451-T6"
* code = task-codes-cs#approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #in-progress
* businessStatus = task-business-status-cs#overdue "Muddati o'tgan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/tashkent-diseases-hospital)
* requestedPeriod
  * start = "2026-03-13"
  * end = "2026-05-10"
* executionPeriod
  * start = "2026-03-14"
