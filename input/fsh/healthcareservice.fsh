Profile: DHPHealthcareService
Parent: HealthcareService
Id: dhp-healthcareservice
Title: "Uzbekistan DHP HealthcareService"
Description: "Uzbekistan DHP HealthcareService profile, used to define healthcare services available"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-11"
* ^publisher = "Uzinfocom"

* active and category and type and name MS
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Category of healthcare service"
* category.coding ^slicing.ordered = false

* category.coding contains
    dhpCategory 0..1 MS

* category.coding[dhpCategory]
  * system 1..1 MS
  * system = Canonical(CancerTypesCS)
  * code 1..1 MS
  * code from ServiceCategoriesVS (required)

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Type of healthcare service"
* type.coding ^slicing.ordered = false

* type.coding contains
    dhpService 0..1 MS

* type.coding[dhpService]
  * system 1..1 MS
  * system = Canonical(CancerTypesCS)
  * code 1..1 MS
  * code from ServiceNamesVS (required)

Instance: example-healthcareservice
InstanceOf: DHPHealthcareService
Description: "Example of a healthcare service"
Usage: #example
* active = true
* category.coding[dhpCategory]
  * code = #cancr0013.00000
* type.coding[dhpService]
  * code = #cancr0013.00001
* language = #uz
* name = "IHC-ga xos"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "ИГХ специфические"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #en
    * extension[content][+]
      * valueString = "IHC specific"
