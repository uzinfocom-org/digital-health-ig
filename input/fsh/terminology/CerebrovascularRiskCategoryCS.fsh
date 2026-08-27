// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: CerebrovascularRiskCategoryCS
Id: cerebrovascular-risk-category-cs
Title: "Cerebrovascular disease risk categories"
Description: "Risk categories derived from the cerebrovascular disease early-detection questionnaire score"
* insert OriginalCodeSystemDraft(cerebrovascular-risk-category-cs)
* ^language = #uz

* #low "Past xavf (0-6)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск (0–6)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk (0-6)"
* #medium "O'rtacha xavf (7-13)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск (7–13)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medium risk (7-13)"
* #high "Yuqori xavf (14-30)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск (14–30)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk (14-30)"
