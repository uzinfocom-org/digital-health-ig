ValueSet: CoverageKindVS
Id: coverage-kind-vs
Title: "Coverage Kind ValueSet"
Description: "ValueSet of coverage/financing kinds used in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/coverage-kind-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CoverageKindCS)

* include codes from system $coverage-kind
* include codes from system StateInsuranceCS
