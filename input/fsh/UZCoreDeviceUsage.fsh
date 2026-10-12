Profile: UZCoreDeviceUsage
Parent: DeviceUsage
Id: uz-core-device-usage
Title: "UZ Core Device Usage"
Description: "Profile of the DeviceUsage resource for the Uzbekistan Core Implementation Guide, capturing key information about the use of a device by a patient."
* ^experimental = true

* identifier MS

* basedOn MS
* basedOn only Reference(UZCoreServiceRequest)

* status MS
* status from DeviceUsageStatusVS (required)

* category MS
// * category from DeviceUsageCategoryVS (example)

* patient MS
* patient only Reference(UZCorePatient)

* timing[x] MS

* timing[x] only Timing or Period or dateTime

* dateAsserted MS

* usageStatus MS
* usageStatus from DeviceUsageStatusVS (required)

* usageReason MS
// * usageReason from DeviceUsageReasonVS (example)

* informationSource MS
* informationSource only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or UZCoreOrganization)

* device MS
* device only CodeableReference(Device or DeviceDefinition)

* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport)

* bodySite MS
* bodySite from BodySiteVS (example)

* note MS

Instance: uz-core-device-usage-example-001
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "UZ Core Device Usage Example 001"
Description: "Example instance of a UZCoreDeviceUsage - Active device usage"

* status = #active
* usageStatus = #intended
* patient = Reference(Patient/example-salim)
* device = Reference(Device/example-device)
* basedOn = Reference(ServiceRequest/1)
* dateAsserted = "2024-09-10T10:00:00Z"

* timingDateTime = "2024-09-01"
* category = $sct#49062001

* informationSource = Reference(Practitioner/1)
* note.text = "Device usage for patient care"


Instance: uz-core-device-usage-example-002
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "UZ Core Device Usage Example 002"
Description: "Example instance of a UZCoreDeviceUsage - Device usage with period"

* status = #active
* usageStatus = #intended
* patient = Reference(Patient/example-salim)
* device = Reference(Device/example-device)
* basedOn = Reference(ServiceRequest/1)
* dateAsserted = "2024-09-10T10:00:00Z"

* timingPeriod.start = "2024-01-01"
* timingPeriod.end = "2024-12-31"

* category = $sct#49062001

* informationSource = Reference(Practitioner/1)
* note.text = "Regular device usage period"
