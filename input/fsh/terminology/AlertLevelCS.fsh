CodeSystem: AlertLevelCS
Id: alert-level-cs
Title: "Alert level"
Description: "Local classifier of the four public health alert levels set by the national alert regulation, clause 5.2"

* insert OriginalCodeSystemDraft(alert-level-cs)

* #alrtlv-0001-00001 "I - Qizil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "I - Красный"
  * ^designation[+].language = #en
  * ^designation[=].value = "I - Red"

* #alrtlv-0001-00002 "II - To'q sariq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "II - Оранжевый"
  * ^designation[+].language = #en
  * ^designation[=].value = "II - Orange"

* #alrtlv-0001-00003 "III - Sariq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "III - Жёлтый"
  * ^designation[+].language = #en
  * ^designation[=].value = "III - Yellow"

* #alrtlv-0001-00004 "IV - Ko'k"
  * ^designation[0].language = #ru
  * ^designation[=].value = "IV - Синий"
  * ^designation[+].language = #en
  * ^designation[=].value = "IV - Blue"