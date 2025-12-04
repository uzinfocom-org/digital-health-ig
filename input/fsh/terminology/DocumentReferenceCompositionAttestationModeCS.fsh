CodeSystem: DocumentReferenceCompositionAttestationModeCS
Id: document-reference-composition-attestation-mode-cs
Title: "Composition Attestation Mode Translations"
Description: "Translations for Composition Attestation Mode in Uzbek and Russian for DHP."
* insert SupplementCodeSystemDraft(document-reference-composition-attestation-mode-cs, $document-reference-composition-attestation-mode, 5.0.0)

* #personal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Личное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shaxsiy"

* #professional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессиональное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mutaxassis tomonidan"

* #legal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Юридическое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Huquqiy"

* #official
  * ^designation[0].language = #ru
  * ^designation[=].value = "Официальное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rasmiy"