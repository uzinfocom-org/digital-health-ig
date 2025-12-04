ValueSet: DocumentReferenceCompositionAttestationModeVS
Id: document-reference-composition-attestation-mode-vs
Title: "Composition Attestation Mode"
Description: "The way in which a person authenticated a composition."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/document-reference-composition-attestation-mode-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocumentReferenceCompositionAttestationModeCS)

* include $document-reference-composition-attestation-mode#personal
* include $document-reference-composition-attestation-mode#professional
* include $document-reference-composition-attestation-mode#legal
* include $document-reference-composition-attestation-mode#official