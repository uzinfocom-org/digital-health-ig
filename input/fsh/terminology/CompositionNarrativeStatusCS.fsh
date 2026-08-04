CodeSystem: CompositionNarrativeStatusCS
Id: narrative-status-cs
Title: "Composition narrative status"
Description: "Composition narrative status supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(narrative-status-cs, $composition-narrative-status, 5.0.0)

* #generated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматически создано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Avtomatik yaratilgan"
* #extensions
  * ^designation[0].language = #ru
  * ^designation[=].value = "Есть расширения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kengaytmalar mavjud"
* #additional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополнительная информация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo‘shimcha ma’lumot"
* #empty
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пусто"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bo'sh"
