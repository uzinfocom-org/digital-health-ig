Profile: UZCoreInventoryItem
Parent: InventoryItem
Id: uz-core-inventory-item
Title: "UZ Core InventoryItem"
Description: "Uzbekistan Core InventoryItem profile, used to represent items managed in inventory."

* ^status = #active
* ^experimental = true
* ^date = "2026-09-30"
* ^publisher = "Uzinfocom"

* identifier MS

* status MS
* status from InventoryItemStatusVS (required)

// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is created
// * category MS
// * category from BloodProductTypeSnomedVS (preferred)


// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is created
* productReference MS
// * productReference only Reference(UZCoreBiologicallyDerivedProduct)

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
* inventoryStatus from BloodProductInventoryStatusVS (extensible)

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
Title: "Example Inventory Item - Red Blood Cells"
Description: "Example inventory item representing leukocyte-reduced red blood cells."
Usage: #example

* identifier.value = "BB-INV-2025-004821"

* status = $inventoryitem-status#active

* category = $sct#431069006

// comment will be deleted after UZCoreBiologicallyDerivedProduct profile is created
// * productReference = Reference(BiologicallyDerivedProduct/example-blood-component-product)

* name[0].name = "Red Blood Cells, Leukocytes Reduced"
* name[0].nameType = $inventoryitem-nametype#alias
* name[0].language = #en

* responsibleOrganization.organization = Reference(Organization/andijan-station)
* responsibleOrganization[0].role = inventoryitem-responsible-organization-role-cs#manufacturer

* inventoryStatus = blood-product-inventory-status-cs#accepted  "Accepted"

* baseUnit = $sct#258768008

* netContent.value = 263
* netContent.unit = "mL"
* netContent.system = "http://unitsofmeasure.org"
* netContent.code = #mL

* instance.expiry = "2026-10-15"

* instance.location = Reference(Location/cold-storage-shelf-3)