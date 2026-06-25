ValueSet: TimingAbbreviationVS
Id: timing-abbreviation-vs
Title: "Timing Abbreviation ValueSet"
Description: "A value set of timing abbreviation codes (e.g. BID, TID, QID, C) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/timing-abbreviation-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(TimingAbbreviationCS)
* ^extension[1].url = $valueset-supplement
* ^extension[1].valueCanonical = Canonical(GTSAbbreviationCS)

// Include all codes from the standard systems
* include codes from system $v3-gts-abbreviation
* include codes from system $timing-abbreviation