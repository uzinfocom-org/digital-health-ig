ValueSet: ObservationValuesVS
Id: observation-values-vs
Title: "UZ Core observation coded values"
Description: "Local coded values used by CHR forms 096 and 097 for Observation.valueCodeableConcept and Observation.component.valueCodeableConcept. The binding is preferred so an Observation may still use another code system or valueString when the source form permits free text."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-values-vs"
* ^status = #draft
* ^experimental = true

* include codes from system yes-no-cs
* include codes from system satisfactory-status-cs
* include codes from system maternal-death-timing-cs
* include codes from system fetal-presentation-cs
* include codes from system fetal-lie-cs
* include codes from system tissue-integrity-status-cs
* include codes from system vaginal-discharge-color-cs
* include codes from system delivery-timeliness-cs
* include codes from system newborn-skin-color-basic-cs
* include codes from system cyanosis-distribution-cs
* include codes from system muscle-tone-status-cs
* include codes from system normal-abnormal-status-cs
* include codes from system eyelid-shape-cs
* include codes from system ear-morphology-cs
* include codes from system respiratory-auscultation-cs
* include codes from system urination-ease-cs
* include codes from system external-genital-pattern-cs
* include codes from system newborn-care-location-cs
* include codes from system breastfeeding-initiation-time-cs
* include codes from system infant-feeding-type-cs
* include codes from system newborn-activity-level-cs
* include codes from system primitive-reflex-type-cs
* include codes from system newborn-skin-color-detailed-cs
