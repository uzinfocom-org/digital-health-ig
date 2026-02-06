// This file contains only example instances to help enforce referential integrity within the profiles
// As soon as a profile for an instance is created, the instance should be removed from this file

Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* name
  * family = "Ибрагимов"
  * given = "Алишер"

Instance: example-medicationrequest
InstanceOf: MedicationRequest
Usage: #example
Title: "example-medicationrequest"
Description: "Example of a medicationrequest"
* status = #active
* intent = #order
* medicationCodeableConcept.text = "Analgin 500mg"
* subject = Reference(Patient/example)