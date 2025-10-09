Profile: UZCoreRelatedPerson
Parent: RelatedPerson
Id: uz-core-relatedperson
Title: "UZ Core RelatedPerson"
Description: "Uzbekistan Core RelatedPerson profile, used to represent persons related to the patient"
* ^experimental = true
* ^status = #active

* identifier 1..* MS
  * extension contains data-absent-reason named data-absent-reason 0..1 MS
    * ^short = "Это используется, если значение отсутствует: например, пациент не имеет паспорта, и нужно указать причину отсутствия." //test
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a related person can be identified"
* identifier ^slicing.ordered = false
* identifier contains
    nationalId 0..1 MS and
    passportLocal 0..1 MS and
    passportInternational 0..1 MS and
    birthCertificate 0..1 MS and
    driversLicense 0..1 MS and
    diplomaticPassport 0..1 MS and
    healthCard 0..1 MS and
    militaryId 0..1 MS

* identifier[nationalId]
  * system 1..1 MS
  * system = $nationaluniqueID
  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

* identifier[passportLocal] 
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

* identifier[passportInternational]
  * system 1..1 MS
  * system = $passport-international
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

* identifier[birthCertificate]
  * system 1..1 MS
  * system = $birthcertificate
  * type 1..1 MS
  * type = $identifier-type#BCT "Birth Certificate"
  * use = #official
  * value 1..1 MS

* identifier[driversLicense]
  * system 1..1 MS
  * system = $driverslicense
  * type 1..1 MS
  * type = $identifier-type#DL "Driver's license number"
  * use = #official
  * value 1..1 MS

* identifier[diplomaticPassport]
  * system 1..1 MS
  * system = $diplomaticpassport
  * type 1..1 MS
  * type = $identifier-type#DP "Diplomatic Passport"
  * use = #official
  * value 1..1 MS

* identifier[healthCard]
  * system 1..1 MS
  * system = $healthcard
  * type 1..1 MS
  * type = $identifier-type#HC "Health card number"
  * use = #official
  * value 1..1 MS

* identifier[militaryId]
  * system 1..1 MS
  * system = $militaryID
  * type 1..1 MS
  * type = $identifier-type#MI "Military ID number"
  * use = #official
  * value 1..1 MS
* patient 1..1 MS
* patient only Reference(UZCorePatient)
* relationship 0..* MS
* relationship from RelationshipTypeVS (required)
* telecom 0..* MS
  * system 0..1 MS 
  * system from ContactPointSystemVS (required)
  * use 0..1 MS 
  * use from TelecomUseVS (required)
* gender MS
  * extension contains GenderOtherUZ named gender-other-2 0..1 MS
* obeys uzcore-gender-other-2
* insert IntAndUzAddressRules
* insert HumanName
* active MS
* birthDate MS
* period MS 

Instance: example-related-person
InstanceOf: UZCoreRelatedPerson
Usage: #example
Title: "example-related-person"
Description: "Example of a related person"

* identifier[nationalId]
  * value = "12345678901234"
* identifier[passportLocal]
  * value = "AA1234567"
* identifier[passportInternational]
  * value = "IC9876543"
* identifier[birthCertificate]
  * value = "BC-2025-00001"
* identifier[driversLicense]
  * value = "DL-987654"
* identifier[diplomaticPassport]
  * value = "DP-123456"
* identifier[healthCard]
  * value = "HC-555-777"
* identifier[militaryId]
  * value = "MI-2025-001"

* patient = Reference(example-david)

* name[0]
  * use = #usual
  * text = "Зафаров Дамир Каримович"
  * family = "Зафаров"
  * given[0] = "Дамир"
  * suffix[0] = "Каримович"
  * period
    * start = "1998-02-16"

* relationship[0].coding[0] = $v3-ParticipationType#WIT "witness"

* telecom[0]
  * system = #phone
  * value = "+998901234567"
  * use = #mobile

* address
  * use = #home
  * type = #physical
  * text = "махалля Дилобод, Каторток кўчаси, 9-уй, 15-хонадон"
  * line[0] = "Каторток кўчаси"
  * city = "103-0104"  // Mahalla code
  * district = "1726294"  // District/city code (SOATO)
  * state = "1726"  // Region code (SOATO)
  * country = "182"  // Country code
  * period
    * start = "1999-06-04"

* gender = #male
