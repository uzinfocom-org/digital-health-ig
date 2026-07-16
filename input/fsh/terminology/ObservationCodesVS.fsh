ValueSet: ObservationCodesVS
Id: observation-codes-vs
Title: "Observation codes"
Description: "Codes for observations, allowing use of LOINC, local laboratory codes, and SNOMED CT as appropriate for the context"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes-vs"
* ^experimental = true

* include codes from system lab-pan-cs
* include codes from system $loinc

* include codes from system $sct where concept is-a #363787002 "Observable entity (observable entity)"
* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept is-a #386053000 "Evaluation procedure (procedure)"
* include codes from system $sct where concept is-a #413350009 "Finding with explicit context (situation)"
* include codes from system $sct where concept is-a #272379006 "Event (event)"

* include LabPanelCS#lab-pan-A
* include LabPanelCS#lab-pan-AA
* include LabPanelCS#lab-pan-B
* include LabPanelCS#lab-pan-BB 
* include LabPanelCS#lab-pan-C
* include LabPanelCS#lab-pan-D
* include LabPanelCS#lab-pan-E
* include LabPanelCS#lab-pan-CC 
* include LabPanelCS#lab-pan-F 
* include LabPanelCS#lab-pan-G 
* include LabPanelCS#lab-pan-H
* include LabPanelCS#lab-pan-I
* include LabPanelCS#lab-pan-J
* include LabPanelCS#lab-pan-L
* include LabPanelCS#lab-pan-M 
* include LabPanelCS#lab-pan-N 
* include LabPanelCS#lab-pan-O 
* include LabPanelCS#lab-pan-P
* include LabPanelCS#lab-pan-Q
* include LabPanelCS#lab-pan-R
* include LabPanelCS#lab-pan-S
* include LabPanelCS#lab-pan-T 
* include LabPanelCS#lab-pan-U 
* include LabPanelCS#lab-pan-V 
* include LabPanelCS#lab-pan-W 