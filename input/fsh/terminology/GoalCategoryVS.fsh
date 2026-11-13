ValueSet: GoalCategoryVS
Id: goal-category-vs
Title: "Goal category"
Description: "Goal categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/goal-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalCategoryCS)

* $goal-category#dietary "Dietary"
* $goal-category#safety "Safety"
* $goal-category#behavioral "Behavioral"
* $goal-category#nursing "Nursing"
* $goal-category#physiotherapy "Physiotherapy"