CodeSystem: MedicationKnowledgeCostTypeCS
Id: medication-knowledge-cost-type-cs
Title: "Medication Knowledge Cost Type Code System"
Description: "List of medication price types used in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(medication-knowledge-cost-type-cs)

* #price-type-0001-00001 "Cheklangan narx"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предельная цена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Price ceiling"

* #price-type-0001-00002 "Ulgurji narx"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оптовая цена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Wholesale price"

* #price-type-0001-00003 "Chakana narx"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Розничная цена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Retail price"

* #price-type-0001-00004 "DTSJ narx"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ФГМС цена"
  * ^designation[+].language = #en
  * ^designation[=].value = "SHIF price"

