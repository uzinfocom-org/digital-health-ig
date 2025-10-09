Profile: UZCoreSocioeconomicObservation
Parent: Observation
Id: uz-core-socioeconomic-observation
Title: "UZ Core Socioeconomic Observation"
Description: "Uzbekistan Core socioeconomic observation profile, used to represent patients' benefits, education, profession, and social status. "
* ^url = $socieeconomic-observation
* ^experimental = true
* ^status = #active
* ^date = "2025-06-11"
* ^publisher = "Uzinfocom"


* subject 1..1 MS
* subject only Reference(UZCorePatient)

* code MS
  * ^short = "Socioeconomic observation type. Education level code is aligned with EE MPI SocialHistory Education Level profile"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slicing based on the code system to allow different socioeconomic observation types"

* code.coding contains socioeconomicType 1..1 MS
* code.coding[socioeconomicType].system ^patternUri = $sct
* code.coding[socioeconomicType] from SocioeconomicObservationCodesVS (required)
* code.coding[socioeconomicType] ^short = "Required socioeconomic observation type code"
* code.coding[socioeconomicType] ^definition = "One of the socioeconomic observation type codes (benefits, education, profession, or social status)"


* value[x] only CodeableConcept
* value[x] from BenefitsVS (example)
  * ^short = "One of the sample valuesets that can be used is BenefitsVS. For all others, see the table:"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(BenefitsVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#1303306008 "Eligible for benefit"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(EducationVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#105421008 "Educational achievement"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(PositionAndProfessionVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#14679004 "Occupation"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(SocialStatusVS)
  * ^binding.additional[=].usage.code = $socieeconomic-observation#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#82996008 "Social status"

* effectiveDateTime 1..1 MS
  * ^short = "Date when the socioeconomic data was recorded or applicable"

// Benefits examples
Instance: example-salim-benefits
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example benefits observation for Salim"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#1303306008 "Eligible for benefit"
* subject = Reference(example-salim)
* valueCodeableConcept = benefits-cs#regis0004.00002 "Chin yetimlar"
* effectiveDateTime = "2025-06-11"

Instance: example-david-benefits
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example benefits observation for David"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#1303306008 "Eligible for benefit"
* subject = Reference(example-david)
* valueCodeableConcept = benefits-cs#regis0004.00011 "Chaqiruv komissiyalarining yo'llanmalari bo'yicha chaqiruv yoshidagi (18 - 27 yoshdagi) shaxslar"
* effectiveDateTime = "2025-06-11"

// Education examples
Instance: example-salim-education
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example education status for Salim"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#105421008 "Educational achievement"
* subject = Reference(example-salim)
* valueCodeableConcept = education-cs#regis0005.00004 "O'rtacha"
* effectiveDateTime = "2025-06-11"

Instance: example-david-education
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example education observation for David"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#105421008 "Educational achievement"
* subject = Reference(example-david)
* valueCodeableConcept = education-cs#regis0005.00008 "Oliy ma'lumot"
* effectiveDateTime = "2025-06-11"

// Profession examples
Instance: example-salim-profession
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example profession observation for Salim"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#14679004 "Occupation"
* subject = Reference(example-salim)
* valueCodeableConcept = position-and-profession-cs#1321.20 "Bosh mexanik"
* effectiveDateTime = "2025-06-11"

Instance: example-david-profession
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example profession observation for David"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#14679004 "Occupation"
* subject = Reference(example-david)
* valueCodeableConcept = position-and-profession-cs#2351.32 "O'qituvchi"
* effectiveDateTime = "2025-06-11"

// Social status examples
Instance: example-salim-social-status
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example social status observation for Salim"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-salim)
* valueCodeableConcept = social-status-cs#regis0010.00003 "Ishlash"
* effectiveDateTime = "2025-06-11"

Instance: example-david-social-status
InstanceOf: UZCoreSocioeconomicObservation
Description: "Example social status observation for David"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-david)
* valueCodeableConcept = social-status-cs#regis0010.00003 "Ishlash"
* effectiveDateTime = "2025-06-11"
