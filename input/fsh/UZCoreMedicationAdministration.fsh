Profile: UZCoreMedicationAdministration
Parent: MedicationAdministration
Id: uz-core-medicationadministration
Title: "UZ Core MedicationAdministration"
Description: "Uzbekistan Core MedicationAdministration profile, used to record the administration of a medication to a patient"

* ^experimental = true
* ^status = #active
* ^date = "2026-09-12"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Business identifier for this administration event, assigned by the performer or other systems."

* status MS
* status from MedicationAdministrationStatusVS (required)

* statusReason MS
* statusReason from MedicationAdministrationStatusReasonVS (preferred)

* category MS
* category from MedicationAdministrationAdminLocationVS (preferred)

* medication MS
* medication only CodeableReference(UZCoreMedication)
* medication from MedicationClassificationVS (required)

* subject MS
* subject ^short = "Who received the medication."
* subject only Reference(UZCorePatient or UZCoreGroup)

* encounter MS
* encounter ^short = "The encounter during which the medication was administered."
* encounter only Reference(UZCoreEncounter)

* occurence[x] MS
* occurence[x] ^short = "When the administration took place (or would have)."

* recorded MS
* recorded ^short = "When this event was first documented in the record, as distinct from occurence."

* performer MS
* performer ^short = "Who or what performed the administration, and their role."
* performer.function MS
* performer.function ^short = "The type of involvement of this performer (e.g. performer, verifier, witness)."
* performer.function from MedicationAdministrationPerformerFunctionVS (preferred)
* performer.actor MS
* performer.actor only CodeableReference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device)
* performer.actor ^short = "The specific individual or device that performed the administration."

* reason MS
* reason ^short = "Clinical reason for administering the medication, including treatment of an allergy or allergic condition. Not used to document an allergic reaction caused by the administration."
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport)
* reason from ReasonMedicationGivenVS (preferred)

* request MS
* request only Reference(UZCoreMedicationRequest)
* request ^short = "The prescription this administration fulfills."

* device MS
// * device only CodeableReference(UZCoreDevice)
* device ^short = "Device used to administer the medication (e.g. infusion pump)."

* note ^short = "Free-text remarks not captured elsewhere."

* dosage MS
* dosage ^short = "Dosage details of how the medication was administered. Requires at least one of text, dose, or rate[x]."
* dosage.dose MS
* dosage.dose ^short = "Amount given at one administration event (single/instantaneous doses)."
* dosage.route MS
* dosage.route from RouteCodeVS (extensible)
* dosage.site MS
* dosage.site ^short = "Body site administered to"
* dosage.site from BodySiteVS (preferred)
* dosage.rate[x] MS
* dosage.rate[x] ^short = "Speed of administration per unit of time (infusions)."

* extension contains
    $event-location named location 0..1 MS and
    MedicationAdministrationFundingSource named medicationAdministrationFundingSource 0..1
* extension[location] ^short = "Location where the medication administration took place"
* extension[location].valueReference only Reference(UZCoreLocation)


Instance: example-paracetamol-administration
InstanceOf: UZCoreMedicationAdministration
Usage: #example
Title: "Example UZ Core MedicationAdministration - Paracetamol"
Description: "Example of a completed paracetamol administration"
* status = #completed
* category = $medication-admin-location#inpatient
* medication[0] = $sct#387517004 "Paracetamol"
* subject = Reference(example-salim)
* request = Reference(example-medication-request)
* occurenceDateTime = "2026-08-28"
* recorded = "2026-08-28"

* performer.function = $medication-administration-performer-function-codes#performer
* performer.actor = Reference(example-practitioner)

* reason.concept = $sct#25064002 "Headache"

* dosage.dose = 500 'mg'
* dosage.route = $sct#26643006 "Oral route"

* extension[location].valueReference = Reference(example-location)
* extension[medicationAdministrationFundingSource].valueCodeableConcept = financing-source-cs#fnncl-0001-00004 "Budget"