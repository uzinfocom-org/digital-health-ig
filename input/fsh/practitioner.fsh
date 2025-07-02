Profile: DHPPractitioner
Parent: Practitioner
Id: dhp-practitioner
Title: "Uzbekistan DHP Practitioner"
Description: "Uzbekistan DHP Practitioner profile, used to define healthcare practitioners"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-05"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a practitioner can be identified"
* identifier ^slicing.ordered = false
* identifier contains national-id 0..1 MS

* identifier[national-id]
  * ^short = "Персональный идентификационный номер физического лица"
  * system 1..1 MS
  * system = $organization-argoz-id-system
  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

* active MS
* name MS
  * use and text and family and given and suffix and period MS
  * use from NameUseVS (required)
* telecom MS
  * system and value and use and rank and period MS
  * system from ContactPointSystemVS (required)
* gender MS
  * extension contains GenderOtherUZ named gender-other 0..1 MS
* obeys gender-other-2
* birthDate MS
* deceasedDateTime and deceasedBoolean MS
* insert AddressRules
* photo MS
  * url and size MS
* qualification MS
  * code and period and issuer MS
  * code from LicenseCertificateVS (required)

Instance: example-practitioner
InstanceOf: DHPPractitioner
Description: "Example of a practitioner"
Usage: #example
* language = #uz
* identifier[national-id]
  * value = "9876543210"
* active = true
* name
  * use = #official
  * text = "Test Test Test"
  * family = "Test"
  * given = "Test"
  * suffix = "Test"
* telecom
  * system = #phone
  * value = "975555555"
  * use = #mobile
* gender = #female
* birthDate = "1985-05-06"
* deceasedBoolean = true
* address
  * use = #temp
  * type = #physical
  * line = "mahallasi Dilobod, Katortol ko'chasi, 9-uy, 15-xonadon"
  * city = "1726"
  * district = "1726"
  * country = "UZ"
* photo
  * url = "http://example.org/photos/practitioner.jpg"
  * size = 1024
* qualification
  * code = $qualification-codes#DIP "Diploma"
  * issuer = Reference(example-organization)

Instance: example-practitioner-gender-other
InstanceOf: DHPPractitioner
Description: "Example of a practitioner with a gender extension"
Usage: #example
* language = #uz
* identifier[national-id]
  * value = "9876543211"
* active = true
* gender = #other
* gender.extension[gender-other].valueCoding = GenderOtherCS#regis0007.00005 "Jinsni erkakka o'zgartirdi"
