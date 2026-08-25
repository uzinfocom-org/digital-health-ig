CodeSystem: BreastCancerRiskCategoryCS
Id: breast-cancer-risk-category-cs
Title: "Breast cancer screening risk categories"
Description: "Risk categories derived from the breast cancer screening total score, used to drive follow-up recommendations"
* insert OriginalCodeSystemDraft(breast-cancer-risk-category-cs)
* ^language = #uz
* #low "Past xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск развития рака молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk of breast cancer"
* #medium "O‘rta xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск развития рака молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medium risk of breast cancer"
* #high "Yuqori xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск развития рака молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk of breast cancer"