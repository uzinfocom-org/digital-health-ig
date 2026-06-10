// this valueset is necessary for code in type.coding[labService], so it is created
ValueSet: LabPanelVS
Id: lab-pan-vs
Title: "Laboratory Observation Panels and Analytes"
Description: "Local Ministry of Health Uzbekistan (399) laboratory observation panel and analyte codes. These codes are mapped to LOINC via the LaboratoryAnalytesCodesToLOINC concept map; LOINC is used on Observation.code."
* ^experimental = true

* include codes from system lab-pan-cs