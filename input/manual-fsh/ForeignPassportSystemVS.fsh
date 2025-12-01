// SUSHI has a bug processing the valueset; it thinks idtype/country come from the IdentifierDomainCS while they actually come from another


ValueSet: ForeignPassportSystemVS
Id: foreign-passport-system-vs
Title: "Foreign Passport System Value Set"
Description: "Allowed system URIs for foreign (non-Uzbekistan) passport identifiers. Used in the [UZ Core Patient](StructureDefinition-uz-core-patient.html) profile for the passportForeign slice."
* ^url = "https://dhp.uz/fhir/core/ValueSet/foreign-passport-system-vs"
* ^experimental = true

* include codes from system IdentifierDomainCS
    where idtype = $identifier-type#PPN and
    notSelectable = "false"
* exclude codes from system IdentifierDomainCS
    where country = $iso-3166#UZ
