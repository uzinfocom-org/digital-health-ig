Profile: UZCoreLocation
Parent: Location
Id: uz-core-location
Title: "UZ Core Location"
Description: "Uzbekistan Core Location profile, used to define locations of healthcare services"
* ^experimental = true
* ^status = #active
* ^date = "2025-03-13"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways an organization can be categorized"
* identifier ^slicing.ordered = false
* identifier contains taxId 0..1 MS and unit 0..1 MS

* insert TaxIdentifier
* identifier[unit]
  * ^short = "Unique identifier of the location unit (branch, ward, bed)"
  * system 1..1 MS
  * system = $location-unit
  * type 1..1 MS
  * type from LocationKindsVS (required)
  * use = #official
  * value 1..1 MS

* status and name and type and contact and address and position and managingOrganization and partOf and hoursOfOperation and endpoint MS
* operationalStatus ^short = "Ward bed status (will be used in future)"

* insert UzAddressRules
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
  // * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/location-types-cs"
  * code 1..1 MS
  * code from LocationTypesVS (required)

Instance: example-location-1
InstanceOf: UZCoreLocation
Description: "Example of an organization location"
Usage: #example
* language = #uz
* identifier[taxId]
  * value = "200935935"
* status = #active
* mode = #instance
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
  * city = "22070022"
  * district = "1735243"
  * country = "UZ"
* managingOrganization = Reference(Organization/example-organization)

Instance: example-location-2
InstanceOf: UZCoreLocation
Description: "Example of a branch location"
Usage: #example
* language = #uz
* status = #active
* mode = #instance
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

Instance: example-location
InstanceOf: UZCoreLocation
Usage: #example
Description: "Example of psychiatric hospital"
* language = #uz
* status = #active
* mode = #instance
* name = "Toshkent shahar 1-sonli shifoxona"
* address.text = "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45"
