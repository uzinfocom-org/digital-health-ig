ValueSet: SubstanceSampleCategoryVS
Id: substance-sample-category-vs
Title: "Substance sample category"
Description: "Substance sample categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/substance-sample-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SubstanceNamesSnomedCS)

* include $sct#11713004
* include $sct#15158005
* include $sct#415555003
* include $sct#255620007