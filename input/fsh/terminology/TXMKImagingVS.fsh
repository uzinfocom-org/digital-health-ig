ValueSet: TXMKImagingVS
Id: txmk-imaging-vs
Title: "TXMK diagnostic imaging service"
Description: "TXMK diagnostic imaging services"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/txmk-imaging-vs"
* ^status = #draft
* ^experimental = true

* include codes from system TXMKCS where service-group = "B02"
* include codes from system TXMKCS where service-group = "B03"
* include codes from system TXMKCS where service-group = "B04"
* include codes from system TXMKCS where service-group = "B05"
* include codes from system TXMKCS where service-group = "B06"
* include codes from system TXMKCS where service-group = "B10"
