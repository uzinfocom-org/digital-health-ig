CodeSystem: BloodProductTypeCS
Id: blood-product-type-cs
Title: "Blood Product Type"
Description: "Blood Product Type local codes for blood products."
* insert OriginalCodeSystemDraft(blood-product-type-cs)

* #whole-blood "To'liq qon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цельная кровь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Whole blood"

* #red-cell-mass "Eritrotsitar massa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроцитарная масса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Red blood cell mass"

* #fresh-frozen-plasma "Yangi muzlatilgan plazma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Свежезамороженная плазма"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fresh frozen plasma"

* #platelet-mass "Trombotsitar massa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромбоцитарная масса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet mass"

* #cryoprecipitate "Kriopretsipitat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Криопреципитат"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cryoprecipitate"