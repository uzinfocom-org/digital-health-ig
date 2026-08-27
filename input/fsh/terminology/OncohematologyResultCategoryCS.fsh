// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: OncohematologyResultCategoryCS
Id: oncohematology-result-category-cs
Title: "Oncohematology screening result categories"
Description: "Result categories for the oncohematology early-detection screening questionnaire"
* insert OriginalCodeSystemDraft(oncohematology-result-category-cs)
* ^language = #uz

* #below_threshold "Yo'naltirish chegarasiga yetmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Порог направления не достигнут (0–1 положительный ответ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Referral threshold not reached (0-1 positive answer)"

* #referral_needed "Konsultatsiya kerak"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Необходима консультация семейного врача (≥2 положительных ответа)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family doctor consultation needed (>=2 positive answers)"
