ValueSet: PublicationStatusVS
Id: publication-status-vs
Title: "Publication status translations"
Description: "Publication status codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/publication-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(PublicationStatusCS)

* include $publication-status#draft
* include $publication-status#active
* include $publication-status#retired
* include $publication-status#unknown