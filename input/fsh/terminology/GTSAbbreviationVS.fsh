ValueSet: GTSAbbreviationVS
Id: v3-gtc-abbreviation-vs
Title: "v3 GTS Abbreviation - UZ/RU Translations VS"
Description: "Value Set for v3 GTS Abbreviation codes (BID, TID, QID, etc.)"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/v3-gtc-abbreviation-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalAchievementCS)

* include codes from system $v3-gtc-abbreviation