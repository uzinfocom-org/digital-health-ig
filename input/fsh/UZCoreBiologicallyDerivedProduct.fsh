Profile: UZCoreBiologicallyDerivedProduct
Parent: BiologicallyDerivedProduct
Id: uz-core-biologically-derived-product
Title: "UZ Core BiologicallyDerivedProduct"
Description: "Uzbekistan Core BiologicallyDerivedProduct profile, used to represent material of biological origin intended for transfusion or transplantation, such as blood products and their processed components, tissues and cells"

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^date = "2026-09-30"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identifiers of the product"
* identifier ^slicing.ordered = false
* identifier contains
    unitNumber 0..1 MS
* identifier[unitNumber]
  * ^short = "Local unit number assigned by the collecting or processing blood service for product tracking"
  * system 1..1 MS
  * system = $blood-unit-number
  * value 1..1 MS

* biologicalSourceEvent MS
* biologicalSourceEvent ^short = "Local donation number assigned by the collecting blood service for donation traceability"
* biologicalSourceEvent.system 1..1 MS
* biologicalSourceEvent.system = $blood-donation-number
* biologicalSourceEvent.value 1..1 MS

* productCategory MS
* productCategory from ProductCategoryVS (required)
* productCode MS
* productCode from BloodProductTypeSnomedVS (extensible)
* parent MS
* parent only Reference(UZCoreBiologicallyDerivedProduct)
* parent ^short = "Source product(s) for a processed or pooled component; absent for a direct donation"
* parent ^definition = "Direct donations, including apheresis plasma and platelets, have no parent. Components produced by processing reference their source product, and pooled products reference every unit in the pool. Cryoprecipitate references its source plasma."
* productStatus MS
* productStatus from ProductStatusVS (required)
* productStatus ^short = "Availability; detailed inventory status is recorded in InventoryItem"
* expirationDate MS
* collection MS
* collection.source MS
* collection.source only Reference(UZCorePatient or UZCoreOrganization)
* collection.collector MS
* collection.collector only Reference(UZCorePractitioner or UZCorePractitionerRole)
* collection.collected[x] MS
* processingFacility MS
* processingFacility only Reference(UZCoreOrganization)
* division MS
* division ^short = "Portion or dose number, for example 2/3"
* storageTempRequirements MS
* request MS
* request only Reference(UZCoreServiceRequest)
* property MS
* property.type MS
* property.value[x] MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    aboGroup 0..1 MS and
    rhdType 0..1 MS and
    volume 0..1 MS and
    hematocrit 0..1 MS
* property[aboGroup] ^short = "ABO blood group of the product"
* property[aboGroup].type = $sct#63915006
* property[aboGroup].value[x] only CodeableConcept
* property[aboGroup].valueCodeableConcept from BloodGroupVS (required)

* property[rhdType] ^short = "RhD blood group of the product"
* property[rhdType].type = $sct#115678000
* property[rhdType].value[x] only CodeableConcept
* property[rhdType].valueCodeableConcept from BloodRhVS (required)

* property[volume] ^short = "Volume of the product"
* property[volume].type = $sct#118565006
* property[volume].value[x] only Quantity

* property[hematocrit] ^short = "Proportion of product volume occupied by red blood cells"
* property[hematocrit].type = $loinc#4544-3
* property[hematocrit].value[x] only Quantity


Instance: example-blood-donation-product
InstanceOf: UZCoreBiologicallyDerivedProduct
Usage: #example
Title: "Whole blood donation"
Description: "A directly donated whole blood unit with no parent product."
* identifier[unitNumber].value = "BB-DON-2026-00123"
* biologicalSourceEvent.system = $blood-donation-number
* biologicalSourceEvent.value = "DON-2025-0088231"
* productCategory = $product-category#fluid "Fluid"
* productCode = $sct#88487009 "Human whole blood product"
* productStatus = $biologicallyderived-product-status#available "Available"
* collection.collectedDateTime = "2026-09-15T08:00:00+05:00"
* property[aboGroup].type = $sct#63915006 "ABO blood group system"
* property[aboGroup].valueCodeableConcept = $sct#112144000 "Blood group A"
* property[rhdType].type = $sct#115678000
* property[rhdType].valueCodeableConcept = $sct#165747007 "RhD positive"
* property[volume].type = $sct#118565006 "Volume"
* property[volume].valueQuantity = 450 'mL' "mL"
* property[hematocrit].type = $loinc#4544-3
* property[hematocrit].valueQuantity = 40 '%' "%"

Instance: example-blood-component-product
InstanceOf: UZCoreBiologicallyDerivedProduct
Usage: #example
Title: "Red blood cell component"
Description: "A processed red blood cell component with its own unit number and the same donation number as its source product."
* identifier[unitNumber].value = "BB-COMP-2026-0001"
* biologicalSourceEvent.system = $blood-donation-number
* biologicalSourceEvent.value = "DON-2025-0088231"
* productCategory = $product-category#cells "Cells"
* productCode = $sct#126251004 "Leukocyte reduced red blood cells, human"
* parent = Reference(example-blood-donation-product)
* productStatus = $biologicallyderived-product-status#available "Available"
* property[aboGroup].type = $sct#63915006 "ABO blood group system"
* property[aboGroup].valueCodeableConcept = $sct#112144000 "Blood group A"
* property[rhdType].type = $sct#115678000
* property[rhdType].valueCodeableConcept = $sct#165747007 "RhD positive"
* property[volume].type = $sct#118565006 "Volume"
* property[volume].valueQuantity = 263 'mL' "mL"
* property[hematocrit].type = $loinc#4544-3
* property[hematocrit].valueQuantity = 60 '%' "%"