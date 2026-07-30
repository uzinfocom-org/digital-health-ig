ValueSet: SocioeconomicObservationCodesVS
Id: socioeconomic-observation-codes-vs
Title: "Socioeconomic Observation Codes"
Description: "Codes for socioeconomic observations including benefits, education, profession, and social status"


* ^date = "2025-06-11"
* ^publisher = "Uzinfocom"

* ^experimental = true
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SocioeconomicObservationCodesCS)


* include codes from system $sct
// * $sct#1303306008 "Eligible for benefit"
// * $sct#105421008 "Educational achievement"
// * $sct#14679004 "Occupation"
// * $sct#82996008 "Social status"
