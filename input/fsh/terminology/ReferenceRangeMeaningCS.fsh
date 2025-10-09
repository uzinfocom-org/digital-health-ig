CodeSystem: ReferenceRangeMeaningCS
Id: reference-range-meaning-cs
Title: "Reference range meaning translations"
Description: "Meaning of reference range, supplemented with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(reference-range-meaning-cs, $reference-meaning, 5.0.0)

* #type
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tur"
* #normal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Normal diapazon"
  * ^designation[+].language = #ru
  * ^designation[1].value = "Нормальный диапазон"
* #recommended
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tavsiya etilgan diapazon"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Рекомендуемый диапазон"
* #treatment
  * ^designation[0].language = #uz
  * ^designation[0].value = "Davolash diapazoni"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Диапазон лечения"
* #therapeutic
  * ^designation[0].language = #uz
  * ^designation[0].value = "Terapevtik maqsadli daraja"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Терапевтически желаемый уровень"
* #pre
  * ^designation[0].language = #uz
  * ^designation[0].value = "Terapiyagacha bo‘lgan maqsadli daraja"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Желаемый уровень до начала терапии"
* #post
  * ^designation[0].language = #uz
  * ^designation[0].value = "Terapiyadan keyingi maqsadli daraja"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Желаемый уровень после проведения терапии"
* #endocrine
  * ^designation[0].language = #uz
  * ^designation[0].value = "Endokrin"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Эндокринная"
* #pre-puberty
  * ^designation[0].language = #uz
  * ^designation[0].value = "Balog‘atgacha bo‘lgan davr"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Допубертатный период"
* #follicular
  * ^designation[0].language = #uz
  * ^designation[0].value = "Follikulyar bosqich"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Фолликулярная стадия"
* #midcycle
  * ^designation[0].language = #uz
  * ^designation[0].value = "O‘rtacha sikl"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Средний цикл"
* #luteal
  * ^designation[0].language = #uz
  * ^designation[0].value = "Lyuteinli"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Лютеиновая"
* #postmenopausal
  * ^designation[0].language = #uz
  * ^designation[0].value = "Postmenopauza"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Постменопауза"
