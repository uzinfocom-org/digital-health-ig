ValueSet: LicenseCertificateVS
Id: license-certificate-vs
Title: "License, certificate, degree"
Description: "Defines the type of license, certificate, degree in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/license-certificate-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LicenseCertificateCS)
* ^version = "5.0.0"

* include codes from system $qualification-codes
