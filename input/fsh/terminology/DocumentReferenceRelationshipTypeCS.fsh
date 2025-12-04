CodeSystem: DocumentRelationshipTypeCS
Id: document-relationship-type-cs
Title: "Document Relationship Type Translations"
Description: "Translations for Document Relationship Type in Uzbek and Russian for DHP."
* insert SupplementCodeSystemDraft(document-relationship-type-cs, $document-relationship-type, 5.0.0)

* #replaces
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заменяет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'rnini bosadi"

* #transforms
  * ^designation[0].language = #ru
  * ^designation[=].value = "Преобразует"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartiradi"

* #signs
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подписывает"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Imzolaydi"

* #appends
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополняет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo‘shimcha qiladi"

* #incorporates
  * ^designation[0].language = #ru
  * ^designation[=].value = "Включает в состав"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'z ichiga oladi"

* #summarizes
  * ^designation[0].language = #ru
  * ^designation[=].value = "Суммирует / Обобщает"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xulosa qiladi"