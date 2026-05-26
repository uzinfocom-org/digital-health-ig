Profile: UZCoreSpecimen
Parent: Specimen
Id: uz-core-specimen
Title: "UZ Core Specimen"
Description: "Uzbekistan Core profile for representing laboratory and other clinical specimens in Uzbekistan."
* ^experimental = true
* ^status = #active

* identifier MS 
* identifier ^short = "Specimen identifier used by the source system (e.g., LIS). Enables tracking, matching, and referencing the specimen across systems."
* accessionIdentifier MS 
* accessionIdentifier ^short = "Laboratory accession identifier assigned when the specimen is accepted/registered by the laboratory. Used to link the specimen to lab workflows and results."
* status MS
* status from SpecimenStatusVS (required)
* status ^short = "Current lifecycle status of the specimen (e.g., available, unavailable)."
* type MS
* type from SpecimenTypesVS (preferred) 
* type ^short = "Type of specimen (e.g., venous blood, urine, swab) used to interpret tests and processing requirements."
* subject MS
* subject only Reference(UZCorePatient or UZCoreLocation or Substance)
* subject ^short = "Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance."
* receivedTime MS
* receivedTime ^short = "Date/time the specimen was received by the laboratory/performing organization. Supports turnaround-time and traceability."
* parent MS
* parent only Reference(UZCoreSpecimen)
* parent ^short = "Reference to the parent specimen when this specimen is derived/aliquoted from another specimen."
* request MS
* request only Reference(ServiceRequest)
* request ^short = "Order/request that triggered the specimen collection. Enables linking specimen to ordered tests/services."
* combined MS
* combined from SpecimenCombinedVS (required)
* combined ^short = "Whether the container holds a pooled/combined specimen from multiple collection events or sources (if applicable)."
* role MS
* role from SpecimenRoleVS (preferred)
* role ^short = "Role of this container in the overall specimen . Supports lab handling and result association."
* collection MS
* collection.collector MS
* collection.collector only Reference(UZCorePractitioner)
* collection.collector ^short = "Practitioner who collected the specimen."
* collection.collected[x] MS
* collection.collected[x] ^short = "Date/time (or period) when the specimen was collected. Used for clinical interpretation and lab timing."
* collection.duration MS
* collection.duration ^short = "Duration of the collection process (e.g., timed urine collection). Important for correct result calculation/interpretation."
* collection.quantity MS
* collection.quantity ^short = "Amount/volume of specimen collected. Used for adequacy checks and processing requirements."
* collection.method MS
* collection.method from SpecimenCollectionMethodVS
* collection.bodySite MS
* collection.bodySite from $bodysite
* collection.bodySite ^short = "Anatomical site from which the specimen was collected."
* collection.fastingStatus[x] MS
* collection.fastingStatus[x] from RelevantClinicalInformationVS (required)
* collection.fastingStatus[x] ^short = "Patient fasting status at collection time (or relevant clinical information affecting interpretation)."


Instance: example-specimen-blood-cbc
InstanceOf: UZCoreSpecimen
Usage: #example
Description: "Example UZ Core Specimen: venous whole blood collected for a Complete Blood Count (CBC) order."
/* * identifier.system = "https://dhp.uz/fhir/identifier/specimen-id"
* identifier.value = "SPC-2025-000001"
* accessionIdentifier.system = "https://dhp.uz/fhir/identifier/lab-accession-id"
* accessionIdentifier.value = "ACC-2025-000045" */
* status = $specimen-status#available "Available"
* type = $v2-0487#BLD "Whole blood"
* subject = Reference(Patient/example-salim)
* receivedTime = "2025-11-04T08:30:00Z"
* request[0] = Reference(ServiceRequest/example-cbc-order)
* role[0] = $specimen-role#p "Patient"
* collection.collector = Reference(Practitioner/example-practitioner)
* collection.collectedDateTime = "2025-11-04T08:10:00Z"
* collection.duration = 5 'min'
* collection.quantity = 3 'mL' "mL"
* collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* note[0].text = "Venous blood collected into EDTA tube. No visible hemolysis."
