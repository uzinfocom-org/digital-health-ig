CodeSystem: CvdTobaccoUseCS
Id: cvd-tobacco-use-cs
Title: "CVD tobacco use answers"
Description: "Answer codes for tobacco product use in the cardiovascular disease risk screening questionnaire"
* insert OriginalCodeSystemDraft(cvd-tobacco-use-cs)
* ^language = #uz

* #scrn-0073-00001 "Iste'mol qilmaydi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не употребляет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Does not use"

* #scrn-0073-00002 "Iste'mol qiladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Употребляет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Uses"

* #scrn-0073-00003 "Tashlagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бросил"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quit"
