CodeSystem: IhdRiskCategoryCS
Id: ihd-risk-category-cs
Title: "IHD pre-test probability risk categories"
Description: "Risk categories derived from the pre-test probability (PTP/PTV) of ischemic heart disease, used to drive follow-up recommendations"
* insert OriginalCodeSystemDraft(ihd-risk-category-cs)
* ^language = #uz
* #low "Past xavf (0-5%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск (0-5%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk (0-5%)"
* #medium "O‘rtacha xavf (6-15%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск (6-15%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medium risk (6-15%)"
* #high "Yuqori xavf (16-100%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск (16-100%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk (16-100%)"