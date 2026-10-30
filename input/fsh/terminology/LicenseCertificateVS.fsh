ValueSet: LicenseCertificateVS
Id: license-certificate-vs
Title: "License, certificate, degree"
Description: "Licenses, certificates, degrees"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/license-certificate-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LicenseCertificateCS)

* include codes from system $qualification-codes
