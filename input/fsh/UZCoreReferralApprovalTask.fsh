Invariant: uzcore-tsk-1
Description: "If Task.status is not completed, cancelled, or failed, and requestedPeriod.end is in the past, businessStatus should be set to overdue for SLA monitoring"
Severity: #warning
Expression: "(status != 'completed' and status != 'cancelled' and status != 'failed' and requestedPeriod.end.exists() and requestedPeriod.end < now()) implies businessStatus.coding.exists(code = 'overdue')"

Profile: UZCoreReferralApprovalTask
Parent: Task
Id: uz-core-referral-approval-task
Title: "UZ Core Task Referral Approval"
Description: "Uzbekistan Core Task Referral Approval profile, used to track workflow steps of the state-insurance referral and hospitalization approval process (Annex 1 to Resolution of the Cabinet of Ministers No. 694, 04.11.2025)"
* ^experimental = true
* ^status = #active
* ^date = "2026-06-18"
* ^publisher = "Uzinfocom"

* identifier 0..1 MS
* identifier ^short = "Identifiers assigned to this task"

* code MS
* code ^short = "Task category"
* code from TaskCodesVS (required)

* basedOn 1..1 MS
* basedOn ^short = "Request under which this task was completed"
* basedOn only Reference(UZCoreServiceRequest)

* partOf MS
* partOf ^short = "Composite Task" 
* partOf only Reference(Task)

* status MS
* status ^short = "Task Status"
* status from TaskStatusVS (required)

* statusReason MS
* statusReason from TaskStatusReasonVS (extensible)

* businessStatus MS
* businessStatus ^short = "Business status of task"
* businessStatus from TaskBusinessStatusVS (required)

* intent MS
* intent ^short = "Task completion level"
* intent from TaskIntentVS (required)

* focus 1..1 MS
* focus ^short = "On which task the action is being performed"
* focus only Reference(UZCoreServiceRequest)

* for MS
* for ^short = "For whom this task is performed"
* for only Reference(UZCorePatient)

* owner MS
* owner ^short = "Task responsible person"
* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)

* performer MS
  * actor MS
  * actor only Reference(UZCorePractitionerRole)

* requestedPeriod MS
  * ^short = "When execution is required"
  * start and end MS
* executionPeriod MS
  * ^short = "Actual start and end time"
  * start and end MS

* authoredOn MS

* requester MS
* requester only Reference(UZCoreOrganization)

* requestedPerformer MS
* requestedPerformer only CodeableReference(UZCoreOrganization)

* note MS

* obeys uzcore-tsk-1

Instance: example-task-family-doctor
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task in which the family doctor approves the referral"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-family-doctor "Oilaviy shifokorning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* status = #completed
* businessStatus = task-business-status-cs#confirmed "Tasdiqlangan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/xonobod-medical-association)
* performer.actor = Reference(PractitionerRole/example-practitionerrole)
* authoredOn = "2026-03-05T13:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/xonobod-medical-association)
* requestedPeriod
  * start = "2026-03-05T13:00:00+05:00"
  * end = "2026-03-06T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-05T13:10:00+05:00"
  * end = "2026-03-05T13:30:00+05:00"

Instance: example-task-specialist-returned
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task in which the specialist returns the referral for revision because further investigations are needed"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* partOf = Reference(Task/example-task-family-doctor)
* status = #completed
* businessStatus = task-business-status-cs#bstatus-0001-00001 "Qayta ishlash uchun qaytarildi"
* statusReason = task-status-reason-cs#reason-0001-00005 "Qo'shimcha tekshiruvlar talab etiladi"
* note.text = "Buyrak va siydik yo'llarining UTT natijasi biriktirilmagan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* performer.actor = Reference(PractitionerRole/example-practitionerrole-freetext)
* authoredOn = "2026-03-05T14:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-05T14:00:00+05:00"
  * end = "2026-03-07T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-06T10:15:00+05:00"
  * end = "2026-03-06T11:00:00+05:00"

Instance: example-task-specialist
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task in which the specialist approves the revised referral and sends it to the regional commission"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* partOf = Reference(Task/example-task-family-doctor)
* status = #completed
* businessStatus = task-business-status-cs#bstatus-0001-00002 "So'rov viloyat komissiyasiga yuborildi"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* performer.actor = Reference(PractitionerRole/example-practitionerrole-freetext)
* authoredOn = "2026-03-07T09:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-07T09:00:00+05:00"
  * end = "2026-03-09T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-07T11:00:00+05:00"
  * end = "2026-03-07T12:00:00+05:00"

Instance: example-task-regional-commission
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task in which the regional health commission approves the referral and sends it to the national commission"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-regional-commission "Mintaqaviy komissiyaning roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* partOf = Reference(Task/example-task-specialist)
* status = #completed
* businessStatus = task-business-status-cs#bstatus-0001-00003 "So'rov respublika komissiyasiga yuborildi"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/tashkent-diseases-hospital)
* authoredOn = "2026-03-07T12:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/tashkent-diseases-hospital)
* requestedPeriod
  * start = "2026-03-07T12:00:00+05:00"
  * end = "2026-03-10T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-09T10:00:00+05:00"
  * end = "2026-03-09T16:00:00+05:00"

Instance: example-task-national-commission
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task in which the national (republican) health commission approves the referral, leaving the patient to choose the receiving clinic"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-national-commission "Respublika komissiyasining roziligi"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* partOf = Reference(Task/example-task-regional-commission)
* status = #completed
* businessStatus = task-business-status-cs#bstatus-0001-00004 "Tibbiyot muassasasini tanlash kutilmoqda"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* authoredOn = "2026-03-09T16:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-09T16:00:00+05:00"
  * end = "2026-03-12T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-10T10:00:00+05:00"
  * end = "2026-03-11T15:00:00+05:00"

Instance: example-task-hospitalization
InstanceOf: UZCoreReferralApprovalTask
Description: "Example of a state-insurance workflow task for the hospitalization step at the receiving clinic, completed when the patient is discharged"
Usage: #example
* language = #uz
* code = task-codes-cs#approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
* basedOn = Reference(ServiceRequest/example-hospitalization-referral)
* partOf = Reference(Task/example-task-national-commission)
* status = #completed
* businessStatus = task-business-status-cs#bstatus-0001-00009 "Kasalxonadan chiqarilgan"
* intent = $request-intent#order
* focus = Reference(ServiceRequest/example-hospitalization-referral)
* for = Reference(Patient/example-nodira)
* owner = Reference(Organization/example-organization)
* performer.actor = Reference(PractitionerRole/example-practitionerrole-freetext)
* authoredOn = "2026-03-11T15:00:00+05:00"
* requester = Reference(Organization/xonobod-medical-association)
* requestedPerformer.reference = Reference(Organization/example-organization)
* requestedPeriod
  * start = "2026-03-11T15:00:00+05:00"
  * end = "2026-03-31T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-16T09:00:00+05:00"
  * end = "2026-03-24T12:00:00+05:00"
