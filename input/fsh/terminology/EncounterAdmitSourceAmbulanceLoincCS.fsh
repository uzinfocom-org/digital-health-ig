CodeSystem: EncounterAdmitSourceAmbulanceLoincCS
Id: encounter-admit-source-ambulance-loinc-cs
Title: "Encounter ambulance admit source LOINC translations"
Description: "Encounter ambulance admit source LOINC supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(encounter-admit-source-ambulance-loinc-cs, $loinc, 2.82.0)

* #LA28896-1 "Public place"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общественное место"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jamoat joyi"