ValueSet: ProvenanceActivityTypesVS
Id: provenance-activity-types-vs
Title: "Provenance Activity Types"
Description: "Defines the provenance activity types."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/provenance-activity-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceActivityTypesCS)

* include $v3-DocumentCompletion#LA
