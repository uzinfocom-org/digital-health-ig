Profile: UZCoreCarePlan
Parent: CarePlan
Id: uz-core-careplan
Title: "UZ Core CarePlan"
Description: "Uzbekistan Core CarePlan profile, used to describe how one or more practitioners intend to deliver care to a patient over a period of time, such as a nursing patronage plan, a course of treatment or a sick leave case"

* ^experimental = true
* ^status = #active
* ^date = "2026-10-30"
* ^publisher = "Uzinfocom"

* identifier MS

* instantiatesCanonical MS
* instantiatesCanonical only Canonical(UZCorePlanDefinition or UZCoreQuestionnaire or Measure or UZCoreActivityDefinition or OperationDefinition)
* instantiatesUri MS

* basedOn MS
* basedOn only Reference(UZCoreCarePlan or UZCoreServiceRequest or RequestOrchestration or NutritionOrder)
* replaces MS
* replaces only Reference(UZCoreCarePlan)
* partOf MS
* partOf only Reference(UZCoreCarePlan)

* status MS
* status from ServiceRequestStatusVS (required)
* intent MS
* intent from CarePlanIntentVS (required)

* category MS
* title MS
* description MS

* subject MS
* subject only Reference(UZCorePatient or UZCoreGroup)
* encounter MS
* encounter only Reference(UZCoreEncounter)

* period MS
* created MS

* custodian MS
* custodian only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreDevice or UZCoreRelatedPerson or UZCoreOrganization or CareTeam)
* contributor MS
* contributor only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreDevice or UZCoreRelatedPerson or UZCoreOrganization or CareTeam)
* careTeam MS

* addresses MS
* addresses only CodeableReference(UZCoreCondition)
* supportingInfo MS
* goal MS
* goal only Reference(UZCoreGoal)

* activity MS
* activity.performedActivity MS
* activity.performedActivity only CodeableReference(UZCoreProcedure or UZCoreImmunization or UZCoreMedicationAdministration or UZCoreMedicationDispense or UZCoreObservation or UZCoreDiagnosticReport or UZCoreEncounter or UZCoreSupplyDelivery or NutritionIntake or Communication)
* activity.performedActivity ^short = "Event that was performed as part of this activity"
* activity.progress MS
* activity.plannedActivityReference MS
* activity.plannedActivityReference only Reference(Appointment or CommunicationRequest or DeviceRequest or UZCoreMedicationRequest or NutritionOrder or Task or UZCoreServiceRequest or VisionPrescription or RequestOrchestration or UZCoreImmunizationRecommendation or UZCoreSupplyRequest)
* activity.plannedActivityReference ^short = "Request for the planned activity"

* note MS

Instance: example-newborn-patronage-careplan
InstanceOf: UZCoreCarePlan
Title: "Example UZ Core CarePlan - Newborn Nursing Patronage"
Description: "A family polyclinic nurse's plan of home patronage visits for a newborn in the first month of life. Each planned visit is a ServiceRequest; the first, on day 3, is already ordered."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">Yangi tug'ilgan chaqaloqni birinchi oyda uyda patronaj qilish rejasi.</div>"
* identifier.system = $mis-dmed-uz
* identifier.value = "CP-2015-000123"
* status = #active
* intent = #plan
* category = $sct#773130005 "Nursing care plan"
* title = "Yangi tug'ilgan chaqaloq patronaji"
* description = "3, 15 va 30-kunlarda uyga patronaj tashriflari"
* subject = Reference(Patient/example-jasur)
* period.start = "2015-06-20"
* period.end = "2015-07-20"
* created = "2015-06-22T09:00:00+05:00"
* custodian = Reference(Practitioner/example-practitioner)
* activity[0].plannedActivityReference = Reference(ServiceRequest/example-nursing-newborn-home-visit-request)

Instance: example-massage-careplan
InstanceOf: UZCoreCarePlan
Title: "Example UZ Core CarePlan - Therapeutic Massage Course"
Description: "A physiotherapy course of therapeutic foot massage. The completed session is recorded as a Procedure linked from the activity."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">O'ng oyoqni davolovchi massaj kursi.</div>"
* status = #completed
* intent = #order
* category = $sct#773513001 "Physiotherapy care plan"
* title = "Davolovchi massaj kursi"
* subject = Reference(Patient/example-david)
* encounter = Reference(Encounter/example-encounter)
* period.start = "2025-05-15"
* period.end = "2025-05-15"
* created = "2025-05-14T15:00:00+05:00"
* custodian = Reference(Practitioner/example-practitioner)
* activity[0].performedActivity.reference = Reference(Procedure/example-procedure)
