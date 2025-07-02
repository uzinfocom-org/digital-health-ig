ValueSet: IdentifierTypeVS
Id: identifier-type-vs
Title: "Types of possible identifiers"
Description: "Defines identifier `type`s in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/identifier-type-vs"
* ^experimental = true

* include $identifier-type#NI 
  * ^designation[0].language = #ru
  * ^designation[=].value = "ПИНФЛ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "JShShIR"

* include $identifier-type#PPN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серия и номер паспорта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Seriya va pasport raqami"

* include $identifier-type#BCT
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серия и номер свидетельства о рождении"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tug'ilganlik haqidagi guvohnomaning seriyasi va raqami"

* include $identifier-type#DL
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серия и номер водительского удостоверения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Haydovchilik guvohnomasi seriyasi va raqami"

* include $identifier-type#DP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серия и номер дипломатического паспорта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Diplomatik pasport seriyasi va raqami"

* include $identifier-type#HC
  * ^designation[0].language = #ru
  * ^designation[=].value = "Номер медицинской карты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy karta raqami"

* include $identifier-type#MI
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серия и номер военного билета"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Harbiy guvohnomaning seriyasi va raqami"

* include $identifier-type#PCN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Номер, присваиваемый человеку, находящемуся в заключении"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qamoqqa olingan shaxsga berilgan raqam"

* include $identifier-type#MD
  * ^designation[0].language = #ru
  * ^designation[=].value = "Номер медицинской лицензии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy litsenziya raqami"

* include $identifier-type#EN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Номер работодателя"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ish beruvchi raqami"

* include $identifier-type#TAX
  * ^designation[0].language = #ru
  * ^designation[=].value = "Налоговый идентификационный номер"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Soliq identifikatsiya raqami"

* include $identifier-type#DR
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регистрационный номер донора"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Donorning ro'yxatga olish raqami"

* include $identifier-type#ACSN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентификатор доступа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kirish identifikatori"

* include $identifier-type#UDI
  * ^designation[0].language = #ru
  * ^designation[=].value = "Универсальный идентификатор устройства"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Universal qurilma identifikatori"

* include codes from system LocationKindsCS
