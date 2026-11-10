// This file contains the search parameters defined by the Digital Health Platform

Instance: uz-core-medicationknowledge-associated-medication
InstanceOf: SearchParameter
Description: "Search for medication reference entries by the medication they are about"
Usage: #definition
* url = "https://dhp.uz/fhir/core/SearchParameter/uz-core-medicationknowledge-associated-medication"
* name = "UZMedicationKnowledgeAssociatedMedication"
* title = "MedicationKnowledge associated medication"
* status = #active
* experimental = true
* date = "2026-11-09"
* publisher = "Uzinfocom"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Search for MedicationKnowledge entries by the Medication they are about (`associatedMedication`), for example to find the approved prices of a dispensed product. Base FHIR R5 has no search parameter on this element. Chain on `identifier` to search by a product identifier such as the GTIN without reading the Medication first."
* code = #associated-medication
* base = #MedicationKnowledge
* type = #reference
* expression = "MedicationKnowledge.associatedMedication"
* processingMode = #normal
* target = #Medication
* multipleOr = true
* chain = "identifier"

Instance: uz-core-flag-code
InstanceOf: SearchParameter
Description: "Search for flags by what they are about"
Usage: #definition
* url = "https://dhp.uz/fhir/core/SearchParameter/uz-core-flag-code"
* name = "UZFlagCode"
* title = "Flag code"
* status = #active
* experimental = true
* date = "2026-11-10"
* publisher = "Uzinfocom"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Search for Flag resources by what they are about (`code`), for example to find a patient's active medical deferrals from blood donation. Base FHIR R5 has no search parameter on this element."
* code = #code
* base = #Flag
* type = #token
* expression = "Flag.code"
* processingMode = #normal
* multipleOr = true
