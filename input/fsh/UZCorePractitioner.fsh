Profile: UZCorePractitioner
Parent: Practitioner
Id: uz-core-practitioner
Title: "UZ Core Practitioner"
Description: "Uzbekistan Core Practitioner profile, used to define healthcare practitioners"
* ^experimental = true
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
* identifier contains nationalId 0..1 MS

* identifier[nationalId]
  * ^short = "PINFL of the practitioner"
  * system 1..1 MS
  * system = $nationaluniqueID
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
* obeys uzcore-gender-other-2
* birthDate MS
* deceasedDateTime and deceasedBoolean MS
* insert IntAndUzAddressRules
* photo MS
  * url and size MS
* qualification MS
  * identifier MS
    * ^short = "Certificate number"
    * ^comment = "For a specialist certificate issued by the Ministry of Health, use the system https://dhp.uz/fhir/core/sid/doc/uz/specialist-certificate and put the series followed by the number, without separators (e.g. CA008815), in value."
    * system and value MS
  * code and period and issuer MS
  * code from LicenseCertificateVS (required)
  * code.text MS
    * ^short = "Specialty, qualification category and medical role as free text"
    * ^comment = "Until these are coded, describe the certificate in plain text, e.g. 'Psixiatriya, oliy toifa, shifokor'. Add translations to other languages with the translation extension."
  * period
    * ^short = "Date of issue (start) and end of validity (end)"

Instance: example-practitioner
InstanceOf: UZCorePractitioner
Description: "Example of a practitioner"
Usage: #example
* language = #uz
* identifier[nationalId]
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
  * city = "22070033"
  * district = "1703217"
  * country = "182"
* photo
  * contentType = #image/png
  * data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAusB9Wl2n1cAAAAASUVORK5CYII="
  * size = 68
* qualification[0]
  * code = $qualification-codes#DIP
  * issuer = Reference(example-organization)
* qualification[+]
  * identifier
    * system = $specialist-certificate
    * value = "CA008815"
  * code = $qualification-codes#CER "Certificate"
  * code.text = "Psixiatriya, oliy toifa, shifokor"
  * code.text.extension[+].url = $translation-extension
  * code.text.extension[=].extension[0].url = "lang"
  * code.text.extension[=].extension[=].valueCode = #ru
  * code.text.extension[=].extension[+].url = "content"
  * code.text.extension[=].extension[=].valueString = "Психиатрия, высшая категория, врач"
  * code.text.extension[+].url = $translation-extension
  * code.text.extension[=].extension[0].url = "lang"
  * code.text.extension[=].extension[=].valueCode = #en
  * code.text.extension[=].extension[+].url = "content"
  * code.text.extension[=].extension[=].valueString = "Psychiatry, higher category, doctor"
  * period
    * start = "2024-05-05"
    * end = "2029-05-05"

Instance: example-practitioner-gender-other
InstanceOf: UZCorePractitioner
Description: "Example of a practitioner with a gender extension"
Usage: #example
* language = #uz
* identifier[nationalId]
  * value = "9876543211"
* active = true
* gender = #other
* gender.extension[gender-other].valueCoding = GenderOtherCS#regis0007.00005 "Jinsni erkakka o'zgartirdi"
