Profile: UZCorePractitionerRole
Parent: PractitionerRole
Id: uz-core-practitioner-role
Title: "UZ Core PractitionerRole"
Description: "Uzbekistan Core PractitionerRole profile, used to define roles of practitioners"
* ^experimental = true
* ^status = #active
* ^date = "2025-03-12"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)

* active and practitioner and organization and code and specialty and location and healthcareService MS

* specialty.coding ^slicing.discriminator.type = #value
* specialty.coding ^slicing.discriminator.path = "system"
* specialty.coding ^slicing.rules = #open
* specialty.coding ^slicing.description = "Specialization of the practitioner"
* specialty.coding ^slicing.ordered = false

* specialty.coding contains dhpSpecialty 0..1 MS
* specialty.coding[dhpSpecialty]
  * system 1..1 MS
  * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs"
  * code 1..1 MS
  * code from profession-specialization-vs (required)

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Role of the practitioner"
* code.coding ^slicing.ordered = false

* code.coding contains role 0..1 MS
* code.coding[role]
  * system 1..1 MS
  * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs"
  * code 1..1 MS
  * code from practitioner-role-vs (required)

Instance: example-practitionerrole
InstanceOf: UZCorePractitionerRole
Description: "Example of a practitioner's role"
Usage: #example
* language = #uz
* active = true
* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)
* code = position-and-profession-cs#2212.14 "Vrach ginekolog"
* specialty = profession-specialization-cs#394585009 "Akusherlik va ginekologiya"
* healthcareService = Reference(HealthcareService/example-healthcareservice)
