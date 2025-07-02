Profile: DHPLocation
Parent: Location
Id: dhp-location
Title: "Uzbekistan DHP Location"
Description: "Uzbekistan DHP Location profile, used to define locations of healthcare services"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-13"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways an organization can be categorized"
* identifier ^slicing.ordered = false
* identifier contains tax-id 0..1 MS and unit 0..1 MS

* insert TaxIdentifier
* identifier[unit]
  * ^short = "Unique identifier of the location unit (branch, ward, bed)"
  * system 1..1 MS
  * system = $location-unit
  * type 1..1 MS
  * type from IdentifierTypeVS (required)
  * use = #official
  * value 1..1 MS

* status and name and type and contact and address and position and managingOrganization and partOf and hoursOfOperation and endpoint MS
* operationalStatus ^short = "Ward bed status (will be used in future)"
* insert AddressRules
* insert MultilingualName(локации)
* status from LocationStatusVS (required)

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "code"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Type of the location"
* type.coding ^slicing.ordered = false

* type.coding contains type 0..1 MS
* type.coding[type]
  * system 1..1 MS
  // * system = "https://terminology.medcore.uz/CodeSystem/location-types-cs"
  * code 1..1 MS
  * code from LocationTypesVS (required)

Instance: example-location-1
InstanceOf: DHPLocation
Description: "Example of an organization location"
Usage: #example
* language = #uz
* identifier[tax-id]
  * value = "200935935"
* status = #active
* name = "Respublika onkologiya markazi"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "Республиканский онкологический центр"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #en
    * extension[content][+]
      * valueString = "Republican Oncology Center"
* type.coding[type] = $v3-RoleCode#ONCL
* address
  * type = #postal
  * line = "Farobi, 383"
  * city = "1726"
  * district = "1726"
  * country = "UZ"
* managingOrganization = Reference(Organization/example-organization)

Instance: example-location-2
InstanceOf: DHPLocation
Description: "Example of a branch location"
* language = #uz
* status = #active
* name = "1-sonli onkomammologiya bo'limi"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "Отделение онкомаммологии №1"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #en
    * extension[content][+]
      * valueString = "Oncomammology Department No. 1"
* identifier[unit]
  * type = LocationKindsCS#Branch "Bo'limi"
  * value = "1"
