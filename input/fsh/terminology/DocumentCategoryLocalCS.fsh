CodeSystem: DocumentCategoryLocalCS
Id: document-category-local-cs
Title: "Local Document Categories"
Description: "Local document categories used in Uzbekistan DHP (Card, Logbook, Form)."
* insert OriginalCodeSystemDraft(document-category-local-cs)

* #docum-0001 "Karta"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карта"
  * ^designation[+].language = #en
  * ^designation[=].value = "Card"

* #docum-0002 "Jurnal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Журнал"
  * ^designation[+].language = #en
  * ^designation[=].value = "Logbook"

* #docum-0003 "Blanka"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бланк"
  * ^designation[+].language = #en
  * ^designation[=].value = "Form"