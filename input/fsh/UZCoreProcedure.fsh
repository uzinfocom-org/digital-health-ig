Profile: UZCoreProcedure
Parent: Procedure
Id: uz-core-procedure
Title: "UZ Core Procedure"
Description: "Uzbekistan Core Procedure Profile, used for documenting an action that is or was performed on or for a patient, practitioner, device, organization, or location."
* ^experimental = true
* ^status = #active
* ^date = "2025-08-18"
* ^publisher = "Uzinfocom"

* identifier MS
* basedOn MS
* partOf MS
* status MS
* category MS 
* code MS
* subject MS
* encounter MS
* occurrence[x] MS
* recorded MS
* recorder MS
* performer MS
  * actor MS
* location MS
* reason MS
* bodySite MS
* outcome MS
* note MS
* used MS

* status from ProcedureEventStatusVS (required)
* code from ProcedureCodeVS (required)
* bodySite from $bodysite (required)
* outcome from ProcedureOutcomeVS (extensible)

* basedOn only Reference(CarePlan or ServiceRequest)
* partOf only Reference(UZCoreProcedure or UZCoreObservation or MedicationAdministration)
* subject only Reference(UZCorePatient or Group or Device or UZCorePractitioner or UZCoreOrganization or UZCoreLocation)
* encounter only Reference(UZCoreEncounter)
* recorder only Reference(UZCorePatient or RelatedPerson or UZCorePractitioner or UZCorePractitionerRole)
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or RelatedPerson or Device or CareTeam or UZCoreHealthcareService)
* location only Reference(UZCoreLocation)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreProcedure or DiagnosticReport or DocumentReference)



Instance: example-procedure
InstanceOf: UZCoreProcedure
Usage: #example
Title: "Example of a Therapeutic Leg Massage Procedure"
Description: "An example instance of a UZ Core Procedure profile for a therapeutic massage of the left leg."

* identifier[0].system = $mis-dmed-uz
* identifier[0].value = "proc-0001"
* basedOn[0] = Reference(example-careplan) "CarePlan #1"
* status = $event-status#completed "Completed"
* category[0].text = "Physical therapy procedure"
* code[0].coding = $sct#386438000 "Simple massage"
* code[0].text = "Therapeutic massage of right foot"
* subject = Reference(example-david) "David Davidov"
* encounter = Reference(example-encounter) "Outpatient Visit"
* occurrencePeriod[0]
  * start = "2025-05-15T08:00:00Z"
  * end = "2025-05-15T10:00:00Z"
* recorded = "2025-05-19T09:30:00Z"
* recorder = Reference(example-practitionerrole) 
* performer[0]
  * actor = Reference(example-practitioner) "Paul Ivanov, PT"
* location = Reference(example-location) "Toshkent shahar 1-sonli shifoxona"
* bodySite = $sct#7769000 "Right foot"
* reason = Reference(example-disability) "Aching right foot"
* outcome = $sct#385669000 "Successful"
* note[0].text = "Therapeutic massage of the right foot completed according to the care plan. No adverse reactions noted."
* used = Reference(example-medication)