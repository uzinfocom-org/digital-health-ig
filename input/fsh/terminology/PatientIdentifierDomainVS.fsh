ValueSet: PatientIdentifierDomainVS
Id: patient-identifier-domain-vs
Title: "Patient Identifier Domain Value Set"
Description: "Allowed codes for patient identification domains (international passport numbers, drivers licenses) in Uzbekistan's health information exchange. Used in the [UZ Core Patient](StructureDefinition-uz-core-patient.html) profile."
* ^url = "https://dhp.uz/fhir/core/ValueSet/patient-identifier-domain-vs"
* ^experimental = true
* ^language = #uz

* include codes from system IdentifierDomainCS
    where concept is-a #https://dhp.uz/fhir/core/sid/pid and
    notSelectable = "false"

