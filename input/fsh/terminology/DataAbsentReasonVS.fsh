ValueSet: DataAbsentReasonVS
Id: data-absent-reason-vs
Title: "Data absent reason"
Description: "Data absent reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/data-absent-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DataAbsentReasonCS)
* include codes from system $observation-dataAbsentReason
