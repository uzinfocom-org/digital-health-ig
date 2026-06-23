ValueSet: MedicationTotalVolumeUnitsVS
Id: medication-total-volume-units-vs
Title: "Units of measure for total medication volume (a subset of UCUM)"
Description: "UCUM units used in Uzbekistan for total volume / mass / quantity."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-total-volume-units-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationTotalVolumeUCUMUnitsCS)

* include codes from system medication-total-volume-local-units-cs
* include codes from system $ucum

