ValueSet: RequestResourceTypesVS
Id: request-resource-types-vs
Title: "Request resource type"
Description: "Request resource types"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-resource-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FhirTypesCS)

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
