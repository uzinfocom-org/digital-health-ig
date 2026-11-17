ValueSet: TXMKRadiologyVS
Id: txmk-radiology-vs
Title: "TXMK radiology and nuclear medicine service"
Description: "TXMK radiology and nuclear medicine services"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/txmk-radiology-vs"
* ^status = #draft
* ^experimental = true

* include codes from system TXMKCS where service-group = "B02"
* include codes from system TXMKCS where service-group = "B03"
* include codes from system TXMKCS where service-group = "B04"
* include codes from system TXMKCS where service-group = "B05"
* include codes from system TXMKCS where service-group = "B06"
* include codes from system TXMKCS where service-group = "B10"
