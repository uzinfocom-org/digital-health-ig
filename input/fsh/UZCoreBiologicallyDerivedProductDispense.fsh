Profile: UZCoreBiologicallyDerivedProductDispense
Parent: BiologicallyDerivedProductDispense
Id: uz-core-biologicallyderivedproductdispense
Title: "UZ Core BiologicallyDerivedProductDispense"
Description: "Uzbekistan Core BiologicallyDerivedProductDispense profile, used to record the issue of a biologically derived product to a patient's clinical care team."
* ^status = #active
* ^experimental = true
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dispense 0..1 MS
* identifier[dispense].system 1..1 MS
* identifier[dispense].system = $bdp-dispense-number
* identifier[dispense].value 1..1 MS
* identifier[dispense] ^short = "Dispense number assigned by the issuing system, such as the blood bank"
* identifier[dispense] ^comment = "A donation number or product unit number does not identify the dispense."
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
* matchStatus ^comment = "This element says which kind of matching was performed. The ABO and Rh compatibility results themselves are recorded in an Observation."
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
* quantity ^comment = "A blood component is normally issued as a whole unit, so this is the volume of the unit."
* preparedDate ^short = "When the product was selected or matched for this dispense"
* preparedDate ^comment = "This is not the collection date of the source product."
* whenHandedOver MS
* whenHandedOver ^short = "When the product was actually dispatched or handed over"
* whenHandedOver ^comment = "Use the time the record was saved only if it is the actual handover time."
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
Description: "A blood component issued for a patient, with the dispense number, the order, the practitioner who released it and the actual handover time."
* language = #uz
* identifier[dispense].value = "ISS-2026-0002"
* status = #issued
* basedOn = Reference(example-bdp-dispense-request)
* product = Reference(example-blood-component-product)
* patient = Reference(Patient/example-salim)
* performer.function = $bdp-dispense-performer-function#release
* performer.actor = Reference(Practitioner/example-practitioner)
* location = Reference(Location/example-location-1)
* destination = Reference(Location/example-location-2)
* quantity = 263 'mL' "mL"
* preparedDate = "2026-09-20T10:15:00+05:00"
* whenHandedOver = "2026-09-20T10:30:00+05:00"

Instance: example-bdp-dispense-returned
InstanceOf: UZCoreBiologicallyDerivedProductDispense
Usage: #example
Title: "Example UZ Core BiologicallyDerivedProductDispense - Returned"
Description: "A blood component issued for a patient two days before the issued example and returned unused to the blood bank, which is why it could be issued again. A stopped transfusion alone does not mean the product was returned."
* language = #uz
* identifier[dispense].value = "ISS-2026-0001"
* status = #returned
* basedOn = Reference(example-bdp-dispense-request)
* product = Reference(example-blood-component-product)
* patient = Reference(Patient/example-salim)
* originRelationshipType = $bdp-dispense-origin-relationship#allogeneic
* matchStatus = $bdp-dispense-match-status#crossmatched
* performer.function = $bdp-dispense-performer-function#receipt
* performer.actor = Reference(Practitioner/example-practitioner)
* whenHandedOver = "2026-09-18T14:00:00+05:00"

Instance: example-bdp-dispense-request
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example UZ Core ServiceRequest - Blood Component Issue"
Description: "An order for a blood component to be issued for a patient."
* language = #uz
* status = #active
* intent = #order
* code = $sct#71493000 "Transfusion of packed red blood cells"
* subject = Reference(Patient/example-salim)
* authoredOn = "2026-09-18T13:30:00+05:00"
* requester = Reference(Practitioner/example-practitioner)
