ValueSet: RequestResourceTypesVS
Id: request-resource-types-vs
Title: "Request resource types"
Description: "All request resource types allowed by FHIR R5 ActivityDefinition.kind, with Uzbek and Russian designations."

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-resource-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestResourceTypesCS)

// Match every code in FHIR R5's request-resource-types ValueSet.
// Include the original system directly so expansion applies the required translation supplement.
* include $resource-types#Appointment
* include $resource-types#AppointmentResponse
* include $resource-types#CarePlan
* include $resource-types#Claim
* include $resource-types#CommunicationRequest
* include $resource-types#CoverageEligibilityRequest
* include $resource-types#DeviceRequest
* include $resource-types#EnrollmentRequest
* include $resource-types#ImmunizationRecommendation
* include $resource-types#MedicationRequest
* include $resource-types#NutritionOrder
* include $resource-types#RequestOrchestration
* include $resource-types#ServiceRequest
* include $resource-types#SupplyRequest
* include $resource-types#Task
* include $resource-types#Transport
* include $resource-types#VisionPrescription
