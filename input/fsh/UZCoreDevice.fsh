Profile: UZCoreDevice
Parent: Device
Id: uz-core-device
Title: "UZ Core Device"
Description: "Uzbekistan Core Device profile, used to record the identity, status and description of a medical device"
* ^experimental = true

* identifier MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identifiers for device (national registry)"
* identifier ^slicing.ordered = false
* identifier contains registrationCertificateID 0..1 MS

* identifier[registrationCertificateID]
  * ^short = "Registration certificate number of the device"
  * system 1..1 MS
  * system = $registrationCertificateID
  * use = #official
  * value 1..1 MS
  * period MS
  * period ^short = "Registration certificate issue date (start) and expiry date (end); no end when the certificate is valid indefinitely"

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
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^slicing.description = "Registered device model in the Pharmaceutical Committee registry; other type codings, such as SNOMED CT, are allowed"
* type ^slicing.ordered = false
* type contains uzpharmDeviceItemID 0..1 MS and
    uzpharmDeviceID 0..1 MS

* type[uzpharmDeviceItemID]
  * ^short = "Pharmaceutical Committee registry device_item_id of the registered device variant"
  * coding 1..1 MS
  * coding.system 1..1 MS
  * coding.system = $uzpharmDeviceItemID
  * coding.code 1..1 MS

* type[uzpharmDeviceID]
  * ^short = "Pharmaceutical Committee registry device_id of the registered device"
  * coding 1..1 MS
  * coding.system 1..1 MS
  * coding.system = $uzpharmDeviceID
  * coding.code 1..1 MS

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
* availabilityStatus = $device-availability-status#available "Available"
* manufacturer = "Siemens Healthineers"
* manufactureDate = "2023-05-15"
* serialNumber = "SN-2023-001456"
* identifier[registrationCertificateID].value = "TB/M 00024/09/15"
* identifier[registrationCertificateID].period.start = "2015-09-24"
* identifier[registrationCertificateID].period.end = "2030-09-24"

* name.value = "SOMATOM Edge"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* modelNumber = "SOMATOM Edge"
* partNumber = "11061630"

* category = $device-category#dme "Durable Medical Equipment"

* type[0] = $sct#54953005 "Computed tomography scanner"
* type[uzpharmDeviceItemID].coding = $uzpharmDeviceItemID#10452
* type[uzpharmDeviceID].coding = $uzpharmDeviceID#3871

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
* availabilityStatus = $device-availability-status#available "Available"
* manufacturer = "Pregna International"
* manufactureDate = "2025-04-10"
* expirationDate = "2030-03-31"
* lotNumber = "CU-2025-0412"

* name.value = "Copper T 380A"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* category[0] = $device-category#implantable "Implantable"
* category[1] = $device-category#single-use "Single Use"

* type = $sct#268460000 "Bachadon ichi kontratseptiv vosita"

* owner = Reference(xonobod-medical-association)

Instance: example-contraceptive-implant
InstanceOf: UZCoreDevice
Usage: #example
Title: "Example UZ Core Device - Contraceptive Implant"
Description: "Example of a drug-eluting subdermal contraceptive implant tracked by its batch"

* language = #uz

* displayName = "Kontratseptiv implant"
* status = #active
* availabilityStatus = $device-availability-status#available "Available"
* manufacturer = "Bayer AG"
* manufactureDate = "2025-01-20"
* expirationDate = "2029-12-31"
* lotNumber = "LNG-2025-0117"

* name.value = "Jadelle"
* name.type = $device-name-type#registered-name "Ro'yxatdan o'tgan nomi"
* name.display = true

* category[0] = $device-category#implantable "Implantable"
* category[1] = $device-category#single-use "Single Use"

* type = $sct#468312002 "Dori moddasi ajratuvchi kontratseptiv implant"

* owner = Reference(xonobod-medical-association)
