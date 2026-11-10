ValueSet: UZTXMKImagingVS
Id: uz-txmk-imaging-vs
Title: "UZ TXMK diagnostic imaging services"
Description: "Medical imaging services from the national classification of medical services of Uzbekistan."

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/uz-txmk-imaging-vs"
* ^status = #draft
* ^experimental = true

* include codes from system $uz-txmk where service-group = "B02"
* include codes from system $uz-txmk where service-group = "B03"
* include codes from system $uz-txmk where service-group = "B04"
* include codes from system $uz-txmk where service-group = "B05"
* include codes from system $uz-txmk where service-group = "B06"
* include codes from system $uz-txmk where service-group = "B10"
