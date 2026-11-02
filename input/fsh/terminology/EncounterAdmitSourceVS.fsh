ValueSet: EncounterAdmitSourceVS
Id: encounter-admit-source-vs
Title: "Encounter admit source"
Description: "Encounter admit sources"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-admit-source-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterAdmitSourceCS)

* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterAdmitSourceAmbulanceCS)

* include $encounter-admit-source#hosp-trans
* include $encounter-admit-source#born
* include $encounter-admit-source#psych
* include $encounter-admit-source#other

* include codes from system admit-source-local-cs

* include $sct#257562009 "Airport"
* include $sct#257564005 "Apartment"
* include $sct#257630004 "House"
* include $sct#285141008 "Work environment"
* include $loinc#LA28896-1 "Public place"
* include $sct#257710009 "Street"
* include $sct#288553000 "Highway environment"
* include $sct#257698009 "School"
* include $sct#161116001 "Pre-school"
* include $sct#257561002 "Further education establishment"
* include $sct#257689006 "Restaurant"
* include $sct#257661008 "Police station"
* include $sct#257634008 "Inland water"
* include $sct#257628001 "Hostel"
* include $sct#257685000 "Railway station"
* include $sct#284762008 "Underground railway station"
* include $sct#257622000 "Healthcare facility"
* include $sct#224804009 "Rural environment"