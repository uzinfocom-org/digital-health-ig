CodeSystem: BreastCancerRiskAssessmentCategoryCS
Id: breast-cancer-risk-assessment-category-cs
Title: "Breast cancer risk assessment categories"
Description: "Risk categories derived from the BreastCancerRiskQuestionnaire total score, used to drive follow-up"
* insert OriginalCodeSystemDraft(breast-cancer-risk-assessment-category-cs)
* ^language = #uz
* #low "Past xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk"
* #medium "O‘rtacha xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medium risk"
* #elevated "Oshgan xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повышенный риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "Elevated risk"
* #high "Yuqori xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk"