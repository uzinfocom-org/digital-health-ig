ValueSet: BloodProductTypeSnomedVS
Id: blood-product-type-snomed-vs
Title: "Blood Product Type Snomed"
Description: "Blood Product Type Snomed for blood products and supply delivery."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-product-type-snomed-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BloodProductTypeSnomedCS)

* include $sct#420135007
* include $sct#431069006
* include $sct#346447007
* include $sct#126258005
* include $sct#420599006
