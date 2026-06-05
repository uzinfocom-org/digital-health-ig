Profile: UZCorePatient
Parent: Patient
Id: uz-core-patient
Title: "UZ Core Patient"
Description: "Uzbekistan Core Patient profile, used to represent patients administrative information"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-11"
* ^publisher = "Uzinfocom"

* identifier 1..* MS
  * value.extension contains data-absent-reason named data-absent-reason 0..1 MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a patient can be identified"
* identifier ^slicing.ordered = false
* identifier contains nationalId 0..1 MS and
    passportLocal 0..1 MS and
    passportInternational 0..1 MS and
    passportForeign 0..1 MS and
    pensionNumber 0..1 MS and
    birthCertificate 0..1 MS and
    driversLicense 0..1 MS and
    driversLicenseForeign 0..1 MS and
    diplomaticPassport 0..1 MS and
    healthCardId 0..1 MS and
    militaryId 0..1 MS and
    // socialSecurity 0..1 MS and
    penitentiaryInstitution 0..1 MS and
    medicalRecordTemp 0..* MS and
    unknownPatient 0..1 MS

* identifier[passportLocal]
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN
  * use = #official
  * value 1..1 MS

* identifier[passportInternational]
  * system 1..1 MS
  * system = $passport-international
  * type 1..1 MS
  * type = $identifier-type#PPN
  * use = #official
  * value 1..1 MS

* identifier[passportForeign]
  * ^short = "Foreign passport number"
  * ^definition = "Passport identifier for foreign nationals. System URI pattern: https://dhp.uz/fhir/core/sid/pid/{country-code}/ppn where {country-code} is the ISO 3166-1 two-letter country code (e.g., 'ee' for Estonia, 'ru' for Russia)."
  * system 1..1 MS
  * system from ForeignPassportSystemVS (required)
  * type 1..1 MS
  * type = $identifier-type#PPN
  * use = #official
  * value 1..1 MS

* identifier[nationalId]
  * ^short = "PINFL of the patient"
  * system 1..1 MS
  * system = $nationaluniqueID
  * type 1..1 MS
  * type = $identifier-type#NI
  * use = #official
  * value 1..1 MS

* identifier[birthCertificate]
  * system 1..1 MS
  * system = $birthcertificate
  * type 1..1 MS
  * type = $identifier-type#BCT
  * use = #official
  * value 1..1 MS

* identifier[driversLicense]
  * system 1..1 MS
  * system = $driverslicense
  * type 1..1 MS
  * type = $identifier-type#DL
  * use = #official
  * value 1..1 MS

* identifier[driversLicenseForeign]
  * ^short = "Foreign driver's license number"
  * ^definition = "Driver's license identifier for foreign nationals. System URI pattern: https://dhp.uz/fhir/core/sid/pid/{country-code}/dl where {country-code} is the ISO 3166-1 two-letter country code (e.g., 'ee' for Estonia, 'ru' for Russia)."
  * system 1..1 MS
  * system from ForeignDriversLicenseSystemVS (required)
  * type 1..1 MS
  * type = $identifier-type#DL
  * use = #official
  * value 1..1 MS

* identifier[diplomaticPassport]
  * system 1..1 MS
  * system = $diplomaticpassport
  * type 1..1 MS
  * type = $identifier-type#DP
  * use = #official
  * value 1..1 MS

* identifier[healthCardId]
  * system 1..1 MS
  * system = $healthcard
  * type 1..1 MS
  * type = $identifier-type#HC
  * use = #official
  * value 1..1 MS

* identifier[militaryId]
  * system 1..1 MS
  * system = $militaryID
  * type 1..1 MS
  * type = $identifier-type#MI
  * use = #official
  * value 1..1 MS

* identifier[penitentiaryInstitution]
  * system 1..1 MS
  * system = $penitentiaryinstitution
  * type 1..1 MS
  * type = $identifier-type#PCN
  * use = #official
  * value 1..1 MS

* identifier[medicalRecordTemp]
  * ^short = "Temporary medical record number for unidentified patients (preferred)"
  * ^definition = "Organization-specific temporary medical record identifier for unidentified patients (e.g., unconscious patients who cannot provide identification). Use this identifier when the receiving healthcare organization is known. Each organization uses its tax ID (Soliq) to create a unique namespace. System URI pattern: https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt where {soliq-id} is replaced with the organization's tax identification number. This is the preferred approach over unknownPatient because it provides traceability to the issuing organization."
  * system 1..1 MS
  * system = $temp-medical-record-pattern
  * type 1..1 MS
  * type = $identifier-type#MRT
  * use = #temp
  * value 1..1 MS

* identifier[unknownPatient]
  * ^short = "Unknown patient code (fallback, prefer medicalRecordTemp)"
  * ^definition = "Identifier for unidentified patients (e.g., unconscious patients who cannot provide identification) when the receiving healthcare organization's tax ID is not available. This is a fallback; prefer using organization-scoped temporary medical record numbers (medicalRecordTemp) whenever the organization is known, as they provide better traceability."
  * system 1..1 MS
  * system = $unknownpatient
  * type 1..1 MS
  * type = $identifier-type#MR
  * use = #temp
  * value 1..1 MS

* identifier[pensionNumber]
  * ^short = "Used to identify a patient's pension status and pension type."
  * ^definition = "Naming system defining the pension number identifier issued by the Ministry of Finance of the Republic of Uzbekistan (Pension Fund), as referenced by the national identifier system and integrated with the e-government platform (iskm.egov.uz/minfin/services/pension/pinnp). The pension number associated with different pension types, including old-age pension, disability pension, survivor's pension, and other pension categories."
  * system 1..1 MS
  * system = $pension-number
  * type 1..1 MS
  * type = $identifier-type#PEN
  * use = #official
  * value 1..1 MS

* extension contains PatientNationality named nationality 0..1 MS and
    patient-citizenship named citizenship 0..1 MS and
    ManagingOrganizationAttachment named managingOrganizationAttachment 0..1 MS
* extension[nationality].extension[code].valueCodeableConcept from NationalityVS (required)
* extension[citizenship].extension[code].valueCodeableConcept from ISO3166_2 (required)
* gender MS
  * extension contains GenderOtherUZ named gender-other 0..1 MS
* obeys uzcore-gender-other-2
* insert IntAndUzAddressRules
* maritalStatus from MaritalStatusVS (required)
* insert HumanName
* active MS
* birthDate MS

Instance: example-salim
InstanceOf: UZCorePatient
Description: "Example of a patient named Salim"
Usage: #example
* language = #ru
* identifier[nationalId]
  * value = "30211975910033"
* identifier[passportLocal]
  * value = "AC1234567"
* identifier[passportInternational]
  * value = "AA1234567"
* identifier[birthCertificate]
  * value = "I-МЯ №123456"
* identifier[driversLicense]
  * value = "AAA123456"
* identifier[diplomaticPassport]
  * value = "D1234567"
* identifier[healthCardId]
  * value = "01234567890123"
* identifier[militaryId]
  * value = "ВБ1234567"
* identifier[penitentiaryInstitution]
  * value = "УИН123456789012"
* active = true
* name
  * use = #usual
  * text = "Усманов Салим Салиевич"
  * family = "Усманов"
  * given = "Салим"
  * suffix = "Салиевич"
* telecom
  * system = #phone
  * use = #mobile
  * rank = 1
  * period.start = "2021-05-13"
* birthDate = "1994-01-27"
* address
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "182"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male
* contact
  * relationship = $v2-0131#N "Next-of-Kin"
  * name.text = "Ваисов Раис"
  * gender = #male
* maritalStatus = $v3-MaritalStatus#W "Вдовец, вдова"
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#23 "КАРЕЛ/КАРЕЛКА"
* extension[managingOrganizationAttachment].valueDate = "2024-03-15"

Instance: example-david
InstanceOf: UZCorePatient
Description: "Example of a patient named David"
Usage: #example
* language = #ru
* identifier[driversLicense]
  * value = "AG1141110"
* active = false
* name
  * use = #anonymous
  * text = "Давыдов Давид"
* telecom
  * system = #sms
  * use = #temp
  * rank = 1
  * period.start = "2024-02-10"
* birthDate = "2001-10-16"
* address[uzAddress]
  * use = #temp
  * type = #physical
  * line = "2 квартал 13 дом 12 квартира"
  * country = "UZ"
  * district = "1703206"
  * city = "22070011"
  * period.start = "2001-10-16"
* gender = #other
* gender.extension[gender-other].valueCoding = GenderOtherCS#regis0007.00005 "Сменил пол на мужчину"
* contact
  * relationship = $v2-0131#C "Emergency Contact"
  * name.text = "Саидов Саид"
  * gender = #male
* maritalStatus = $v3-MaritalStatus#M "Состоит в браке"
* multipleBirthInteger = 2
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#33 "НЕМЕЦ/НЕМКА"

Instance: example-emma
InstanceOf: UZCorePatient
Description: "Example of a foreign patient named Emma"
Usage: #example
* language = #en
* identifier[passportForeign]
  * system = "https://dhp.uz/fhir/core/sid/pid/gb/ppn"
  * value = "533401572"
* identifier[driversLicenseForeign]
  * system = "https://dhp.uz/fhir/core/sid/pid/gb/dl"
  * value = "SANDE805166E99NJ"
* active = false
* name
  * use = #anonymous
  * text = "Emma Sanders"
* telecom
  * system = #sms
  * use = #temp
  * rank = 1
  * period.start = "2024-02-10"
* birthDate = "2000-10-16"
* address[i18nAddress]
  * use = #temp
  * type = #physical
  * line = "123 Baker Street"
  * country = "GB"
  * period.start = "2000-10-16"
* gender = #female
* contact
  * relationship = $v2-0131#C "Emergency Contact"
  * name.text = "Isabella"
  * gender = #female
* maritalStatus = $v3-MaritalStatus#U "Unmarried"
* multipleBirthInteger = 2
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#42 "TURKMAN"

Instance: example-unidentified-patient
InstanceOf: UZCorePatient
Description: "Unidentified patient brought in unconscious, with no identifier available. Patient.identifier is mandatory (1..*), so rather than inventing a fake value the single identifier carries a data-absent-reason extension - the resource still validates without fabricating data."
Usage: #example
* identifier
  * use = #temp
  * value.extension[data-absent-reason].valueCode = #unknown
* active = true
* name
  * use = #anonymous
  * text = "Unidentified patient"
