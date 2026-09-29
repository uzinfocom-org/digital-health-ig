ValueSet: BloodProductPropertyTypeVS
Id: blood-product-property-type-vs
Title: "Blood Product Property Type VS"
Description: "ValueSet for blood product property types"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-product-property-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BloodProductPropertyTypeCS)

* include $sct#63915006
* include $sct#876000
* include $sct#118565006
* include $sct#61928009
* include $sct#372862008
* include $sct#126251004
* include $sct#126241000
* include $sct#126249003
* include $sct#71643009
* include $sct#304289003
* include $sct#50095005
* include $sct#246380002
* include $sct#246246002
* include $sct#104077008

* include codes from system blood-product-property-type-local-cs