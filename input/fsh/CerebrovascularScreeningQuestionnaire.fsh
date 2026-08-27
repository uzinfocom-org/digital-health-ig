Instance: CerebrovascularScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Cerebrovascular Disease Screening Questionnaire"
Description: "Early detection questionnaire for cerebrovascular disease"
* url = "https://dhp.uz/fhir/core/Questionnaire/CerebrovascularScreeningQuestionnaire"
* name = "CerebrovascularScreeningQuestionnaire"
* language = #uz
* status = #draft
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* subjectType = #Patient
* title = "Tserebrovaskulyar patologiyani erta aniqlash so'rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник раннего выявления цереброваскулярной патологии"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Cerebrovascular disease early-detection questionnaire"
* description = "30 yoshdan katta, faol dispanser kuzatuvida bo'lmagan bemorlar uchun so'rovnoma."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для пациентов старше 30 лет без активного Д-учета по цереброваскулярным патологиям."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for patients over 30 not under active dispensary follow-up for cerebrovascular disease."
* code = screening-code-cs#mserv-0007-00003 "Serebrovaskulyar kasalliklarni erta aniqlash so'rovnomasi"

* item[+]
  * linkId = "blood-pressure-status"
  * text = "Bosim ≥140/90 dan yuqorimi yoki bosim pasaytiruvchi dorilar qabul qilinadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышено ли давление ≥140/90 или принимаются препараты для снижения давления?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Blood pressure ≥140/90 or taking BP-lowering medication?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $cerebrovascular-blood-pressure-status-cs#yes "Ha"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"
  * answerOption[+].valueCoding = $cerebrovascular-blood-pressure-status-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $cerebrovascular-blood-pressure-status-cs#unknown "Bilmayman / muntazam o'lchamayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / измеряю нерегулярно"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know / measure irregularly"

* item[+]
  * linkId = "heart-condition"
  * text = "Yurak ritmi buzilishi yoki boshqa yurak kasalliklari bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Нарушения сердечного ритма или другие болезни сердца?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Heart rhythm disorder or other heart disease?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $sct#49436004 "Mercon aritmiya"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Мерцательная аритмия"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Atrial fibrillation"
  * answerOption[+].valueCoding = $cerebrovascular-heart-condition-cs#other_heart_disease "Boshqa yurak kasalliklari"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другие болезни сердца"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other heart disease"
  * answerOption[+].valueCoding = $cerebrovascular-heart-condition-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $cerebrovascular-heart-condition-cs#unknown "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know"

* item[+]
  * linkId = "diabetes-status"
  * text = "Qandli diabet yoki glyukoza darajasining oshishi bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Сахарный диабет или повышение глюкозы?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Diabetes mellitus or elevated glucose?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $sct#73211009 "Diabet tashxisi qo'yilgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Установлен диабет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Diabetes diagnosed"
  * answerOption[+].valueCoding = $sct#714628002 "Prediabet"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Предиабет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Prediabetes"
  * answerOption[+].valueCoding = $cerebrovascular-diabetes-status-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $cerebrovascular-diabetes-status-cs#unknown "Bilmayman / tekshirilmagan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не обследовался"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know / not tested"

* item[+]
  * linkId = "smoking-status"
  * text = "Hozir yoki oldin chekkanmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Курение сейчас или в прошлом?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Smoking now or in the past?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $sct#77176002 "Hozir chekaman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Курю сейчас"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Currently smoking"
  * answerOption[+].valueCoding = $cerebrovascular-smoking-status-cs#quit_less_than_5_years "5 yildan kam vaqt oldin tashladim"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Бросил менее 5 лет назад"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Quit less than 5 years ago"
  * answerOption[+].valueCoding = $cerebrovascular-smoking-status-cs#quit_more_than_5_years "5 yildan ko'p vaqt oldin tashladim"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Бросил более 5 лет назад"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Quit more than 5 years ago"
  * answerOption[+].valueCoding = $sct#266919005 "Hech qachon chekmaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Никогда не курил"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Never smoked"

* item[+]
  * linkId = "cholesterol-status"
  * text = "Xolesterin oshganmi yoki statinlar qabul qilinadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышен холестерин или принимаются статины?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High cholesterol or taking statins?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $sct#13644009 "Umumiy xolesterin > 5,2 mmol/l"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Общий холестерин > 5,2 ммоль/л"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Total cholesterol > 5.2 mmol/L"
  * answerOption[+].valueCoding = $cerebrovascular-cholesterol-status-cs#taking_statins "Statin qabul qilaman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Принимаю статины"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Taking statins"
  * answerOption[+].valueCoding = $cerebrovascular-cholesterol-status-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $cerebrovascular-cholesterol-status-cs#unknown "Bilmayman / tekshirilmagan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не проверял за год"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know / not checked this year"

* item[+]
  * linkId = "weight-status"
  * text = "TVI yoki bel aylanasi bo'yicha ortiqcha vazn bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Избыточный вес по ИМТ или окружности талии?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Overweight by BMI or waist circumference?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $sct#414916001 "TVI > 30"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "ИМТ > 30"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "BMI > 30"
  * answerOption[+].valueCoding = $sct#238131007 "TVI 25-30 yoki bel aylanasi oshgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "ИМТ 25–30 или талия > 102 см (муж) / > 88 см (жен)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "BMI 25-30 or waist > 102 cm (male) / > 88 cm (female)"
  * answerOption[+].valueCoding = $cerebrovascular-weight-status-cs#normal "Vazn me'yorida"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Вес в норме"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Normal weight"
  * answerOption[+].valueCoding = $cerebrovascular-weight-status-cs#unknown "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know"

* item[+]
  * linkId = "physical-activity"
  * text = "Jismoniy faollik darajasi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Уровень физической активности?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Physical activity level?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $cerebrovascular-physical-activity-cs#sedentary "Kam harakatli, kuniga 30 daqiqadan kam"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Малоподвижный образ жизни, <30 мин/день"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Sedentary, <30 min/day"
  * answerOption[+].valueCoding = $cerebrovascular-physical-activity-cs#moderate "O'rtacha, kuniga 30-60 daqiqa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Умеренная, 30–60 мин/день"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Moderate, 30–60 min/day"
  * answerOption[+].valueCoding = $cerebrovascular-physical-activity-cs#high "Yuqori, kuniga 60 daqiqadan ortiq"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Высокая, >60 мин/день"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "High, >60 min/day"

* item[+]
  * linkId = "family-history"
  * text = "65 yoshgacha qarindoshlarda insult/infarkt yoki shaxsan insult, TIA, infarkt bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Инсульт/инфаркт у родственников до 65 лет либо лично инсульт, ТИА, инфаркт?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Stroke/heart attack in relatives before age 65, or personal stroke, TIA, heart attack?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $cerebrovascular-family-history-cs#personal_stroke_tia "Shaxsan insult yoki TIA bo'lgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "У меня был инсульт или ТИА"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Personal stroke or TIA"
  * answerOption[+].valueCoding = $cerebrovascular-family-history-cs#family_early_stroke_heart_attack "Qarindoshlarda erta insult/infarkt"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Ранний инсульт/инфаркт у родственников"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Early stroke/heart attack in relatives"
  * answerOption[+].valueCoding = $cerebrovascular-family-history-cs#no "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * answerOption[+].valueCoding = $cerebrovascular-family-history-cs#unknown "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know"

* item[+]
  * linkId = "alcohol-stress-level"
  * text = "Alkogol va stress darajasi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Уровень употребления алкоголя и стресса?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Alcohol use and stress level?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $cerebrovascular-alcohol-stress-level-cs#regular_alcohol "Muntazam ko'p alkogol"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Регулярно много алкоголя"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Regular heavy alcohol use"
  * answerOption[+].valueCoding = $cerebrovascular-alcohol-stress-level-cs#high_stress "Doimiy yuqori stress"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Постоянный высокий стресс"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Chronic high stress"
  * answerOption[+].valueCoding = $cerebrovascular-alcohol-stress-level-cs#both "Ikkala omil ham"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Оба фактора"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Both factors"
  * answerOption[+].valueCoding = $cerebrovascular-alcohol-stress-level-cs#none "Yo'q"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "None"

* item[+]
  * linkId = "age"
  * text = "So'rovnoma to'ldirilgan paytdagi bemor yoshi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возраст пациента на момент заполнения"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Patient's age at time of completion"
  * type = #integer
  * required = true

// cerebrovascular-risk-result: populated by the DHP backend after computing DMED's own
// algorithm (point table: bp yes=3/unknown=2/no=0; heart afib=4/other=3/unknown=1/no=0;
// diabetes=3/prediabetes=2/unknown=1/no=0; smoking current=3/quit<5y=2/quit>5y=1/never=0;
// cholesterol high/statins=2/unknown=1/no=0; weight obesity=3/overweight=2/unknown=1/normal=0;
// activity sedentary=2/moderate=1/high=0; family stroke-tia=5/early=2/unknown=1/no=0; alcohol
// both=3/regular=2/stress=2/none=0; age 45+=3/30-45=2/<30=0; bands low 0-6/medium 7-13/high
// 14-30) — not computed client-side via SDC. See top-of-file note.
* item[+]
  * linkId = "cerebrovascular-risk-result"
  * text = "Tserebrovaskulyar patologiya xavfini baholash"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Оценка риска цереброваскулярной патологии"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Cerebrovascular disease risk assessment"
  * type = #group

  * item[+]
    * linkId = "cerebrovascular-risk-score"
    * text = "Xavf ballari yig'indisi (maks. 30)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Сумма баллов риска (макс. 30)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Risk point total (max 30)"
    * type = #integer
    * readOnly = true

  * item[+]
    * linkId = "cerebrovascular-risk-category"
    * text = "Xavf kategoriyasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Категория риска"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Risk category"
    * type = #coding
    * readOnly = true
    * answerOption[+].valueCoding = $cerebrovascular-risk-category-cs#low "Past xavf (0-6)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск (0–6)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk (0–6)"
    * answerOption[+].valueCoding = $cerebrovascular-risk-category-cs#medium "O'rtacha xavf (7-13)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск (7–13)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk (7–13)"
    * answerOption[+].valueCoding = $cerebrovascular-risk-category-cs#high "Yuqori xavf (14-30)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск (14–30)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk (14–30)"
