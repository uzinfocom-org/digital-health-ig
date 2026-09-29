ValueSet: ProductCategoryVS
Id: product-category-vs
Title: "Product Category"
Description: "Product Category for blood products and supply delivery."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/product-category-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProductCategoryCS)
* include codes from system $product-category