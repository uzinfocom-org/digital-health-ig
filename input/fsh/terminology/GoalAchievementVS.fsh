ValueSet: GoalAchievementVS
Id: goal-achievement-vs
Title: "Goal Achievement VS"
Description: "Value Set for Goal Achievement translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/goal-achievement-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalAchievementCS)

* include codes from system $goal-achievement