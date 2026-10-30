CodeSystem: InventoryUnitSnomedCS
Id: inventory-unit-snomed-cs
Title: "Inventory unit SNOMED CT translations"
Description: "Inventory unit SNOMED CT supplement with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(inventory-unit-snomed-cs, $sct, 2026.1.0)

* #732936001 "Tablet"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Таблетка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tabletka"
  
* #732937005 "Capsule"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Капсула"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kapsula"

* #733026001 "Vial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Флакон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Flakon"

* #732978007 "Ampoule"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ампула"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ampula"

* #732986007 "Bottle"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бутылка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shisha"

* #732982009 "Blood bag"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гемоконтейнер"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Gemokonteyner"
