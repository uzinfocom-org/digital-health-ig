Profile: UZCoreMedicationAdministration
Parent: MedicationAdministration
Id: uz-core-medication-administration
Title: "UZ Core MedicationAdministration"
Description: "Uzbekistan Core MedicationAdministration profile, used to record medication administered to a patient by healthcare personnel"
* ^experimental = true
* ^status = #active
* ^date = "2026-09-17"
* ^publisher = "Uzinfocom"

* identifier MS
* status MS
* statusReason MS
* category MS
* medication MS
* subject MS
* encounter MS
* supportingInformation MS
* occurence[x] MS
* recorded MS
* request MS
* performer MS
* performer.function MS
* performer.actor MS
* reason MS
* dosage MS
* dosage.text MS
* dosage.site MS
* dosage.route MS
* dosage.method MS
* dosage.dose MS
* dosage.rate[x] MS

* medication only CodeableReference(UZCoreMedication)
* subject only Reference(UZCorePatient)
* encounter only Reference(UZCoreEncounter)
* request only Reference(UZCoreMedicationRequest)
* performer.actor only CodeableReference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or DiagnosticReport)
* dosage.route from RouteCodeVS (extensible)
* dosage.dose.code from UCUMUnitsSupplementVS (extensible)

Instance: example-medication-administration
InstanceOf: UZCoreMedicationAdministration
Title: "Example UZ Core MedicationAdministration - Outpatient paracetamol"
Description: "Example of a prescribed paracetamol dose administered to a patient by a healthcare practitioner"
Usage: #example
* identifier.value = "MA-2026-00001"
* status = #completed
* medication = Reference(example-medication)
* subject = Reference(example-salim)
* request = Reference(example-medication-request)
* occurenceDateTime = "2026-03-02T08:00:00+05:00"
* recorded = "2026-03-02T08:05:00+05:00"
* performer.actor = Reference(example-practitionerrole)
* dosage
  * text = "Paracetamol 500 mg administered orally"
  * route = $sct#26643006 "Oral route"
  * dose
    * value = 500
    * unit = "mg"
    * system = $ucum
    * code = #mg
