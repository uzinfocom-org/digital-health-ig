CodeSystem: InventoryOperationTypeCS
Id: inventory-operation-type-cs
Title: "Inventory Operation Type Code System"
Description: "List of inventory operation types"
* insert OriginalCodeSystemDraft(inventory-operation-type-cs)

* #invop-0001-00001 "Kirim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приход"
  * ^designation[+].language = #en
  * ^designation[=].value = "Addition"

* #invop-0001-00002 "Chiqim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Расход"
  * ^designation[+].language = #en
  * ^designation[=].value = "Subtraction"

* #invop-0001-00003 "O'zgarishsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Без изменений"
  * ^designation[+].language = #en
  * ^designation[=].value = "No change"