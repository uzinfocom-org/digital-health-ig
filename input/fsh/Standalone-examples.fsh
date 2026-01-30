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

Instance: example-careplan
InstanceOf: CarePlan
Usage: #example
Title: "example-careplan"
Description: "Example of a careplan"
* status = #active
* intent = #plan
* subject = Reference(example-david)

Instance: example-medication
InstanceOf: Medication
Usage: #example
Title: "example-medication"
Description: "Example of a medication"
* identifier.value  = "medic-001"