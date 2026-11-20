CodeSystem: AlertLevelCS
Id: alert-level-cs
Title: "Alert level"
Description: "Local classifier of the four public health alert levels set by the national alert regulation, clause 5.2"
* insert OriginalCodeSystemDraft(alert-level-cs)

* #alrtlv-0001-00001 "I - Qizil"
  * ^definition = "Threat of national significance that requires an immediate response"
  * ^designation[0].language = #ru
  * ^designation[=].value = "I - Красный"
  * ^designation[+].language = #en
  * ^designation[=].value = "I - Red"
* #alrtlv-0001-00002 "II - To'q sariq"
  * ^definition = "Serious event of regional significance that requires an urgent response"
  * ^designation[0].language = #ru
  * ^designation[=].value = "II - Оранжевый"
  * ^designation[+].language = #en
  * ^designation[=].value = "II - Orange"
* #alrtlv-0001-00003 "III - Sariq"
  * ^definition = "Event of local significance that requires checking and monitoring"
  * ^designation[0].language = #ru
  * ^designation[=].value = "III - Жёлтый"
  * ^designation[+].language = #en
  * ^designation[=].value = "III - Yellow"
* #alrtlv-0001-00004 "IV - Ko'k"
  * ^definition = "Information for records and summaries that requires no immediate action"
  * ^designation[0].language = #ru
  * ^designation[=].value = "IV - Синий"
  * ^designation[+].language = #en
  * ^designation[=].value = "IV - Blue"
