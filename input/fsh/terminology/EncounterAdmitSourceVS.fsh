ValueSet: EncounterAdmitSourceVS
Id: encounter-admit-source-vs
Title: "Encounter admit source translations"
Description: "Encounter admit source codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-admit-source-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterAdmitSourceCS)

* include $encounter-admit-source#hosp-trans
* include $encounter-admit-source#born
* include $encounter-admit-source#psych
* include $encounter-admit-source#other

* include codes from system admit-source-local-cs

* include codes from system encounter-admit-source-ambulance-cs
* $loinc#LA35230-4 "Airport"
* $loinc#LA34973-0 "Apartment"
* $loinc#LA27336-9 "Home (private home/apt., board/care, assisted living, group home, transitional living)"
* $sct#285141008 "Workplace"
* $loinc#LA28896-1 "Public place"
* $loinc#LP441481-1 "Street"
* $loinc#LP125133-1 "School"
* $loinc#LA19748-5 "Pre-school"
* $loinc#LA30306-7 "Restaurant"
* $sct#257661008 "Police station"
* $loinc#LP212329-9 "Body of water"
* $loinc#LA28898-7 "Educational institution"
* $loinc#LA14089-9 "Street or highway"
* $loinc#LA35271-8 "Dorm/Dormitory"
