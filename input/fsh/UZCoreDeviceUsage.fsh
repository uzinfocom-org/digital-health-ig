Profile: UZCoreDeviceUsage
Parent: DeviceUsage
Id: uz-core-deviceusage
Title: "UZ Core DeviceUsage"
Description: "Uzbekistan Core DeviceUsage profile, used to record that a patient is using, has used or will use a device"
* ^experimental = true

* identifier MS

* basedOn MS
* basedOn only Reference(UZCoreServiceRequest)

* status MS
* status from DeviceUsageStatusVS (required)

* category MS
* category from DeviceUsageCategoryVS (preferred)

* patient MS
* patient only Reference(UZCorePatient)

* timing[x] MS

* dateAsserted MS

* usageStatus MS
* usageStatus from DeviceUsageStatusVS (required)

* usageReason MS

* adherence MS
  * code from DeviceUsageAdherenceCodeVS (preferred)
  * reason from DeviceUsageAdherenceReasonVS (preferred)

* informationSource MS
* informationSource only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or UZCoreOrganization)

* device MS

* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport)

* bodySite MS
* bodySite from BodySiteVS (preferred)

* note MS

Instance: example-deviceusage-active
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "Example UZ Core DeviceUsage - Active Use"
Description: "Example of a device the patient is currently using"

* status = #active
* patient = Reference(example-salim)
* device.concept = $sct#268460000 "Intrauterine contraceptive device"
* basedOn = Reference(UZCoreServiceRequest-Example01)
* dateAsserted = "2024-09-10T10:00:00Z"

* timingDateTime = "2024-09-01"
* category = $sct#49062001 "Device"

* informationSource = Reference(example-practitioner)
* note.text = "Device usage for patient care"

Instance: example-deviceusage-period
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "Example UZ Core DeviceUsage - Usage Period"
Description: "Example of a device used over a recorded period"

* status = #active
* patient = Reference(example-salim)
* device.concept = $sct#268460000 "Intrauterine contraceptive device"
* basedOn = Reference(UZCoreServiceRequest-Example01)
* dateAsserted = "2024-09-10T10:00:00Z"

* timingPeriod.start = "2024-01-01"
* timingPeriod.end = "2024-12-31"

* category = $sct#49062001 "Device"

* informationSource = Reference(example-practitioner)
* note.text = "Regular device usage period"
