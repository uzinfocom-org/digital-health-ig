ValueSet: ProductStatusVS
Id: product-status-vs
Title: "Product status"
Description: "Product statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/product-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProductStatusCS)

* include codes from system $biologicallyderived-product-status