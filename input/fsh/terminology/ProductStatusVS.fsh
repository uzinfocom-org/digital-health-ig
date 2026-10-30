ValueSet: ProductStatusVS
Id: product-status-vs
Title: "BiologicallyDerivedProduct status"
Description: "BiologicallyDerivedProduct statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/product-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProductStatusCS)

* include codes from system $biologicallyderived-product-status