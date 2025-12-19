CodeSystem: QuantityComparatorCS
Id: quantity-comparator-cs
Title: "Quantity comparator translations"
Description: "Quantity comparator codes with Uzbek and Russian translations"
* insert SupplementCodeSystem(quantity-comparator-cs, $quantity-comparator, 5.0.0)

* #<
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kichikroq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меньше чем"

* #<=
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kichik yoki teng"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меньше или равно"

* #>=
  * ^designation[0].language = #uz
  * ^designation[=].value = "Katta yoki teng"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Больше или равно"

* #>
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kattaroq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Больше чем"

* #ad
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ushbu umumiy miqdorga erishish uchun yetarli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Достаточно для достижения этого общего количества"

