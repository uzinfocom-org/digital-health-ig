CodeSystem: YesNoIndicatorCS
Id: yes-no-indicator-cs
Title: "Expanded yes/no indicator translations"
Description: "Expanded yes/no indicator (HL7 v2 table 0532) supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(yes-no-indicator-cs, $v2-0532, 3.0.0)

* #Y
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Да"

* #N
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нет"

* #NI
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ma'lumot yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нет информации"

* #NA
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qo'llanilmaydi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не применимо"

* #UNK
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"

* #NASK
  * ^designation[0].language = #uz
  * ^designation[=].value = "So'ralmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не спрашивали"

* #ASKU
  * ^designation[0].language = #uz
  * ^designation[=].value = "So'ralgan, lekin noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Спрашивали, но неизвестно"

* #NAV
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vaqtincha mavjud emas"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Временно недоступно"

* #NP
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mavjud emas"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отсутствует"
