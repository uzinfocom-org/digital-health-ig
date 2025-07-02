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

Instance: example-condition
InstanceOf: Condition
Usage: #example
Title: "example-condition"
Description: "Example of a condition"
* subject = Reference(example-patient)
* code = $icd-10#I10 "Essential (primary) hypertension"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
