ValueSet: DeviceProductTypeVS
Id: device-product-type-vs
Title: "Device product type"
Description: "Medical device product types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-product-type-vs"
* ^experimental = true
* ^language = #uz
* include codes from system device-product-type-cs

ValueSet: DeviceContraceptiveTypeVS
Id: device-contraceptive-type-vs
Title: "Contraceptive device product type"
Description: "Product types of contraceptive medical devices from the Pharmaceutical Committee medical device registry"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-contraceptive-type-vs"
* ^experimental = true
* ^language = #uz
* device-product-type-cs#7592
* device-product-type-cs#7593
* device-product-type-cs#7600
* device-product-type-cs#7601
* device-product-type-cs#7610
* device-product-type-cs#7611
* device-product-type-cs#7621
* device-product-type-cs#7647
