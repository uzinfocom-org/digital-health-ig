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
* availabilityStatus from DeviceAvailabilityStatusVS (extensible)

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
* category from DeviceCategoryVS (preferred)

* type MS
* type from DeviceTypeVS (preferred)

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
Description: "Example of a CT scanner installed at a hospital"

* language = #uz

* displayName = "KT skaner"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* serialNumber = "SN-2023-001456"

* name.value = "SOMATOM Edge"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* modelNumber = "SOMATOM Edge"
* partNumber = "11061630"

* category = $device-category#dme

* type = $sct#54953005

* owner = Reference(tashkent-diseases-hospital)
* location = Reference(example-location)
* note.text = "Radiologiya bo'limi, 2-qavat"

Instance: example-copper-iud
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - Copper IUD"
Description: "Example of a single copper intrauterine contraceptive device tracked by its batch"

* language = #uz

* displayName = "Mis saqlovchi bachadon ichi vositasi"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Pregna International"
* manufactureDate = "2025-04-10"
* expirationDate = "2030-03-31"
* lotNumber = "CU-2025-0412"

* name.value = "Copper T 380A"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* category[0] = $device-category#implantable
* category[1] = $device-category#single-use

* type = $sct#268460000

* owner = Reference(xonobod-medical-association)

Instance: example-contraceptive-implant
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - Contraceptive Implant"
Description: "Example of a drug-eluting subdermal contraceptive implant tracked by its batch"

* language = #uz

* displayName = "Kontratseptiv implant"
* status = #active
* availabilityStatus = $device-availability-status#available
* manufacturer = "Bayer AG"
* manufactureDate = "2025-01-20"
* expirationDate = "2029-12-31"
* lotNumber = "LNG-2025-0117"

* name.value = "Jadelle"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* category[0] = $device-category#implantable
* category[1] = $device-category#single-use

* type = $sct#468312002

* owner = Reference(xonobod-medical-association)
