ValueSet: DataAbsentReasonVS
Id: data-absent-reason-vs
Title: "UZCore Data Absent Reason"
Description: "Defines the reasons why a value is missing in an observation within the Uzbekistan Core Implementation"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/data-absent-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DataAbsentReasonCS)
* include codes from system $observation-dataAbsentReason
