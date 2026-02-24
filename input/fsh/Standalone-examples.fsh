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

Instance: specimen-example-blood
InstanceOf: Specimen
Usage: #example
Description: "Temporary Specimen instance for lab (based on drafted UZCoreSpecimen Excel structure)"
/* * identifier.system = "https://dhp.uz/fhir/identifier/specimen-id"
* identifier.value = "SPC-2025-000001"
* accessionIdentifier.system = "https://dhp.uz/fhir/identifier/lab-accession-id"
* accessionIdentifier.value = "ACC-2025-000045" */
* status = #available
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

Instance: example-cbc-order
InstanceOf: ServiceRequest
Usage: #example
Description: "Example ServiceRequest for CBC (Umumiy qon tahlili) order"
* status = #active
* intent = #order
* code = observation-lab-research-codes-cs#lab-A "CBC panel"
* subject = Reference(Patient/example-salim)
* requester = Reference(Practitioner/example-practitioner)
* authoredOn = "2025-11-04T08:00:00Z"
* specimen[0] = Reference(Specimen/specimen-example-blood)

Instance: example-transaction-bundle
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle"
Description: "Example transaction bundle that submits an episode of care, two encounters, and three observations in a single transaction"
* type = #transaction

* entry[0].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-111111111111"
* entry[=].resource = UZCoreEpisodeOfCare-Example
* entry[=].request.method = #POST
* entry[=].request.url = "EpisodeOfCare"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-222222222222"
* entry[=].resource = example-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-333333333333"
* entry[=].resource = blood-pressure-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-444444444444"
* entry[=].resource = body-weight-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "urn:uuid:a1b2c3d4-5678-90ab-cdef-555555555555"
* entry[=].resource = body-temperature-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: example-transaction-response
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Response"
Description: "Example of a successful transaction response where all resources were created"
* type = #transaction-response

* entry[0].response.status = "201 Created"
* entry[=].response.location = "EpisodeOfCare/UZCoreEpisodeOfCare-Example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Encounter/example-encounter/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/blood-pressure-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/body-weight-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

* entry[+].response.status = "201 Created"
* entry[=].response.location = "Observation/body-temperature-example/_history/1"
* entry[=].response.lastModified = "2026-02-24T10:00:00Z"

Instance: example-transaction-response-error
InstanceOf: OperationOutcome
Usage: #example
Title: "Example Transaction Error"
Description: "Example OperationOutcome returned when a transaction fails due to a validation error"
* issue[0].severity = #error
* issue[=].code = #required
* issue[=].diagnostics = "Observation.status: minimum required = 1, but only found 0 (from https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation)"
* issue[=].expression = "Bundle.entry[2].resource.ofType(Observation)"
