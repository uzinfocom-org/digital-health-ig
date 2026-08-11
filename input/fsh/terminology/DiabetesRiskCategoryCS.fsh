
CodeSystem: DiabetesRiskCategoryCS
Id: diabetes-risk-category-cs
Title: "Diabetes screening risk categories"
Description: "Risk categories derived from the diabetes screening total score, used to drive follow-up recommendations"
* insert OriginalCodeSystemDraft(diabetes-risk-category-cs)
* ^language = #uz
* #low "Past xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск сахарного диабета"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk of diabetes"
* #moderate "Xavf mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Есть риск сахарного диабета"
  * ^designation[+].language = #en
  * ^designation[=].value = "Risk of diabetes present"
* #elevated "Oshgan xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повышенный риск сахарного диабета"
  * ^designation[+].language = #en
  * ^designation[=].value = "Elevated risk of diabetes"
* #high "Yuqori xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск сахарного диабета"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk of diabetes"
