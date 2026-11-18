ValueSet: DischargeSummarySectionVS
Id: discharge-summary-section-vs
Title: "Discharge summary section"
Description: "Section codes for a discharge summary (epicrisis) Composition: LOINC where it has an equivalent, local codes otherwise"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/discharge-summary-section-vs"
* ^experimental = true
* $loinc#10154-3 "Chief complaint Narrative - Reported"
* $loinc#10164-2 "History of Present illness Narrative"
* $loinc#29545-1 "Physical findings note"
* $loinc#10202-0 "Physical findings of Nervous system Narrative"
* include codes from system discharge-summary-section-cs
