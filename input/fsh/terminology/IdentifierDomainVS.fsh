ValueSet: IdentifierDomainVS
Id: identifier-domain-vs
Title: "Identifier domain"
Description: """
  Description of the identifier systems acceptable for entity (patient, practitioner, organization) identification.

  This is modelled after the [Estonian Identifier Domain](https://fhir.ee/ig/terminology/0.2.3/site/CodeSystem-identifier-domain.html) with the exception that country codes are ISO 3166 two letter codes for consistency within UZ Core.
  """
* ^url = "https://dhp.uz/fhir/core/ValueSet/identifier-domain-vs"
* ^experimental = true
* ^language = #uz

* include codes from system IdentifierDomainCS

