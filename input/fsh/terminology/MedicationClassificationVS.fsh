ValueSet: MedicationClassificationVS
Id: medication-classification-vs
Title: "Medication classification (ATC & INN)"
Description: "This ValueSet combines the Anatomical Therapeutic Chemical (ATC) classification system and International Nonproprietary Names (INN) for standardized representation and classification of medicinal products in Uzbekistan."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-classification-vs"
* ^experimental = true
// ATCClassificationCS remains in the package as the Uzbek/Russian supplement for ATC.
// Do not declare it through valueset-supplement until the validator resolves packaged
// supplements reliably (see the equivalent workaround in PositionAndProfessionVS and
// https://github.com/hapifhir/org.hl7.fhir.core/issues/2540). With Publisher 2.3.4 the
// declaration makes otherwise valid ATC and INN codes fail the required binding.

* include codes from system $medical-product-classification
* include codes from system inn-medication-name-cs 
