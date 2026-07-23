CodeSystem: CvdRiskCategoryCS
Id: cvd-risk-category-cs
Title: "CVD risk categories"
Description: "Cardiovascular disease risk categories derived from the WHO/ISH risk chart, used to drive follow-up recommendations"
* insert OriginalCodeSystemDraft(cvd-risk-category-cs)
* ^language = #uz

* #low "Past xavf (<5%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск (<5%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk (<5%)"

* #moderate "O'rtacha xavf (5% - <10%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умеренный риск (5% - <10%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Moderate risk (5% - <10%)"

* #medium "O'rtacha xavf (10% - <20%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск (10% - <20%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medium risk (10% - <20%)"

* #high "Yuqori xavf (20% - <30%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск (20% - <30%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk (20% - <30%)"

* #very-high "Juda yuqori xavf (>=30%)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Очень высокий риск (>=30%)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Very high risk (>=30%)"
