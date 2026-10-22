ValueSet: MedicationAdministrationStatusReasonVS
Id: medication-administration-status-reason-vs
Title: "Medication Administration Status Reason translations"
Description: "Medication administration status reason ValueSet with translations in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-administration-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationStatusReasonCS)

* include $sct#242990004 "Drug not available for administration"
* include $sct#182895007 "Drug declined by patient"
* include $sct#182896008 "Drug declined by patient - dislikes taste"
* include $sct#182897004 "Drug declined by patient - side effects"
* include $sct#182898009 "Drug declined by patient - inconvenient"
* include $sct#182899001 "Drug declined by patient - problem swallowing"
* include $sct#182900006 "Drug declined by patient - patient beliefs"
* include $sct#182901005 "Drug declined by patient - alternative therapy"
* include $sct#182902003 "Drug declined by patient - cannot pay script"
* include $sct#182903008 "Drug declined by patient - reason unknown"