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
* biologicalSourceEvent MS
* biologicalSourceEvent ^short = "Donation event identifier for traceability"
* productCategory MS
* productCategory from ProductCategoryVS (required)
* productCode MS
* productCode from BloodProductTypeSnomedVS (required)
* parent 0..1 MS
* parent only Reference(UZCoreBiologicallyDerivedProduct)
* parent ^short = "Source product for a processed component; absent for a direct donation"
* parent ^definition = "Direct donations, including apheresis plasma and platelets, have no parent. Components produced by processing reference exactly one source product. Cryoprecipitate references its source plasma."
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
* property.type from BloodProductPropertyTypeVS (required)
* property.value[x] MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    aboGroup 0..* MS and
    rhdType 0..* MS and
    volume 0..* MS and
    hematocrit 0..* MS and
    irradiated 0..* MS and
    leukocyteReduced 0..* MS
* property[aboGroup].type = $sct#63915006
* property[aboGroup].value[x] only CodeableConcept
* property[aboGroup].valueCodeableConcept from BloodGroupVS (required)

* property[rhdType].type = $sct#876000
* property[rhdType].value[x] only CodeableConcept
* property[rhdType].valueCodeableConcept from BloodRhVS (required)

* property[volume].type = $sct#118565006
* property[volume].value[x] only Quantity

* property[hematocrit].type = blood-product-property-type-local-cs#hematocrit
* property[hematocrit].value[x] only Quantity

* property[irradiated].type = $sct#126241000
* property[irradiated].value[x] only boolean

* property[leukocyteReduced].type = $sct#126251004
* property[leukocyteReduced].value[x] only boolean

Instance: example-blood-donation-product
InstanceOf: UZCoreBiologicallyDerivedProduct
Usage: #example
Title: "Whole blood donation"
Description: "A directly donated whole blood unit with no parent product."
* identifier.value = "BB-DON-2026-00123"
* biologicalSourceEvent.value = "DON-2025-0088231"
* productCategory = $product-category#fluid
* productCode = $sct#420135007
* productStatus = $biologicallyderived-product-status#available
* collection.collectedDateTime = "2026-09-15T08:00:00+05:00"
* property[aboGroup].valueCodeableConcept = $sct#112144000
* property[rhdType].valueCodeableConcept = $sct#165747007
* property[volume].valueQuantity = 450 'mL' "mL"

Instance: example-blood-component-product
InstanceOf: UZCoreBiologicallyDerivedProduct
Usage: #example
Title: "Red blood cell component"
Description: "A processed red blood cell component linked to its source donation."
* identifier.value = "BB-COMP-2026-0001"
* biologicalSourceEvent.value = "DON-2025-0088231"
* productCategory = $product-category#cells
* productCode = $sct#431069006
* parent = Reference(example-blood-donation-product)
* productStatus = $biologicallyderived-product-status#available
* property[aboGroup].valueCodeableConcept = $sct#112144000
* property[rhdType].valueCodeableConcept = $sct#165747007
* property[volume].valueQuantity = 263 'mL' "mL"
* property[leukocyteReduced].valueBoolean = true
