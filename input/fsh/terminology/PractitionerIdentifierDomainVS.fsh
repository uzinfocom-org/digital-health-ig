ValueSet: PractitionerIdentifierDomainVS
Id: practitioner-identifier-domain-vs
Title: "Practitioner Identifier Domain Value Set"
Description: "Allowed codes for practitioner identification domains (national unique identifiers, etc) in Uzbekistan's health information exchange. Used in the [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html) profile."
* ^url = "https://dhp.uz/fhir/core/ValueSet/practitioner-identifier-domain-vs"
* ^experimental = true
* ^language = #uz

* include codes from system IdentifierDomainCS
    where concept is-a #https://dhp.uz/fhir/core/sid/pro and
    notSelectable = "false"

