ValueSet: MedicationAdministrationPerformerFunctionCodesVS
Id: medication-administration-performer-function-codes-vs
Title: "Medication Administration Performer Function VS"
Description: "A value set defining codes that represent the medication administration performer function, supplemented with Uzbek and Russian translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-administration-performer-function-codes-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationPerformerFunctionCodesCS)
* include codes from system $medication-administration-performer-function-codes