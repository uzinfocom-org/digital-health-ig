Profile: UZCoreDevice
Parent: Device
Id: uz-core-device
Title: "UZ Core Device"
Description: "Profile of the Device resource for the Uzbekistan Core Implementation Guide, capturing key identifying, status, and descriptive information about a device."
* ^experimental = true

* identifier MS
* identifier ^short = "Unique identifiers assigned by manufacturer or organization."

* displayName MS
* displayName ^short = "Primary human-readable name for the device."

* status MS
* status from DeviceStatusVS (required)
* status ^short = "active | inactive | entered-in-error"

* availabilityStatus MS
* availabilityStatus from DeviceAvailabilityStatusVS (required)
* availabilityStatus ^short = "lost | damaged | destroyed | available"

* manufacturer MS
* manufacturer ^short = "Name or Organization reference of the device manufacturer"

* manufactureDate MS
* manufactureDate ^short = "Date and time when device was manufactured"

* expirationDate MS
* expirationDate ^short = "Date after which device is no longer approved for use."

* lotNumber MS
* lotNumber ^short = "Manufacturer's lot or batch number for this device."

* serialNumber MS
* serialNumber ^short = "Unique serial number assigned by manufacturer to this device."

* name MS
* name.value MS
* name.value ^short = "The actual text string of the device name."

* name.type MS
* name.type from DeviceNameTypeVS (required)
* name.type ^short = "registered-name | user-friendly-name | patient-reported-name"

* name.display MS
* name.display ^short = "True if this is the primary display name for the device."

* modelNumber MS
* modelNumber ^short = "Manufacturer's model number or version designation."

* partNumber MS
* partNumber ^short = "Manufacturer's part or catalog number for ordering."

* category MS
* category from DeviceCategoryVS (example)

* type MS
* type from DeviceTypeVS (example)

* owner MS
* owner only Reference(UZCoreOrganization)
* owner ^short = "Organization responsible for device maintenance and operations."

* contact MS
* contact only ContactPoint
* contact ^short = "Contact information for device support and maintenance"

* location MS
* location only Reference(UZCoreLocation)
* location ^short = "Current location where device is deployed or stored."

* note ^short = "Additional notes about device"

Instance: uz-core-device-example-001
InstanceOf: UZCoreDevice
Usage: #example
Title: "UZ Core Device Example"
Description: "Example instance of a UZCoreDevice - CT Scanner."

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "STOMATOM Edge"
* name.type = #registered-name
* name.display = true

* modelNumber = "STOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#dme

* type = $sct#268460000

* owner = Reference(Organization/example-organization)

Instance: uz-core-device-example-002
InstanceOf: UZCoreDevice
Usage: #example
Title: "UZ Core Device Example"
Description: "Example instance of a UZCoreDevice - CT Scanner."

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "STOMATOM Edge"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* modelNumber = "STOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#single-use

* type = $sct#468312002

* owner = Reference(tashkent-diseases-hospital)


Instance: uz-core-device-example-003
InstanceOf: UZCoreDevice
Usage: #example
Title: "UZ Core Device Example"
Description: "Example instance of a UZCoreDevice - CT Scanner."

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "STOMATOM Edge"
* name.type = $device-name-type#user-friendly-name "Foydalanuvchiga qulay nomi"
* name.display = true

* modelNumber = "STOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#dme "Durable Medical Equipment"

* type = $sct#348649005

* owner = Reference(example-organization)