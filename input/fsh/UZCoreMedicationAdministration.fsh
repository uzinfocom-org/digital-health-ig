Profile: UZCoreMedicationAdministration
Parent: MedicationAdministration
Id: uz-core-medication-administration
Title: "UZ Core Medication Administration"
Description: "Administration of medication to a patient"

* ^experimental = true
* ^status = #active
* ^date = "2026-09-12"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Business identifier for this administration event, assigned by the performer or other systems."

* status MS
* status from MedicationAdministrationStatusCodesVS (required)

* statusReason MS
* statusReason from MedicationAdministrationStatusReasonVS (example)

* category MS
* category from MedicationAdministrationLocationCodesVS (example)

* medication MS
* medication only CodeableReference(UZCoreMedication)
* medication from MedicationClassificationVS (example)

* subject MS
* subject ^short = "Who received the medication."
* subject only Reference(UZCorePatient or UZCoreGroup)

* encounter MS
* encounter ^short = "Who received the medication."
* encounter only Reference(UZCoreEncounter)

* occurence[x] MS
* occurence[x] only dateTime or Period or Timing
* occurence[x] ^short = "When the administration took place (or would have)."

* recorded MS
* recorded ^short = "When this event was first documented in the record, as distinct from occurence."

* performer MS
* performer ^short = "Who or what performed the administration, and their role."
* performer.function MS
* performer.function ^short = "The type of involvement of this performer (e.g. performer, verifier, witness)."
* performer.function from MedicationAdministrationPerformerFunctionCodesVS (example)
* performer.actor MS
* performer.actor only CodeableReference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device)
* performer.actor ^short = "The specific individual or device that performed the administration."

* reason MS
* reason ^short = "Clinical justification for why the medication was given."
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport)
* reason from ReasonMedicationGivenCodesVS

* request MS
* request ^short = "The order this administration fulfills."

* device MS
* device only CodeableReference(Device)
* device from DeviceTypeVS (example)
* device ^short = "Device used to administer the medication (e.g. infusion pump)."

* note ^short = "Free-text remarks not captured elsewhere."

* dosage MS
* dosage ^short = "Dosage details of how the medication was administered. Requires at least one of text, dose, or rate[x]."
* dosage.dose MS
* dosage.dose only SimpleQuantity
* dosage.dose ^short = "Amount given at one administration event (single/instantaneous doses)."
* dosage.route MS
* dosage.route from RouteCodeVS
* dosage.site MS
* dosage.site ^short = "Body site administered to"
* dosage.site from SNOMEDCTAnatomicalStructureAdministrationSitesVS
* dosage.rate[x] MS
* dosage.rate[x] ^short = "Speed of administration per unit of time (infusions)."

* extension contains
    RelatedAllergyIntoleranceMedAdministration named relatedAllergyIntolerance 0..1 MS and
    LocationMedAdministration named location 0..1 MS and
    MedicationSource named medicationSource 0..1

* extension[relatedAllergyIntolerance] ^short = "Related allergy or intolerance for this administration"
* extension[relatedAllergyIntolerance].valueReference only Reference(UZCoreAllergyIntolerance)

* extension[location] ^short = "Organization/location where administration took place"
* extension[location].valueReference only Reference(UZCoreOrganization)

* extension[medicationSource].extension[financingSource].valueCodeableConcept from FinancingSourceVS (required)

Instance: example-Med-Administration-001
InstanceOf: UZCoreMedicationAdministration
Usage: #example
Title: "Example UZCore Medication Administration"
Description: "Example instance of a completed Paracetamol administration for Patient/1."
* status = #completed
* statusReason = $medicationrequest-status-reason#non-avail
* category = $medicationrequest-admin-location#inpatient
* medication[0] = $sct#387517004 "Paracetamol"
* subject = Reference(example-david)
* encounter = Reference(example-encounter)
* occurenceDateTime = "2026-08-28"
* recorded = "2026-08-28"

* performer.function = $medication-administration-performer-function-codes#performer
* performer.actor = Reference(example-practitioner)

* reason = Reference(example-cancer)

* device.concept = $sct#430033006 "Infusion pump"

* dosage.dose = 500 'mg'
* dosage.route = $sct#26643006 "Oral route"
* dosage.site = $sct#368208006 "Left upper arm structure"

* extension[relatedAllergyIntolerance].valueReference = Reference(example-grass-pollen-allergy)
* extension[medicationSource].extension[financingSource].valueCodeableConcept = FinancingSourceCS#fnncl-0001-00004 "Budget"