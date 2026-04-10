ValueSet: GoalPriorityVS
Id: goal-priority-vs
Title: "Goal Priority VS"
Description: "Value Set for Goal Priority translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/goal-priority-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalPriorityCS)

* include codes from system $goal-Priority