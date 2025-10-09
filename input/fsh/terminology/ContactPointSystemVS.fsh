ValueSet: ContactPointSystemVS
Id: contact-point-system-vs
Title: "Types of possible contact points"
Description: "Defines the contact point `system` types ub Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/contact-point-system-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ContactPointSystemCS)

* include codes from system $contact-point-system
