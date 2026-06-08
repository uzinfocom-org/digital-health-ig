Profile: UZCoreMedication
Parent: Medication
Id: uz-core-medication
Title: "UZ Core Medication"
Description: "Uzbekistan Core Medication profile, used for representing medications in Uzbekistan."
* ^experimental = true
* ^status = #active
* ^date = "2025-09-25"

* identifier 1..* MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identifiers for medication (national registry, GTIN)"
* identifier ^slicing.ordered = false
* identifier contains uzpharmBoxGroupID 0..1 MS and
    globalTradeItemID 0..1 MS and 
    markingID 0..1 MS and 
    productServiceID 0..1 MS and
    registrationCertificateID 0..1 MS

* identifier[uzpharmBoxGroupID]
  * ^short = "Box-level aggregation identifier used to group serialized pharmaceutical packs into a shipping/carton unit within Uzbekistan's national track-and-trace program"
  * system 0..1 MS
  * system = $uzpharmBoxGroupID
  * use = #official
  * value 0..1 MS

* identifier[globalTradeItemID]
  * ^short = "Globally standardized trade identifier (GTIN) used for medicinal products"
  * system 0..1 MS
  * system = $globalTradeItemID
  * use = #official
  * value 0..1 MS

* identifier[markingID]
  * ^short = "Uzbekistan's national marking identifier (Asl Belgisi)"
  * system 0..1 MS
  * system = $markingID
  * use = #official
  * value 0..1 MS

* identifier[registrationCertificateID]
  * ^short = "Official registration certificate identifier for medicines"
  * system 0..1 MS
  * system = $registrationCertificateID
  * use = #official
  * value 0..1 MS

* identifier[productServiceID]
  * ^short = "National product and service classification code"
  * system 0..1 MS
  * system = $productServiceID
  * use = #official
  * value 0..1 MS
/*
* identifier[uzpharmInfo]
  * system 1..1 MS
  * system = $uzpharm-agency
  * use = #official
  * value 1..1 MS
  */
* code MS
* code from MedicationClassificationVS (required)
* status MS
* status from MedicationStatusVS (required)
* marketingAuthorizationHolder MS
* marketingAuthorizationHolder only Reference(UZCoreOrganization)
* doseForm MS
* doseForm from MedicationDoseFormVS (extensible)
* totalVolume MS
* totalVolume only Quantity
* totalVolume.code from MedicationTotalVolumeUnitsVS (preferred)
* totalVolume.comparator from QuantityComparatorVS (required)

* ingredient MS
* ingredient.item only CodeableReference (UZCoreMedication)
* ingredient.item from MedicationClassificationVS (example)

* ingredient.strength[x] MS
* ingredient.strengthRatio MS
* ingredient.strengthRatio.numerator.code from MedicationTotalVolumeUnitsVS (preferred)
* ingredient.strengthRatio.denominator.code from MedicationTotalVolumeUnitsVS (preferred)
* ingredient.strengthRatio.numerator.comparator from QuantityComparatorVS (required)

* batch MS
  * ^short = "Detailed information about the packaged medication"
* batch.lotNumber ^short = "Identifier assigned to the batch (AIK)"
* batch.expirationDate ^short = "The date when the batch expires"

Instance: example-medication
InstanceOf: UZCoreMedication
Title: "Example UZ Core Medication - Paracetamol"
Description: "Example instance of paracetamol tablets registered in Uzbekistan"
Usage: #example
* language = #en
* identifier[registrationCertificateID]
  * system = $registrationCertificateID
  * use = #official
  * value = "UZ/MED/2024/00123"
* code = inn-medication-name-cs#005325 "paracetamol"
* status = $medication-status#active "Faol"
* doseForm = medication-doseform-cs#TAB101 "tablets"
* totalVolume
  * value = 500
  * unit = "mg"
  * system = $ucum
  * code = #mg
* batch
  * lotNumber = "LOT20241201"
  * expirationDate = "2027-12-01"

Instance: example-neomycin-atc-medication
InstanceOf: UZCoreMedication
Title: "Example UZ Core Medication - Neomycin"
Description: "Example instance of Neomycin drops registered in Uzbekistan"
Usage: #example
* language = #en
* identifier[globalTradeItemID]
  * system = $globalTradeItemID
  * use = #official
  * value = "PH2025"
* identifier[productServiceID]
  * system = $productServiceID
  * use = #official
  * value = "PS2212"
* code = $medical-product-classification#A01AB08 "Neomycin"
* status = $medication-status#active
* doseForm = medication-doseform-cs#DRO101 "drops"
* totalVolume
  * value = 50
  * unit = "mL"
  * system = $ucum
  * code = #mL
* batch
  * lotNumber = "LOT20251215"
  * expirationDate = "2028-12-28"

Instance: example-naloxegol-atc-medication
InstanceOf: UZCoreMedication
Title: "Example UZ Core Medication - Naloxegol"
Description: "Example instance of Naloxegol tablets registered in Uzbekistan"
Usage: #example
* language = #en
* identifier[uzpharmBoxGroupID]
  * system = $uzpharmBoxGroupID
  * use = #official
  * value = "UZ-PHARM-BOX-000245"
* identifier[productServiceID]
  * system = $productServiceID
  * use = #official
  * value = "BOX-GRP-245"
* code = $medical-product-classification#A06AH03 "naloxegol"
* status = $medication-status#active "Faol"
* doseForm = medication-doseform-cs#TAB101 "tablets"
* totalVolume
  * value = 25
  * unit = "mg"
  * system = $ucum
  * code = #mg
* batch
  * lotNumber = "LOT20261215"
  * expirationDate = "2028-12-28"

