ValueSet: EncounterReasonUseVS
Id: encounter-reason-use-vs
Title: "Encounter reason use"
Description: "Encounter reason uses"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-reason-use-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterReasonUseAmbulanceSCTCS)

* include encounter-reason-use-cs#mserv-0002-00001
* include encounter-reason-use-cs#mserv-0002-00002
* include encounter-reason-use-cs#mserv-0002-00003

* include codes from system encounter-purpose-cs

* include codes from system encounter-reason-use-ambulance-cs

* include $sct#409035008
* include $sct#419076005
* include $sct#281239006
* include $sct#418019003
* include $sct#429482004
* include $sct#125670008
* include $sct#25064002
* include $sct#7093002
* include $sct#40947009
* include $sct#262557004
* include $sct#62014003
* include $sct#371708003
* include $sct#90935002
* include $sct#419045004
* include $sct#125666000
* include $sct#112082005
* include $sct#370977006
* include $sct#409623005
* include $sct#65710008
* include $sct#236648008
* include $sct#3006004
* include $sct#75258004
* include $sct#131148009
* include $sct#249366005
* include $sct#44991000119100
* include $sct#74474003
* include $sct#422400008
* include $sct#74732009
* include $sct#271807003
* include $sct#19496008
* include $sct#214031005
* include $sct#698247007
* include $sct#22298006