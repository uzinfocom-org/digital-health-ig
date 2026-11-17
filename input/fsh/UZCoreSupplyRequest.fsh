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
    contract 0..1 MS and
    group 0..1 MS

* identifier[request].system 1..1 MS
* identifier[request].system = $supply-request-number
* identifier[request] ^short = "Supply request number assigned by the requesting hospital"

* identifier[contract].system 1..1 MS
* identifier[contract].system = $supply-contract-number
* identifier[contract] ^short = "Number of the supply agreement between the hospital and the blood service"

* identifier[group].system 1..1 MS
* identifier[group].system = $supply-group-number
* identifier[group] ^short = "Group number shared by supply requests placed together"

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
* item from BloodProductTypeSnomedVS (extensible)


* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "code"
* parameter ^slicing.rules = #open

* parameter contains
    bloodGroup 0..1 MS and
    bloodRh 0..1 MS

* parameter[bloodGroup].code 1..1 MS
* parameter[bloodGroup].code = $sct#63915006
* parameter[bloodGroup].value[x] 1..1 MS
* parameter[bloodGroup].value[x] only CodeableConcept
* parameter[bloodGroup].valueCodeableConcept from BloodGroupVS (required)

* parameter[bloodRh].code 1..1 MS
* parameter[bloodRh].code = $sct#115678000
* parameter[bloodRh].value[x] 1..1 MS
* parameter[bloodRh].value[x] only CodeableConcept
* parameter[bloodRh].valueCodeableConcept from BloodRhVS (required)

* quantity MS

* occurrence[x] MS

* authoredOn MS


* requester MS
* requester only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson or UZCoreDevice or CareTeam)


* supplier MS
* supplier only Reference(UZCoreOrganization or UZCoreHealthcareService)


* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport or DocumentReference)


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

* category = request-type-cs#req-type-0001-0002 "Named (patient-specific)"

* priority = #routine

* deliverFor = Reference(Patient/example-salim)

* item = $sct#431069006 "Packed red blood cells"

* quantity.value = 2
* quantity.unit = "units"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1

* parameter[bloodGroup].code = $sct#63915006
* parameter[bloodGroup].valueCodeableConcept = $sct#112144000

* parameter[bloodRh].code = $sct#115678000
* parameter[bloodRh].valueCodeableConcept = $sct#165747007

* occurrenceDateTime = "2025-09-01T09:00:00+05:00"

* authoredOn = "2025-08-31T14:20:00+05:00"

* requester = Reference(Practitioner/example-practitioner)

* supplier = Reference(Organization/andijan-station)

* reason.concept = $sct#87522002 "Iron deficiency anemia"

* deliverTo = Reference(Organization/tashkent-hospital)

Instance: example-supply-request-group-red-cells
InstanceOf: UZCoreSupplyRequest
Title: "Example UZ Core SupplyRequest - Grouped Red Cells"
Description: "Red cells for an operation the next morning. A SupplyRequest holds one item, so red cells and plasma are sent as two requests linked by group number GR-0001 and handled as one order."
Usage: #example
* language = #uz

* identifier[request].value = "CK-0004"
* identifier[contract].value = "CK-0001"
* identifier[group].value = "GR-0001"
* identifier[group].assigner = Reference(Organization/tashkent-hospital)

* basedOn = Reference(ServiceRequest/transfusion-order-red-cells)

* status = #active
* category = request-type-cs#req-type-0001-0002 "Shaxsiy"
* priority = #urgent

* deliverFor = Reference(Patient/example-salim)

* item = $sct#431069006

* quantity.value = 4
* quantity.unit = "units"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1

* parameter[bloodGroup].code = $sct#63915006
* parameter[bloodGroup].valueCodeableConcept = $sct#112144000
* parameter[bloodRh].code = $sct#115678000
* parameter[bloodRh].valueCodeableConcept = $sct#165747007

* authoredOn = "2025-09-03T07:40:00+05:00"
* occurrenceDateTime = "2025-09-04T09:00:00+05:00"

* requester = Reference(Practitioner/example-practitioner)
* supplier = Reference(Organization/andijan-station)
* reason.concept = $sct#74474003 "Gastrointestinal hemorrhage"
* deliverTo = Reference(Organization/tashkent-hospital)

Instance: example-supply-request-group-plasma
InstanceOf: UZCoreSupplyRequest
Title: "Example UZ Core SupplyRequest - Grouped Fresh Frozen Plasma"
Description: "Fresh frozen plasma for the same operation. Shares group number GR-0001 with the red cell request, so both are handled as one order."
Usage: #example
* language = #uz

* identifier[request].value = "CK-0005"
* identifier[contract].value = "CK-0001"
* identifier[group].value = "GR-0001"
* identifier[group].assigner = Reference(Organization/tashkent-hospital)

* basedOn = Reference(ServiceRequest/transfusion-order-plasma)

* status = #active
* category = request-type-cs#req-type-0001-0002 "Shaxsiy"
* priority = #urgent

* deliverFor = Reference(Patient/example-salim)

* item = $sct#346447007

* quantity.value = 2
* quantity.unit = "units"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1

* parameter[bloodGroup].code = $sct#63915006
* parameter[bloodGroup].valueCodeableConcept = $sct#112144000
* parameter[bloodRh].code = $sct#115678000
* parameter[bloodRh].valueCodeableConcept = $sct#165747007

* authoredOn = "2025-09-03T07:40:00+05:00"
* occurrenceDateTime = "2025-09-04T09:00:00+05:00"

* requester = Reference(Practitioner/example-practitioner)
* supplier = Reference(Organization/andijan-station)
* reason.concept = $sct#74474003 "Gastrointestinal hemorrhage"
* deliverTo = Reference(Organization/tashkent-hospital)
