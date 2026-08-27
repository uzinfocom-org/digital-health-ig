// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: CerebrovascularPhysicalActivityCS
Id: cerebrovascular-physical-activity-cs
Title: "Cerebrovascular screening: physical activity answers"
Description: "Answer codes for physical activity level in the cerebrovascular disease early-detection questionnaire"
* insert OriginalCodeSystemDraft(cerebrovascular-physical-activity-cs)
* ^language = #uz

* #sedentary "Kam harakatli, kuniga <30 daqiqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Малоподвижный образ жизни, <30 мин/день"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sedentary, <30 min/day"
* #moderate "O'rtacha, kuniga 30-60 daqiqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умеренная, 30–60 мин/день"
  * ^designation[+].language = #en
  * ^designation[=].value = "Moderate, 30-60 min/day"
* #high "Yuqori, kuniga >60 daqiqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокая, >60 мин/день"
  * ^designation[+].language = #en
  * ^designation[=].value = "High, >60 min/day"
