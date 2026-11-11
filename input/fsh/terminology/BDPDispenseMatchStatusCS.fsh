CodeSystem: BDPDispenseMatchStatusCS
Id: bdp-dispense-match-status-cs
Title: "BiologicallyDerivedProductDispense match status translations"
Description: "BiologicallyDerivedProductDispense match status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(bdp-dispense-match-status-cs, $bdp-dispense-match-status, 5.0.0)

* #crossmatched
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проведена проверка индивидуальной совместимости"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Individual moslik tekshiruvidan o‘tkazilgan"

* #selected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подобран"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tanlangan"

* #unmatched
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не подобран"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Moslashtirilmagan"

* #least-incompatible
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наименее несовместимый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Eng kam nomos keladigan"
