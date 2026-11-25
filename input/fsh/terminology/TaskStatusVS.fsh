ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task status"
Description: "Task statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/task-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TaskStatusCS)

* include codes from system $task-status