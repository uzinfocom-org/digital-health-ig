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
* device only CodeableReference(UZCoreDevice or DeviceDefinition)

* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or UZCoreDiagnosticReport)

* bodySite MS
* bodySite from BodySiteVS (preferred)

* note MS

Instance: example-deviceusage-active
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "Example UZ Core DeviceUsage - Wheelchair in Use"
Description: "Example of a device the patient is still using: a wheelchair used at home since the patient's Group I disability was established"

* status = #active
* patient = Reference(example-salim)
* device.concept = $sct#58938008 "Wheelchair"
* category = $medicationrequest-admin-location#community
* timingPeriod.start = "2020-04-02"
* dateAsserted = "2026-10-12T10:00:00+05:00"
* usageStatus = $deviceusage-status#active
* informationSource = Reference(example-practitioner)
* reason.reference = Reference(example-disability)
* note.text = "Manual wheelchair, used daily at home and outdoors."

Instance: example-deviceusage-period
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "Example UZ Core DeviceUsage - Implanted Port, Removed"
Description: "Example of a device used over a period that has ended: an implanted venous access port placed for chemotherapy and removed when treatment finished"

* status = #completed
* patient = Reference(example-emma)
* device.concept = $sct#398013009 "Implantable venous access port"
* category = $medicationrequest-admin-location#outpatient
* timingPeriod.start = "2025-09-02"
* timingPeriod.end = "2026-07-14"
* dateAsserted = "2026-07-14T11:20:00+05:00"
* usageStatus = $deviceusage-status#completed
* informationSource = Reference(example-practitioner)
* reason.reference = Reference(example-cancer)
* bodySite.concept = $sct#63698005 "Anterior chest wall structure"
* note.text = "Port placed for chemotherapy and removed after the last cycle."

Instance: example-deviceusage-iud
InstanceOf: UZCoreDeviceUsage
Usage: #example
Title: "Example UZ Core DeviceUsage - Copper IUD"
Description: "Example of a device usage that points to the UZ Core Device record of the unit used: a copper intrauterine device inserted at a polyclinic"

* status = #active
* patient = Reference(example-nodira)
* device.reference = Reference(example-copper-iud)
* category = $medicationrequest-admin-location#outpatient
* timingPeriod.start = "2026-02-18"
* dateAsserted = "2026-02-18T11:30:00+05:00"
* usageStatus = $deviceusage-status#active
* informationSource = Reference(example-practitioner)
* reason.concept = $sct#13197004 "Uses contraception"
* bodySite.concept = $sct#52393002 "Endometrial cavity structure"
* note.text = "Copper T 380A inserted at the polyclinic; follow-up visit in six weeks."
