ValueSet: MedicationClassificationVS
Id: medication-classification-vs
Title: "Medication classification (ATC and INN)"
Description: "Anatomical Therapeutic Chemical (ATC) classification and International Nonproprietary Names (INN) for standardized representation and classification of medicinal products in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-classification-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ATCClassificationCS)

* include codes from system $medical-product-classification
* include codes from system inn-medication-name-cs 
