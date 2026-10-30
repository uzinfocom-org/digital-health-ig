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
* code from ProcedureCodeVS (extensible)
* bodySite from $bodysite (preferred)
* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "$this"
* bodySite ^slicing.rules = #open
* bodySite ^slicing.description = "Body sites coded in SNOMED CT; codes from other systems are allowed alongside them"
* bodySite ^slicing.ordered = false
* bodySite contains snomedBodySite 0..* MS
* bodySite[snomedBodySite] from $bodysite (required)
* bodySite[snomedBodySite] ^short = "Body site coded in SNOMED CT"
* outcome from ProcedureOutcomeVS (extensible)

* basedOn only Reference(UZCoreCarePlan or ServiceRequest)
* partOf only Reference(UZCoreProcedure or UZCoreObservation or MedicationAdministration)
* subject only Reference(UZCorePatient or Group or UZCoreDevice or UZCorePractitioner or UZCoreOrganization or UZCoreLocation)
* encounter only Reference(UZCoreEncounter)
* recorder only Reference(UZCorePatient or UZCoreRelatedPerson or UZCorePractitioner or UZCorePractitionerRole)
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson or UZCoreDevice or CareTeam or UZCoreHealthcareService)
* location only Reference(UZCoreLocation)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreProcedure or UZCoreDiagnosticReport or DocumentReference)



Instance: example-procedure
InstanceOf: UZCoreProcedure
Usage: #example
Title: "Example of a Therapeutic Foot Massage Procedure"
Description: "An example instance of a UZ Core Procedure profile for a therapeutic massage of the right foot."

* identifier[0].system = $mis-dmed-uz
* identifier[0].value = "proc-0001"
* basedOn[0] = Reference(example-massage-careplan) "Therapeutic massage course"
* status = $event-status#completed "Completed"
* category[0].text = "Physical therapy procedure"
* code[0].coding = $sct#386438000 "Simple massage"
* code[0].text = "Therapeutic massage of right foot"
* subject = Reference(example-david) "David Davidov"
* encounter = Reference(example-physiotherapy-encounter) "Outpatient physiotherapy visit"
* occurrencePeriod[0]
  * start = "2025-05-15T08:00:00Z"
  * end = "2025-05-15T10:00:00Z"
* recorded = "2025-05-19T09:30:00Z"
* recorder = Reference(example-practitionerrole) 
* performer[0]
  * actor = Reference(example-practitioner) "Paul Ivanov, PT"
* location = Reference(example-location) "Toshkent shahar 1-sonli shifoxona"
* bodySite = $sct#7769000 "Right foot"
* reason = Reference(example-foot-pain) "Right foot pain"
* outcome = $sct#385669000 "Successful"
* note[0].text = "Therapeutic massage of the right foot completed according to the care plan. No adverse reactions noted."
* used = Reference(example-medication)

Instance: example-physiotherapy-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Outpatient Physiotherapy Visit"
Description: "An outpatient visit in which the doctor assessed David's right foot pain, planned a therapeutic massage course and the first session was carried out."
Usage: #example
* language = #uz
* status = #completed
* class[dhpClass] = $v3-ActCode#AMB
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Davolash"
* subject = Reference(example-david) "David Davidov"
* participant.actor = Reference(Practitioner/example-practitioner)
* actualPeriod.start = "2025-05-15T07:00:00Z"
* actualPeriod.end = "2025-05-15T10:30:00Z"
* reason[0].use = encounter-reason-use-cs#mserv-0002-00001 "Kasallik"
* reason[0].value = Reference(Condition/example-foot-pain)
* diagnosis[0].condition = Reference(Condition/example-foot-pain)
* location[0].location = Reference(example-location)

Instance: example-foot-pain
InstanceOf: UZCoreCondition
Title: "Example UZ Core Condition - Right Foot Pain"
Description: "Pain in David's right foot, diagnosed at the outpatient physiotherapy visit and treated with a therapeutic massage course."
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* code = $sct#47933007 "Foot pain"
* bodySite = $sct#7769000 "Right foot"
* subject = Reference(example-david) "David Davidov"
* encounter = Reference(example-physiotherapy-encounter)
* recordedDate = "2025-05-15"
