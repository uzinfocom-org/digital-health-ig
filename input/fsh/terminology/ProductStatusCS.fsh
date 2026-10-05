CodeSystem: ProductStatusCS
Id: product-status-cs
Title: "Product Status"
Description: "Product Status translations in Uzbek and Russian."
* insert SupplementCodeSystemDraft(product-status-cs, $biologicallyderived-product-status, 5.0.0)

* #available
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доступен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud"

* #unavailable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недоступен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud emas"
