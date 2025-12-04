ValueSet: DocumentRelationshipTypeVS
Id: document-relationship-type-vs
Title: "Document Relationship Type ValueSet"
Description: "The type of relationship between documents."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/document-relationship-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocumentRelationshipTypeCS)

* include codes from system $document-relationship-type