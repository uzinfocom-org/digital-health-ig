ValueSet: JurisdictionVS
Id: jurisdiction-vs
Title: "Uzbekistan Jurisdictions"
Description: "Where in Uzbekistan an artifact applies - the whole country for national artifacts, or one of its regions for regional ones"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/jurisdiction-vs"
* ^experimental = true
* ^extension.url = $valueset-supplement
* ^extension.valueCanonical = Canonical(ISO3166_TwoLetter_CS)

* $iso-3166#UZ
* include codes from system states-cs
