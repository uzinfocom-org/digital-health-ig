CodeSystem: BloodProductInventoryStatusCS
Id: blood-product-inventory-status-cs
Title: "Blood Product Inventory Status"
Description: "Inventory statuses for blood products"
* insert OriginalCodeSystemDraft(blood-product-inventory-status-cs)

* #processing "Qayta ishlanmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В обработке"
  * ^designation[+].language = #en
  * ^designation[=].value = "Processing"

* #quarantine "Karantinda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "На карантине"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quarantine"

* #awaiting-tests "Tekshiruvlarni kutmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ожидает анализов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Awaiting tests"

* #available "Mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доступен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Available"

* #reserved "Zaxiralangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарезервирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reserved"

* #allocated "Ajratilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выделен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Allocated"

* #issued "Berildi (chiqarildi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдан"
  * ^designation[+].language = #en
  * ^designation[=].value = "Issued"

* #in-transit "Yo'lda (tashilmoqda)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В пути"
  * ^designation[+].language = #en
  * ^designation[=].value = "In transit"

* #received "Qabul qilindi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Получен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Received"

* #returned "Qaytarildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возвращён"
  * ^designation[+].language = #en
  * ^designation[=].value = "Returned"

* #recalled "Chaqirib olindi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отозван"
  * ^designation[+].language = #en
  * ^designation[=].value = "Recalled"

* #expired "Muddati o‘tgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Истёк срок годности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Expired"

* #discarded "Utilizatsiya qilindi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утилизирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Discarded"

* #consumed "Ishlatildi (sarflandi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Использован (израсходован)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Consumed"

* #missing "Yo‘qolgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пропал/утерян"
  * ^designation[+].language = #en
  * ^designation[=].value = "Missing"

* #damaged "Shikastlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повреждён"
  * ^designation[+].language = #en
  * ^designation[=].value = "Damaged"

* #temperature-excursion "Harorat me’yoridan chetlanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отклонение температурного режима"
  * ^designation[+].language = #en
  * ^designation[=].value = "Temperature excursion"

* #investigation "Tekshiruv jarayonida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "На расследовании"
  * ^designation[+].language = #en
  * ^designation[=].value = "Investigation"

* #accepted "Qabul qilingan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принят"
  * ^designation[+].language = #en
  * ^designation[=].value = "Accepted"

* #in-fractionation "Fraksiyalashda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В фракционировании"
  * ^designation[+].language = #en
  * ^designation[=].value = "In Fractionation"

* #in-cryopreservation "Krioconservatsiyada"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В криоконсервации"
  * ^designation[+].language = #en
  * ^designation[=].value = "In Cryopreservation"

* #being-disposed "Utilizatsiya qilinmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утилизируется"
  * ^designation[+].language = #en
  * ^designation[=].value = "Being Disposed"