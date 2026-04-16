ValueSet: GoalStartEventVS
Id: goal-start-event-vs
Title: "Goal Start Event VS"
Description: "Value Set for Goal Start Event"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/goal-start-event-vs"
* ^experimental = true
* ^language = #en // SNOMED-CT does not yet have Uzbek translations, so we use English for the display values

* include $sct#32485007 "Admission to hospital"
* include $sct#308283009 "Discharge from hospital"
* include $sct#442137000 "Completion time of procedure"
* include $sct#386216000 "Childbirth"