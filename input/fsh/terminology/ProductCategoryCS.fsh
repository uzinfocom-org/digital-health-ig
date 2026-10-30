CodeSystem: ProductCategoryCS
Id: product-category-cs
Title: "Product category translations"
Description: "Product category supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(product-category-cs, $product-category, 5.0.0)

* #organ
  * ^designation[0].language = #ru
  * ^designation[=].value = "Орган"
  * ^designation[+].language = #uz
  * ^designation[=].value = "A'zo"

* #tissue
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ткань"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'qima"

* #fluid
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жидкость"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Suyuqlik"

* #cells
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hujayralar"

* #biologicalAgent
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биологический агент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biologik agent"