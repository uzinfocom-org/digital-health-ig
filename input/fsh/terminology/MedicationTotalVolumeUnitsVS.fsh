ValueSet: MedicationTotalVolumeUnitsVS
Id: medication-total-volume-units-vs
Title: "Medication total volume UCUM unit"
Description: "Medication total volume UCUM units"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-total-volume-units-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationTotalVolumeUCUMUnitsCS)

* include codes from system medication-total-volume-local-units-cs
* include codes from system $ucum

