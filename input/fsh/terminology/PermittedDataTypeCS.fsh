CodeSystem: PermittedDataTypeCS
Id: permitted-data-type-cs
Title: "Permitted data type type translations"
Description: "Permitted data type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(permitted-data-type-cs, $permitted-data-type, 5.0.0)

* #Quantity
  * ^designation[0].language = #ru
  * ^designation[=].value = "Son bilan kiritiladi (birligi bilan)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится числом (с единицей измерения)"

* #CodeableConcept
  * ^designation[0].language = #ru
  * ^designation[=].value = "Tayyor ro'yxatdan tanlanadi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Выбирается из готового списка"

* #string
  * ^designation[0].language = #ru
  * ^designation[=].value = "Erkin matn kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится произвольный текст"

* #boolean
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ha yoki Yo'q tanlanadi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Выбирается Да или Нет"

* #integer
  * ^designation[0].language = #ru
  * ^designation[=].value = "Faqat butun son kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится только целое число"

* #Range
  * ^designation[0].language = #ru
  * ^designation[=].value = "Minimal va maksimal qiymat kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится диапазон значений"

* #Ratio
  * ^designation[0].language = #ru
  * ^designation[=].value = "Nisbat ko'rinishida kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится в виде отношения"

* #SampledData
  * ^designation[0].language = #ru
  * ^designation[=].value = "Qurilma o'lchovlari avtomatik uzatiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Данные автоматически поступают с прибора"

* #time
  * ^designation[0].language = #ru
  * ^designation[=].value = "Faqat vaqt kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится только время"

* #dateTime
  * ^designation[0].language = #ru
  * ^designation[=].value = "Sana va vaqt kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится дата и время"

* #Period
  * ^designation[0].language = #ru
  * ^designation[=].value = "Boshlanish va tugash vaqti kiritiladi"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Вводится начало и конец периода"

