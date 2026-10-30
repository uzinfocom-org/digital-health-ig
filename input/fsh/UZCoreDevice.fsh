Profile: UZCoreDevice
Parent: Device
Id: uz-core-device
Title: "UZ Core Device"
Description: "Uzbekistan Core Device profile, used to record the identity, status and description of a medical device"
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

* location MS
* location only Reference(UZCoreLocation)

* note MS

Instance: example-ct-scanner
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - CT Scanner"
Description: "Example of a CT scanner"

* language = #uz

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "SOMATOM Edge"
* name.type = #registered-name
* name.display = true

* modelNumber = "SOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#dme

* type = $sct#268460000

* owner = Reference(example-organization)

Instance: example-ct-scanner-registered-name
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - CT Scanner, Registered Name"
Description: "Example of a CT scanner identified by its registered name"

* language = #uz

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "SOMATOM Edge"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* modelNumber = "SOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#single-use

* type = $sct#468312002

* owner = Reference(tashkent-diseases-hospital)


Instance: example-ct-scanner-user-friendly-name
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - CT Scanner, User-Friendly Name"
Description: "Example of a CT scanner identified by its user-friendly name"

* language = #uz

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* expirationDate = "2028-05-15"
* lotNumber = "2023-05"
* serialNumber = "SN-2023-001456"

* name.value = "SOMATOM Edge"
* name.type = $device-name-type#user-friendly-name "Foydalanuvchiga qulay nomi"
* name.display = true

* modelNumber = "SOMATOM Edge"
* partNumber = "PART-12345"

* category = $device-category#dme "Durable Medical Equipment"

* type = $sct#348649005

* owner = Reference(example-organization)
