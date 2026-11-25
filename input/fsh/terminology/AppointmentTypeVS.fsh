ValueSet: AppointmentTypeVS
Id: appointment-type-vs
Title: "Appointment type"
Description: "Appointment types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/appointment-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AppointmentTypeCS)

* include codes from system $v2-0276
