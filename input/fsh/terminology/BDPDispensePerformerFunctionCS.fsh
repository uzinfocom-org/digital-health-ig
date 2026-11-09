CodeSystem: BDPDispensePerformerFunctionCS
Id: bdp-dispense-performer-function-cs
Title: "BiologicallyDerivedProductDispense performer function translations"
Description: "BiologicallyDerivedProductDispense performer function supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(bdp-dispense-performer-function-cs, $bdp-dispense-performer-function, 5.0.0)

* #group-and-type
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение группы крови ABO и RhD-принадлежности"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ABO qon guruhi va RhD turini aniqlash"

* #antibody-screen
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скрининг антител"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Antitanalarni skrining tekshiruvidan o‘tkazish"

* #antibody-identification
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентификация антител"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Antitanalarni identifikatsiya qilish"

* #crossmatch
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проверка индивидуальной совместимости"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Individual moslikni tekshirish"

* #release
  * ^designation[0].language = #ru
  * ^designation[=].value = "Разрешение на выдачу для клинического применения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Klinik qo‘llash uchun berishga ruxsat berish"

* #transport
  * ^designation[0].language = #ru
  * ^designation[=].value = "Транспортировка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashish"

* #receipt
  * ^designation[0].language = #ru
  * ^designation[=].value = "Получение для клинического применения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Klinik qo‘llash uchun qabul qilish"
