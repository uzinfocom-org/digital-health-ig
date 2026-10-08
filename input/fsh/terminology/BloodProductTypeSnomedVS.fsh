ValueSet: BloodProductTypeSnomedVS
Id: blood-product-type-snomed-vs
Title: "Blood product type"
Description: "Blood product types coded in SNOMED CT, including leukocyte reduced and irradiated products"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-product-type-snomed-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BloodProductTypeSnomedCS)

* include $sct#88487009
* include $sct#431069006
* include $sct#346447007
* include $sct#23343005
* include $sct#420599006
* include $sct#126251004
* include $sct#256378001