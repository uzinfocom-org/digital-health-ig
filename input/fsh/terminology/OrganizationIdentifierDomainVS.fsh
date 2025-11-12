ValueSet: OrganizationIdentifierDomainVS
Id: organization-identifier-domain-vs
Title: "Organization Identifier Domain Value Set"
Description: "Allowed codes for organization identification domains (national tax numbers, registration numbers, etc) in Uzbekistan's health information exchange."
* ^url = "https://dhp.uz/fhir/core/ValueSet/organization-identifier-domain-vs"
* ^experimental = true
* ^language = #uz

* include codes from system IdentifierDomainCS
    where concept is-a #https://dhp.uz/fhir/core/sid/org and
    notSelectable = "false"

