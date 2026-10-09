Profile: UZCoreDevice
Parent: Device
Id: uz-core-device
Title: "UZ Core Device"
Description: "Profile of the Device resource for the Uzbekistan Core Implementation Guide, capturing key identifying, status, and descriptive information about a device."
* ^experimental = true

* identifier MS

* displayName MS

* status MS
* status from DeviceStatusVS (required)

* availabilityStatus MS
* availabilityStatus from DeviceAvailabilityStatusVS (required)

* manufacturer MS

* manufactureDate MS

* expirationDate MS

* lotNumber MS

* serialNumber MS
* name MS
* name.value MS

* name.type MS
* name.type from DeviceNameTypeVS (required)

* name.display MS

* modelNumber MS

* partNumber MS

* category MS
* category from DeviceCategoryVS (example)

* type MS
* type from DeviceTypeVS (example)

* owner MS
* owner only Reference(UZCoreOrganization)

* contact MS
* contact only ContactPoint

* location MS
* location only Reference(UZCoreLocation)

* note MS

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