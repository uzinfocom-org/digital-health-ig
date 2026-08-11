
Instance: ScreeningCerebrovascularRiskQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Cerebrovascular Disease Early Detection Questionnaire"
Description: "Example for Cerebrovascular Disease Early Detection Questionnaire"
* url = "https://dhp.uz/fhir/core/Questionnaire/ScreeningCerebrovascularRiskQuestionnaire"
* name = "ScreeningCerebrovascularRisk"
* language = #uz
* status = #active
* subjectType = #Patient
* title = "Serebrovaskulyar patologiyani erta aniqlash so‘rovnomasi" 
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник по раннему выявлению цереброваскулярной патологии"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Cerebrovascular Disease Early Detection Questionnaire"

* item[+]
  * linkId = "blood-pressure"
  * text = "Sizda arterial qon bosimi yuqori (≥140/90 mm sim. ust.) yoki qon bosimini pasaytiruvchi dori vositalarini qabul qilasizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "У вас повышено артериальное давление (≥140/90 мм рт. ст.) или вы принимаете препараты для снижения давления?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have high blood pressure (≥140/90 mmHg) or do you take medication to lower your blood pressure?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"
    
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00001 "Bilmayman / muntazam o‘lchamayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / измеряю нерегулярно"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know / I measure it irregularly"

* item[+]
  * linkId = "heart-rhythm"
  * text = "Sizda yurak ritmi buzilishlari yoki boshqa yurak kasalliklari bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли у вас нарушения сердечного ритма или другие заболевания сердца?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have heart rhythm disorders or other heart diseases?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00002 "Ha, bo‘lmachalar fibrillyatsiyasi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, мерцательная аритмия"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, atrial fibrillation"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00003 "Ha, boshqa yurak kasalliklari"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, другие болезни сердца"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, other heart diseases"
    
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00004 "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know"

* item[+]
  * linkId = "diabetes"
  * text = "Sizga qandli diabet tashxisi qo‘yilganmi yoki qondagi glyukoza darajasi yuqori bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Диагностирован ли у вас сахарный диабет или отмечалось повышение уровня глюкозы в крови?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you been diagnosed with diabetes mellitus or have you had elevated blood glucose levels?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00005 "Ha, qandli diabet tashxisi qo‘yilgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, установлен диабет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, diagnosed diabetes"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00006 "Ha, prediabet"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, предиабет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, prediabetes"
    
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00007 "Bilmayman / oxirgi bir yil ichida tekshiruvdan o‘tmaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не обследовался в течение последнего года"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know / I have not been tested within the last year"

* item[+]
  * linkId = "smoking"
  * text = "Hozirda chekasizmi yoki ilgari chekkanmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Курите ли вы в настоящее время или курили раньше?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you currently smoke or have you smoked in the past?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00008 "Ha, hozir chekaman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, курю сейчас"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, I currently smoke"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00009 "5 yildan kam vaqt oldin tashlaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Бросил(а) менее 5 лет назад"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Quit less than 5 years ago"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00010 "5 yildan ko‘proq vaqt oldin tashlaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Бросил(а) более 5 лет назад"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Quit more than 5 years ago"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00011 "Hech qachon chekmaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Никогда не курил(а)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I have never smoked"


* item[+]
  * linkId = "cholesterol"
  * text = "Sizda xolesterin darajasi yuqorimi yoki uni pasaytiruvchi dori vositalarini qabul qilasizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышен ли у вас уровень холестерина или вы принимаете препараты для его снижения?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have elevated cholesterol levels or do you take cholesterol-lowering medication?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00012 "Ha, umumiy xolesterin > 5,2 mmol/l"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, общий холестерин > 5,2 ммоль/л"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, total cholesterol > 5.2 mmol/L"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00013 "Ha, statinlarni qabul qilaman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, принимаю статины"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, I take statins"
    
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00007 "Bilmayman / oxirgi bir yil ichida tekshiruvdan o‘tmaganman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не обследовался в течение последнего года"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know / I have not been tested within the last year"

* item[+]
  * linkId = "bmi-waist"
  * text = "Tana vazni indeksi (TVI/BMI) yoki bel aylanasining o‘lchami ortiqcha vaznni ko‘rsatadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Индекс массы тела (ИМТ) или окружность талии указывает на избыточный вес?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Does your body mass index (BMI) or waist circumference indicate excess weight?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00015 "TVI > 30 (semizlik)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "ИМТ > 30 (ожирение)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "BMI > 30 (obesity)"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00016 "TVI 25–30 / bel aylanasi me’yordan yuqori"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "ИМТ 25–30 / окружность талии выше порога"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "BMI 25–30 / waist circumference above the threshold"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00017 "Yo‘q, vaznim me’yorda"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет, вес в норме"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No, my weight is normal"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00004 "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know"

* item[+]
  * linkId = "physical-activity"
  * text = "Jismoniy faolligingiz qanday?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Какова ваша физическая активность?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "What is your level of physical activity?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00018 "Kamharakat turmush tarzi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Малоподвижный образ жизни"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Sedentary lifestyle"
    
  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00019 "O‘rtacha jismoniy faollik"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Умеренная активность"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Moderate physical activity"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00020 "Yuqori jismoniy faollik"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Высокая активность"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "High physical activity"

* item[+]
  * linkId = "stroke-history"
  * text = "Yaqin qarindoshlaringizda erta insult/yurak xuruji bo‘lganmi yoki sizda insult, TIA yoki yurak xuruji kuzatilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у близких родственников ранний инсульт/инфаркт либо у вас лично инсульт/ТИА/инфаркт?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have any of your close relatives had an early stroke/heart attack, or have you personally had a stroke/TIA/heart attack?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00021 "Ha, menda insult yoki TIA bo‘lgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, у меня был инсульт или ТИА"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, I have had a stroke or TIA"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00022 "Ha, qarindoshlarimda erta insult yoki yurak xuruji bo‘lgan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, у родственников был ранний инсульт / инфаркт"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, my relatives had an early stroke or heart attack"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00004 "Bilmayman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "I don't know"

* item[+]
  * linkId = "age"
  * text = "Yosh"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возраст"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Age"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00023 "45 yosh va undan katta"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "45 лет и старше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "45 years and older"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00024 "30–45 yosh"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "30–45 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "30–45 years"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00025 "30 yoshdan kichik"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Младше 30 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Under 30 years"

* item[+]
  * linkId = "alcohol-stress"
  * text = "Spirtli ichimlik iste’moli va stress darajangiz qanday?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Каков уровень употребления алкоголя и стресса?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "What is your level of alcohol consumption and stress?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00026 "Spirtli ichimliklarni muntazam ko‘p miqdorda iste’mol qilaman"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Регулярное употребление алкоголя в больших количествах"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Regular heavy alcohol consumption"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00027 "Doimiy yuqori stress darajasi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Постоянный высокий уровень стресса"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Constant high level of stress"

  * answerOption[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00028 "Ikkala omil ham mavjud"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Присутствуют оба фактора"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Both factors are present"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

Instance: example-cerebrovascular-risk-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Serebrovaskulyar xavf so‘rovnomasiga javob namunasi"
Description: "Bemorning sereброvaskulyar xavfini baholash so‘rovnomasiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(ScreeningCerebrovascularRiskQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "blood-pressure"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "heart-rhythm"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00002 "Ha, bo‘lmachalar fibrillyatsiyasi"

* item[+]
  * linkId = "diabetes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "smoking"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00010 "5 yildan ko‘proq vaqt oldin tashlaganman"

* item[+]
  * linkId = "cholesterol"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00012 "Ha, umumiy xolesterin > 5,2 mmol/l"

* item[+]
  * linkId = "bmi-waist"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00016 "TVI 25–30 / bel aylanasi me’yordan yuqori"

* item[+]
  * linkId = "physical-activity"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00019 "O‘rtacha jismoniy faollik"

* item[+]
  * linkId = "stroke-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "age"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00025 "30 yoshdan kichik"


* item[+]
  * linkId = "alcohol-stress"
  * answer[+].valueCoding = cerebrovascular-risk-cs#scrn-0072-00028 "Ikkala omil ham mavjud"
