ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task Status ValueSet"
Description: "Valueset used to represent task lifecycle status codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/task-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TaskStatusCS)

* include codes from system $task-status