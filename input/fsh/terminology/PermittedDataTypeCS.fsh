CodeSystem: PermittedDataTypeCS
Id: permitted-data-type-cs
Title: "Permitted data type type translations"
Description: "Permitted data type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(permitted-data-type-cs, $permitted-data-type, 5.0.0)

* #Quantity
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится числом (с единицей измерения)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Son bilan kiritiladi (birligi bilan)"

* #CodeableConcept
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выбирается из готового списка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tayyor ro'yxatdan tanlanadi"

* #string
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится произвольный текст"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Erkin matn kiritiladi"

* #boolean
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выбирается Да или Нет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ha yoki Yo'q tanlanadi"

* #integer
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится только целое число"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faqat butun son kiritiladi"

* #Range
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится диапазон значений"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Minimal va maksimal qiymat kiritiladi"

* #Ratio
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится в виде отношения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nisbat ko'rinishida kiritiladi"

* #SampledData
  * ^designation[0].language = #ru
  * ^designation[=].value = "Данные автоматически поступают с прибора"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilma o'lchovlari avtomatik uzatiladi"

* #time
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится только время"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faqat vaqt kiritiladi"

* #dateTime
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится дата и время"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sana va vaqt kiritiladi"

* #Period
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вводится начало и конец периода"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshlanish va tugash vaqti kiritiladi"

