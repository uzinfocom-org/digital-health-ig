ValueSet: EpisodeOfCareStatusVS
Id: episode-of-care-status-vs
Title: "EpisodeOfCare status value set"
Description: "Allowed codes for EpisodeOfCare status in Uzbekistan's health information exchange."
* ^url = "https://dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EpisodeOfCareStatusCS)

* include codes from system $episode-of-care-status
