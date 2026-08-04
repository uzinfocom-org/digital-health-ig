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


// Enumerated deliberately: this value set is bound required on UZCoreSocioeconomicObservation.code,
// and these four codes are exactly the ones its additional bindings key off, so widening the value
// set would leave the required binding with nothing to enforce.
* $sct#1303306008 "Eligible for benefit"
* $sct#105421008 "Educational achievement"
* $sct#14679004 "Occupation"
* $sct#82996008 "Social status"
