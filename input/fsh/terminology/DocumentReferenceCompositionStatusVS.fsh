ValueSet: DocumentReferenceCompositionStatusVS
Id: document-reference-composition-status-vs
Title: "DocumentReference Composition Status"
Description: "Defines the status of a composition (e.g., a document) in Uzbekistan."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/document-reference-composition-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocumentReferenceCompositionStatusCS)

* include codes from system $document-reference-composition-status