CodeSystem: ActReasonCS
Id: actreason-cs
Title: "Act reason translations"
Description: "Act reason supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(actreason-cs, $v3-ActReason, 2.1.0)
* #RECORDMGT
  * ^designation[0].language = #ru
  * ^designation[=].value = "управление медицинскими записями"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tibbiy yozuvlarni boshqarish"
* #HOPERAT
  * ^designation[0].language = #ru
  * ^designation[=].value = "операции с информацией в сфере здравоохранения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "health information operations"
* #GOV
  * ^designation[0].language = #ru
  * ^designation[=].value = "правительство"
  * ^designation[+].language = #uz
  * ^designation[=].value = "government"
* #HDIRECT
  * ^designation[0].language = #ru
  * ^designation[=].value = "каталог (управление каталогом пациентов)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "catalogue (patient catalogue management)"
* #HPRGRP
  * ^designation[0].language = #ru
  * ^designation[=].value = "отчетность по программе здравоохранения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "health program reporting"
* #HSYSADMIN
  * ^designation[0].language = #ru
  * ^designation[=].value = "администрация системы здравоохранения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "health system administration"
* #RECORDMGT
  * ^designation[0].language = #ru
  * ^designation[=].value = "управление медицинскими записями"
  * ^designation[+].language = #uz
  * ^designation[=].value = "medical records management"
* #PATRQT
  * ^designation[0].language = #ru
  * ^designation[=].value = "пациент запросил"
  * ^designation[+].language = #uz
  * ^designation[=].value = "patient requested"
* #FAMRQT
  * ^designation[0].language = #ru
  * ^designation[=].value = "семья запросила"
  * ^designation[+].language = #uz
  * ^designation[=].value = "family requested"
* #PWATRNY
  * ^designation[0].language = #ru
  * ^designation[=].value = "законный представитель пациента запросил"
  * ^designation[+].language = #uz
  * ^designation[=].value = "patient's legal representative requested"
* #DISASTER
  * ^designation[0].language = #ru
  * ^designation[=].value = "катастрофа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "disaster"
* #TREAT
  * ^designation[0].language = #ru
  * ^designation[=].value = "операции с информацией для оказания медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "health care information operations"
* #ETREAT
  * ^designation[0].language = #ru
  * ^designation[=].value = "операции с информацией для оказания экстренной медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "emergency health care information operations"



//Immunization Status Reason Codes
* #IMMUNE "immunity"
  * ^designation[0].language = #uz
  * ^designation[=].value = "immunitet"
  * ^designation[+].language = #ru
  * ^designation[=].value = "иммунитет"

* #MEDPREC "medical precaution"
  * ^designation[0].language = #uz
  * ^designation[=].value = "tibbiy ehtiyot chorasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Временный отказ от вакцинации по медицинским показаниям"

* #OSTOCK "product out of stock"
  * ^designation[0].language = #uz
  * ^designation[=].value = "sotuvda yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "отсутствие товара на складе"

* #PATOBJ "patient objection"
  * ^designation[0].language = #uz
  * ^designation[=].value = "bemorning e'tirozi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "возражение пациента"