CodeSystem: FertilityCS
Id: fertility-cs
Title: "fertility survey answers"
Description: "Answer codes for the fertility questionnaire"
* insert SupplementCodeSystem(fertility-cs, $fertility-questionnaire-cs, 0.5.0)

* #Y "Yes"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Да"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ha"

* #N "No"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'q"

* #NI "No Information"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет информации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'lumot yo‘q"

* #NA "Not Applicable"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неприменимо"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo‘llanilmaydi"

* #UNK "Unknown"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"

* #NASK "Not Asked"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не спрашивалось"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So‘ralmagan"

* #ASKU "Asked But Unknown"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спрошено, но неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So‘ralgan, ammo noma'lum"

* #NAV "Temporarily Unavailable"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Временно недоступно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaqtincha mavjud emas"

* #NP "Not Present"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсутствует"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud emas"