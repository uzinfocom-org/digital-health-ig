ValueSet: ImmunizationOriginVS
Id: immunization-origin-vs
Title: "Immunization origin value set"
Description: "Immunization origin codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/immunization-origin-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ImmunizationOriginCS)

* $immunization-origin#provider "Other Provider"
* $immunization-origin#record "Written Record"
* $immunization-origin#recall "Parent/Guardian/Patient Recall"
* $immunization-origin#school "School Record"