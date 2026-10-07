CodeSystem: InventoryItemResponsibleOrganizationRoleCS
Id: inventoryitem-responsible-organization-role-cs
Title: "Inventory Item Responsible Organization Role"
Description: "Codes representing the role of an organization responsible for an inventory item"

* insert OriginalCodeSystemDraft(inventoryitem-responsible-organization-role-cs)

* #manufacturer "Ishlab chiqaruvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Производитель"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manufacturer"

* #distributor "Distribyutor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дистрибьютор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Distributor"

* #supplier "Yetkazib beruvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поставщик"
  * ^designation[+].language = #en
  * ^designation[=].value = "Supplier"

* #importer "Import qiluvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Импортер"
  * ^designation[+].language = #en
  * ^designation[=].value = "Importer"

* #other "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"
