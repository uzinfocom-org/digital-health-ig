CodeSystem: BloodProductPropertyTypeLocalCS
Id: blood-product-property-type-local-cs
Title: "Blood Product Property Type Local CS"
Description: "Local blood product property types without SNOMED CT codes"

* insert OriginalCodeSystemDraft(blood-product-property-type-local-cs)

* #extended-phenotype-genotype "Kengaytirilgan fenotip/genotip"
  * ^designation[0].language = #en
  * ^designation[=].value = "Extended phenotype/genotype"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Расширенный фенотип/генотип"

* #pathogen-reduced "Patogenlardan tozalangan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pathogen-reduced"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Патоген-редуцированный"

* #donation-type "Donorlik turi (allogen, autolog, yo'naltirilgan)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Donation type (allogeneic, autologous, directed)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тип донации (аллогенная, аутологичная, направленная)"

* #additive-solution "Qo'shimcha eritma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Additive solution"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Добавочный раствор"

* #hematocrit "Gematokrit"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hematocrit"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гематокрит"