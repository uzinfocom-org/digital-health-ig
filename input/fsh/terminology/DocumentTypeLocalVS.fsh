ValueSet: DocumentTypeLocalVS
Id: document-type-local-vs
Title: "Local Document Types ValueSet"
Description: "Complete ValueSet containing all local document types (Cards, Logs, Forms)."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/document-type-local-vs"
* ^experimental = true

// Включаем коды из системы по её имени
* include codes from system DocumentTypeLocalCS