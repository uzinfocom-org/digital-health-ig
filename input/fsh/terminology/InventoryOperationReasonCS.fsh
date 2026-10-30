CodeSystem: InventoryOperationReasonCS
Id: inventory-operation-reason-cs
Title: "Inventory Operation Reason Code System"
Description: "List of inventory operation reasons"
* insert OriginalCodeSystemDraft(inventory-operation-reason-cs)

* #invrs-0001-00001 "Rejali inventarizatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плановая инвентаризация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Scheduled count"

* #invrs-0001-00002 "Rejadan tashqari inventarizatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внеплановая инвентаризация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ad-hoc count"

* #invrs-0001-00003 "Boshlang'ich qoldiq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ввод начальных остатков"
  * ^designation[+].language = #en
  * ^designation[=].value = "Opening balance"

* #invrs-0001-00004 "Yangi kirim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поступление"
  * ^designation[+].language = #en
  * ^designation[=].value = "New receipt"

* #invrs-0001-00005 "Ko'chirib keltirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перемещение (приход)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Transfer in"

* #invrs-0001-00006 "Ko'chirib jo'natish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перемещение (расход)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Transfer out"

* #invrs-0001-00007 "Qaytarib olindi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возврат на склад"
  * ^designation[+].language = #en
  * ^designation[=].value = "Return in"

* #invrs-0001-00008 "Yetkazib beruvchiga qaytarish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возврат поставщику"
  * ^designation[+].language = #en
  * ^designation[=].value = "Return to supplier"

* #invrs-0001-00009 "Berildi / ishlatildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отпуск / использование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dispensed / used"

* #invrs-0001-00010 "Hisobdan chiqarish: muddati o'tgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Списание: истёк срок годности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Write-off: expired"

* #invrs-0001-00011 "Hisobdan chiqarish: shikastlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Списание: повреждение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Write-off: damaged"

* #invrs-0001-00012 "Hisobdan chiqarish: sifatsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Списание: несоответствие качеству"
  * ^designation[+].language = #en
  * ^designation[=].value = "Write-off: quality failure"

* #invrs-0001-00013 "Qaytarib chaqirib olish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отзыв продукции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Recall"

* #invrs-0001-00014 "Yo'qolgan / kamomad"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утеря / недостача"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lost / shortage"

* #invrs-0001-00015 "Ortiqcha aniqlandi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Излишки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surplus found"

* #invrs-0001-00016 "Tuzatish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Корректировка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Correction"

* #invrs-0001-00017 "Insonparvarlik yordami / xayriya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гуманитарная помощь / пожертвование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donation / humanitarian aid"

* #invrs-0001-00018 "Utilizatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утилизация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disposal / destruction"

* #invrs-0001-00019 "Foydalanishdan chiqarish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вывод из эксплуатации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Decommissioning"

* #invrs-0001-00020 "Qon tayyorlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заготовка крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood collection"

* #invrs-0001-00021 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочее"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"


