ValueSet: ContactPointSystemVS
Id: contact-point-system-vs
Title: "Contact point system"
Description: "Contact point systems"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/contact-point-system-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ContactPointSystemCS)

* include codes from system $contact-point-system
