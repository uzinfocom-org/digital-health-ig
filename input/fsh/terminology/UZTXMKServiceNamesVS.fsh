ValueSet: UZTXMKServiceNamesVS
Id: uz-txmk-service-names-vs
Title: "UZ TXMK service names"
Description: "Names of services from the national classification of medical services of Uzbekistan."

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/uz-txmk-service-names-vs"
* ^status = #draft
* ^experimental = true

* include codes from system UZTXMKCS
* exclude codes from system UZTXMKCS where notSelectable = "true"
