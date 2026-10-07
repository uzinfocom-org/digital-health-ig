ValueSet: ProductCategoryVS
Id: product-category-vs
Title: "Product category"
Description: "Categories of biologically derived products"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/product-category-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProductCategoryCS)
* include codes from system $product-category