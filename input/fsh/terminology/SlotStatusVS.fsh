ValueSet: SlotStatusVS
Id: slot-status-vs
Title: "Slot status"
Description: "Slot statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/slot-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SlotStatusCS)

* include codes from system $slotstatus
