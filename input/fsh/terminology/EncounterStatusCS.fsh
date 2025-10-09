CodeSystem: EncounterStatusCS
Id: encounter-status-cs
Title: "Encounter status translations"
Description: "Encounter status codes with English and Russian translations"
* insert SupplementCodeSystem(encounter-status-cs, $encounter-status, 5.0.0)

* #planned 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rejalashtirilmoqda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Планируется"
* #in-progress 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jarayonda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе"
* #completed 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugallangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершенный"
* #cancelled 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"
* #entered-in-error 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"
* #unknown 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестный"
