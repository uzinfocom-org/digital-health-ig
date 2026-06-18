ValueSet: TaskIntentVS
Id: task-intent-vs
Title: "Task Intent VS"
Description: "ValueSet for Task Intent VS"

* ^experimental = true
* ^status = #draft
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/task-intent-vs"

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TaskIntentCS)

* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)

* include codes from system $task-intent

* include $request-intent#proposal
* include $request-intent#plan
* include $request-intent#order
* include $request-intent#original-order
* include $request-intent#reflex-order
* include $request-intent#filler-order
* include $request-intent#instance-order
* include $request-intent#option
