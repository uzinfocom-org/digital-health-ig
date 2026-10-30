ValueSet: GoalStatusVS
Id: goal-status-vs
Title: "Goal status"
Description: "Goal statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/goal-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalStatusCS)

* include codes from system $goal-status