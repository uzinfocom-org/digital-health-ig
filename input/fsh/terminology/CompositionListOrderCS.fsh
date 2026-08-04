CodeSystem: CompositionListOrderCS
Id: list-order-cs
Title: "Composition list order"
Description: "Composition list order supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(list-order-cs, $composition-list-order, 2.0.0)

* #user
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано пользователем"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Foydalanuvchi tomonidan tartiblangan"
* #system
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано системой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tizim tomonidan tartiblangan"
* #event-date
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по дате события"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hodisa sanasi bo‘yicha tartiblangan"
* #entry-date
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по дате добавления элемента"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro‘yxatga qo‘shilgan sana bo‘yicha tartiblangan"
* #priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по приоритету"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ustuvorlik bo‘yicha tartiblangan"
* #alphabetic
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано в алфавитном порядке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Alifbo bo‘yicha tartiblangan"
* #category
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по категории"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kategoriya bo‘yicha tartiblangan"
* #patient
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по пациентам"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor bo‘yicha guruhlangan tartib"
* #publication-date
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсортировано по дате публикации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nashr etilgan sana bo‘yicha tartiblangan"
