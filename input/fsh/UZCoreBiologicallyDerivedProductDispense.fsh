Profile: UZCoreBiologicallyDerivedProductDispense
Parent: BiologicallyDerivedProductDispense
Id: uz-core-biologicallyderivedproductdispense
Title: "UZ Core BiologicallyDerivedProductDispense"
Description: "Uzbekistan Core BiologicallyDerivedProductDispense profile, used to record the issue of a biologically derived product to a patient's clinical care team."
* ^status = #active
* ^experimental = true
* identifier MS
* identifier ^short = "Business identifier of the dispense"
* identifier ^comment = "The identifier system must be agreed with the issuing system. A donation number or product unit number does not identify the dispense."
* identifier.system 1..1
* identifier.value 1..1
* basedOn MS
* basedOn only Reference(UZCoreServiceRequest)
* basedOn ^short = "Order or request fulfilled by this dispense"
* partOf only Reference(UZCoreBiologicallyDerivedProductDispense)
* partOf ^short = "Parent dispense of which this event is a part"
* status MS
* status from BDPDispenseStatusVS (required)
* status ^short = "Lifecycle status of the dispense"
* status ^comment = "An issued product remains issued when the transfusion is stopped; the transfusion outcome belongs in Procedure."
* originRelationshipType from BDPDispenseOriginRelationshipVS (example)
* originRelationshipType ^short = "Relationship between the donor and intended recipient"
* product MS
* product only Reference(UZCoreBiologicallyDerivedProduct)
* product ^short = "Product or blood component being dispensed"
* patient MS
* patient only Reference(UZCorePatient)
* patient ^short = "Intended recipient of the product"
* matchStatus from BDPDispenseMatchStatusVS (example)
* matchStatus ^short = "Type of matching performed for the recipient"
* matchStatus ^comment = "In the BMS transfusion workflow, ABO and Rh-Hr compatibility results are recorded in the control-check Observation. This element remains available for other workflows."
* performer MS
* performer ^short = "Participants in the dispense"
* performer.function from BDPDispensePerformerFunctionVS (example)
* performer.function ^short = "Function performed during the dispense"
* performer.actor MS
* performer.actor only Reference(UZCorePractitioner)
* performer.actor ^short = "Practitioner performing the action"
* location only Reference(UZCoreLocation)
* location ^short = "Location where the dispense occurred"
* quantity ^short = "Amount actually dispensed"
* quantity ^comment = "The dispensed quantity is not necessarily the total volume of the source product."
* preparedDate ^short = "When the product was selected or matched for this dispense"
* preparedDate ^comment = "This is not the collection date of the source product."
* whenHandedOver MS
* whenHandedOver ^short = "When the product was actually dispatched or handed over"
* whenHandedOver ^comment = "Use the protocol save time only if it represents the actual handover."
* destination only Reference(UZCoreLocation)
* destination ^short = "Location to which the product was dispatched"
* note ^short = "Additional information about the dispense"
* usageInstruction ^short = "Instructions for using the dispensed product"

Instance: example-bdp-dispense-minimal
InstanceOf: UZCoreBiologicallyDerivedProductDispense
Usage: #example
Title: "Example UZ Core BiologicallyDerivedProductDispense - Minimal"
Description: "The mandatory data for an issued product when no dispense business identifier has been assigned."
* language = #uz
* status = #issued
* product = Reference(example-blood-component-product)
* patient = Reference(Patient/example-salim)

Instance: example-bdp-dispense-issued
InstanceOf: UZCoreBiologicallyDerivedProductDispense
Usage: #example
Title: "Example UZ Core BiologicallyDerivedProductDispense - Issued"
Description: "A blood component issued for a patient, with an order, a practitioner and the actual handover time."
* language = #uz
* status = #issued
* basedOn = Reference(example-bdp-dispense-request)
* product = Reference(example-blood-component-product)
* patient = Reference(Patient/example-salim)
* performer.actor = Reference(Practitioner/example-practitioner)
* location = Reference(Location/example-location-1)
* destination = Reference(Location/example-location-2)
* quantity = 250 'mL' "mL"
* preparedDate = "2026-11-09T10:15:00+05:00"
* whenHandedOver = "2026-11-09T10:30:00+05:00"

Instance: example-bdp-dispense-returned
InstanceOf: UZCoreBiologicallyDerivedProductDispense
Usage: #example
Title: "Example UZ Core BiologicallyDerivedProductDispense - Returned"
Description: "A separate illustrative scenario in which an issued component has been returned. A stopped transfusion alone does not mean the product was returned."
* language = #uz
* status = #returned
* basedOn = Reference(example-bdp-dispense-request)
* product = Reference(example-blood-component-product)
* patient = Reference(Patient/example-salim)
* originRelationshipType = $bdp-dispense-origin-relationship#allogeneic
* matchStatus = $bdp-dispense-match-status#crossmatched
* performer.function = $bdp-dispense-performer-function#receipt
* performer.actor = Reference(Practitioner/example-practitioner)
* whenHandedOver = "2026-11-09T10:30:00+05:00"

Instance: example-bdp-dispense-request
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example UZ Core ServiceRequest - Blood Component Issue"
Description: "An order for a blood component to be issued for a patient."
* language = #uz
* status = #active
* intent = #order
* code.concept.text = "Qon komponentini quyish uchun berish"
* subject = Reference(Patient/example-salim)
* authoredOn = "2026-11-09T10:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)
