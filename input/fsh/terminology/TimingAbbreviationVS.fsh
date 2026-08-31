ValueSet: TimingAbbreviationVS
Id: timing-abbreviation-vs
Title: "Timing Abbreviation ValueSet"
Description: "A value set of timing abbreviation codes (e.g. BID, TID, QID, C) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/timing-abbreviation-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TimingAbbreviationCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GTSAbbreviationCS)



* $v3-gts-abbreviation#BID
* $v3-gts-abbreviation#TID
* $v3-gts-abbreviation#QID
* $v3-gts-abbreviation#AM
* $v3-gts-abbreviation#PM
* $v3-gts-abbreviation#QD
* $v3-gts-abbreviation#QOD
* $v3-gts-abbreviation#Q1H
* $v3-gts-abbreviation#Q2H
* $v3-gts-abbreviation#Q3H
* $v3-gts-abbreviation#Q4H
* $v3-gts-abbreviation#Q6H
* $v3-gts-abbreviation#Q8H
* $v3-gts-abbreviation#BED
* $v3-gts-abbreviation#WK
* $v3-gts-abbreviation#MO

* $timing-abbreviation#C