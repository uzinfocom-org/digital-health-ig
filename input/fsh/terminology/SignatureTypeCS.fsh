CodeSystem: SignatureTypeCS
Id: signature-type-cs
Title: "Signature Type"
Description: "Defines the possible Provenance signature types."
* ^url = "https://terminology.medcore.uz/CodeSystem/signature-type-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-05-23"
* ^publisher = "Ministry of Health of Uzbekistan"
* ^content = #complete
* ^language = #uz
* ^caseSensitive = true
* #biometricAuth "biometrik autentifikatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "биометрическая аутентификация"
  * ^designation[+].language = #en
  * ^designation[=].value = "biometric authentication"
* #soliqAuth "soliq autentifikatsiyasi va raqamli imzo"
  * ^designation[0].language = #ru
  * ^designation[=].value = "налоговая аутентификация и цифровая подпись"
  * ^designation[+].language = #en
  * ^designation[=].value = "tax authentication and digital signature"
