ValueSet: ProvenanceParticipationRoleTypeVS
Id: provenance-participation-role-type-vs
Title: "Provenance Participation Role Type"
Description: "Defines how the participant participated in Uzbek and Russian"
* ^experimental = true
* ^language = #en
* $provenance-participant-type#legal
* $provenance-participant-type#legal ^designation[0].language = #ru
* $provenance-participant-type#legal ^designation[=].value = "Юридический аутентификатор"
* $provenance-participant-type#legal ^designation[+].language = #uz
* $provenance-participant-type#legal ^designation[=].value = "Yuridik autentifikatsiya"
* $provenance-participant-type#author
* $provenance-participant-type#author ^designation[0].language = #ru
* $provenance-participant-type#author ^designation[=].value = "Автор"
* $provenance-participant-type#author ^designation[+].language = #uz
* $provenance-participant-type#author ^designation[=].value = "Muallif"

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
