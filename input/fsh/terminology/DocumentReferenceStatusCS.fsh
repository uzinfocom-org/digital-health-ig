CodeSystem: DocumentReferenceStatusCS
Id: document-reference-status-cs
Title: "Document Reference Status Translations"
Description: "Document Reference Status supplement with translations in Uzbek and Russian for DHP."
* insert SupplementCodeSystemDraft(document-reference-status-cs, $document-reference-status, 5.0.0)

* #current
  * ^designation[0].language = #ru
  * ^designation[=].value = "Текущий"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Joriy"

* #superseded
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заменен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Almashtirilgan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введен по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"