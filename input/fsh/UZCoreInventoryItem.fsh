Profile: UZCoreInventoryItem
Parent: InventoryItem
Id: uz-core-inventoryitem
Title: "UZ Core InventoryItem"
Description: "Uzbekistan Core InventoryItem profile, used to track stock of items such as blood products, with their status, quantity and storage location"

* ^status = #active
* ^experimental = true
* ^date = "2026-09-30"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains inventoryItem 0..1 MS
* identifier[inventoryItem].system 1..1 MS
* identifier[inventoryItem].system = $inventory-item-number
* identifier[inventoryItem] ^short = "Inventory item identifier assigned by the managing organization"

* status MS
* status from InventoryItemStatusVS (required)

* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "The blood product type when the item is a blood product; other categories may sit alongside it"
* category contains bloodProductType 0..1 MS
* category[bloodProductType] from BloodProductTypeSnomedVS (required)
* category[bloodProductType] ^short = "Blood product type, for items that are blood products"

* productReference MS
* productReference only Reference(UZCoreMedication or Device or NutritionProduct or UZCoreBiologicallyDerivedProduct)

* name MS
* name.name MS
* name.nameType MS
* name.nameType from InventoryItemNameTypeVS  (preferred)
* name.language MS

* responsibleOrganization MS
* responsibleOrganization.organization MS
* responsibleOrganization.organization only Reference(UZCoreOrganization)
* responsibleOrganization.role MS
* responsibleOrganization.role from InventoryItemResponsibleOrganizationRoleVS (preferred)

* inventoryStatus MS
* inventoryStatus ^slicing.discriminator.type = #value
* inventoryStatus ^slicing.discriminator.path = "$this"
* inventoryStatus ^slicing.rules = #open
* inventoryStatus ^slicing.description = "One national inventory status; other statuses may sit alongside it"
* inventoryStatus contains nationalStatus 0..1 MS
* inventoryStatus[nationalStatus] from InventoryStatusVS (required)

* baseUnit MS

* netContent MS

* instance MS
* instance.identifier MS
* instance.lotNumber MS
* instance.expiry MS
* instance.subject MS
* instance.subject only Reference(UZCorePatient or UZCoreOrganization)
* instance.location MS
* instance.location only Reference(UZCoreLocation)

Instance: example-inventory-item-rbc
InstanceOf: UZCoreInventoryItem
Title: "Example UZ Core InventoryItem - Red blood cells"
Description: "Example inventory item representing leukocyte-reduced red blood cells."
Usage: #example

* identifier[inventoryItem].value = "BB-INV-2025-004821"

* status = $inventoryitem-status#active

* category[bloodProductType] = $sct#431069006

* productReference = Reference(BiologicallyDerivedProduct/example-blood-component-product)

* name[0].name = "Red Blood Cells, Leukocytes Reduced"
* name[0].nameType = $inventoryitem-nametype#alias
* name[0].language = #en

* responsibleOrganization.organization = Reference(Organization/andijan-station)
* responsibleOrganization[0].role = inventoryitem-responsible-organization-role-cs#manufacturer

* inventoryStatus[nationalStatus] = inventoryitem-inventory-status-cs#accepted "Accepted"

* baseUnit = $sct#258768008

* netContent.value = 263
* netContent.unit = "mL"
* netContent.system = "http://unitsofmeasure.org"
* netContent.code = #mL

* instance.expiry = "2026-10-15"

* instance.location = Reference(example-cold-storage-shelf)