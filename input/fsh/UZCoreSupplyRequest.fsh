Profile: UZCoreSupplyRequest
Parent: SupplyRequest
Id: uz-core-supply-request
Title: "UZ Core SupplyRequest"
Description: "Uzbekistan Core SupplyRequest profile, used to represent requests for the supply of items."

* ^status = #active
* ^experimental = true
* ^date = "2026-09-30"
* ^publisher = "Uzinfocom"


* identifier MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    request 0..1 MS and
    contract 0..1 MS

* identifier[request].system 1..1 MS
* identifier[request].system = "https://dhp.uz/fhir/core/sid/supply-request"

* identifier[contract].system 1..1 MS
* identifier[contract].system = "https://dhp.uz/fhir/core/sid/supply-contract"


* basedOn MS
* basedOn only Reference(UZCoreServiceRequest or UZCoreSupplyRequest)


* status MS
* status from SupplyRequestStatusVS (required)

* category MS
* category from RequestTypeVS (extensible)


* priority MS
* priority from RequestPriorityVS (required)


* deliverFor MS
* deliverFor only Reference(UZCorePatient)


* item MS
// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is implemented
// * item from BloodProductTypeSnomedVS (required)


* quantity MS


* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "code"
* parameter ^slicing.rules = #open

* parameter contains
    bloodGroup 0..1 MS and
    bloodRh 0..1 MS

// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is implemented
// * parameter[bloodGroup].code 1..1 MS
// * parameter[bloodGroup].code = $sct#63915006
// * parameter[bloodGroup].value[x] 1..1 MS
// * parameter[bloodGroup].value[x] only CodeableConcept
// * parameter[bloodGroup].valueCodeableConcept from BloodGroupVS (required)

// * parameter[bloodRh].code 1..1 MS
// * parameter[bloodRh].code = $sct#876000
// * parameter[bloodRh].value[x] 1..1 MS
// * parameter[bloodRh].value[x] only CodeableConcept
// * parameter[bloodRh].valueCodeableConcept from BloodRhVS (required)

* occurrence[x] MS

* authoredOn MS


* requester MS
* requester only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson or Device or CareTeam)


* supplier MS
* supplier only Reference(UZCoreOrganization or UZCoreHealthcareService)


* reason MS


* deliverTo MS
* deliverTo only Reference(UZCoreOrganization or UZCoreLocation or UZCorePatient or UZCoreRelatedPerson)

Instance: example-supply-request
InstanceOf: UZCoreSupplyRequest
Title: "Example UZ Core SupplyRequest"
Description: "Example supply request for red cell mass."
Usage: #example

* identifier[request].value = "CK-0001"
* identifier[contract].value = "CK-0001"

* basedOn = Reference(ServiceRequest/transfusion-order-01)

* status = #draft

* category = request-type-cs#stock "Stock replenishment"

* priority = #routine

* deliverFor = Reference(Patient/example-salim)

* item = $sct#431069006

* quantity.value = 2
* quantity.unit = "units"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1

// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is implemented
// * parameter[bloodGroup].code = $sct#63915006
// * parameter[bloodGroup].valueCodeableConcept = $sct#112144000

// * parameter[bloodRh].code = $sct#876000
// * parameter[bloodRh].valueCodeableConcept = $sct#165747007

* occurrenceDateTime = "2025-09-01T09:00:00+05:00"

* authoredOn = "2025-08-31T14:20:00+05:00"

* requester = Reference(Practitioner/example-practitioner)

* supplier = Reference(Organization/andijan-station)

* reason = $sct#110468005

* deliverTo = Reference(Organization/tashkent-hospital)