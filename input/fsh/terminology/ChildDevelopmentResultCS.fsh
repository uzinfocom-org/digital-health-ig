
CodeSystem: ChildDevelopmentResultCS
Id: child-development-result-cs
Title: "Child development screening result categories"
Description: "Per-age-group result categories for the ChildDevelopmentScreeningQuestionnaire, derived from the percentage of milestone items answered Ha (Yes) within that age group"
* insert OriginalCodeSystemDraft(child-development-result-cs)
* ^language = #uz
* #formed "Ko‘nikma shakllangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Навык сформирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Skill formed"
* #partial "Qisman shakllangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частично сформирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Partially formed"
* #needs-development "Rivojlanish talab etiladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Требуется развитие"
  * ^designation[+].language = #en
  * ^designation[=].value = "Development needed"
* #needs-specialist-consult "Mutaxassis konsultatsiyasi talab etiladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Требуется консультация специалиста"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specialist consultation required"