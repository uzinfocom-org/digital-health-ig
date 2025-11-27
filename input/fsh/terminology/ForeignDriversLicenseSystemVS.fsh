ValueSet: ForeignDriversLicenseSystemVS
Id: foreign-drivers-license-system-vs
Title: "Foreign Driver's License System Value Set"
Description: "Allowed system URIs for foreign (non-Uzbekistan) driver's license identifiers. Used in the [UZ Core Patient](StructureDefinition-uz-core-patient.html) profile for the driversLicenseForeign slice."
* ^url = "https://dhp.uz/fhir/core/ValueSet/foreign-drivers-license-system-vs"
* ^experimental = true

* include codes from system IdentifierDomainCS
    where idtype = "$identifier-type#DL" and
    notSelectable = "false"
* exclude codes from system IdentifierDomainCS
    where country = "$iso-3166#UZ"
