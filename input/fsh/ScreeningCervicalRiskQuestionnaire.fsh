
Instance: ScreeningCervicalRiskQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Cervical Risk Questionnaire"
Description: "Example for Questionnaire for Cervical Risk"
* url = "https://dhp.uz/fhir/core/Questionnaire/ScreeningCervicalRiskQuestionnaire"
* name = "CervicalRiskQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "Bachadon bo‘yni kasalliklari xavfini baholash so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник по оценке риска заболеваний шейки матки"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Cervical Disease Risk Assessment Questionnaire"
* description = "Bemorning bachadon bo‘yni kasalliklari xavfini baholash uchun so‘rovnoma"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для оценки риска заболеваний шейки матки пациента"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for assessing patient cervical disease risk"

* item[+]
  * linkId = "gynecological-surgery-history"
  * text = "Ayol jinsiy a’zolarida operatsiya o‘tkazilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проводилась ли операция на женских половых органах?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had surgery on female reproductive organs?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00001 "Operatsiya bo‘lmagan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не было операций"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No surgeries"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00002 "Tuxumdonlarda operatsiya"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "На яичниках"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Ovarian surgery"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00003 "Bachadon bo‘yni biopsiyasi"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Биопсия шейки матки"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Cervical biopsy"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00004 "Servikal kanal poliplarini olib tashlash"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Удаление полипов цервикального канала"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Removal of cervical canal polyps"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00005 "Bachadon olib tashlangan, bachadon bo‘yni saqlangan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Удаление матки без шейки матки"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Removal of uterus without cervix"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00006 "Bachadon bo‘yni olib tashlangan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Удаление шейки матки"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Removal of cervix"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00007 "Diatermokoagulyatsiya"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Диатермокоагуляция"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Diathermocoagulation"

// Question 2: HPV test result. Score: negative=0, positive=5
* item[+]
  * linkId = "hpv-test-result"
  * text = "HPV testi natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат ВПЧ-теста"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "HPV test result"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00008 "Manfiy"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Отрицательный"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Negative"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00009 "Musbat"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Положительный"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Positive"

// Question 3: Abnormal Pap test result. Score: No=0, Yes=5
* item[+]
  * linkId = "abnormal-pap-test"
  * text = "PAP testi natijalari anomal bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результаты ПАП-теста аномальные?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Were the Pap test results abnormal?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

// Question 4: Marital status. Score: married=1, not-married=2, living-with-partner=2, divorced-widow=2
* item[+]
  * linkId = "marital-status"
  * text = "Oilaviy holatingiz qanday?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Ваше семейное положение?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "What is your marital status?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00010 "Turmush qurgan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "В браке"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Married"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00011 "Turmush qurmagan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не замужем"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Not married"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00012 "Sherik bilan yashaydi"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Проживаю с партнером"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Living with partner"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00013 "Ajrashgan / beva"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "В разводе / вдова"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Divorced / widow"

// Question 5: Age at sexual debut. Score: before-18=3, after-18=1
* item[+]
  * linkId = "sexual-debut-age"
  * text = "Jinsiy hayotni necha yoshda boshlagansiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "В каком возрасте вы начали половую жизнь?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "At what age did you start sexual activity?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00014 "18 yoshgacha"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "До 18 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Before 18 years"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00015 "18 yoshdan keyin"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "После 18 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "After 18 years"

// Question 6: Currently diagnosed with cervical cancer. Score: No=0, Yes=10
* item[+]
  * linkId = "current-cervical-cancer"
  * text = "Hozirda sizda bachadon bo‘yni saratoni tashxisi qo‘yilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Диагностирован ли у вас РШМ в данное время?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are you currently diagnosed with cervical cancer?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 10
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

// Question 7: History of cervical cancer. Score: No=0, Yes=5
* item[+]
  * linkId = "cervical-cancer-history"
  * text = "Anamnezda bachadon bo‘yni saratoni bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Был ли у вас рак шейки матки в анамнезе?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had cervical cancer in your medical history?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

// Question 8: Number of sexual partners. Score: 1-3=1, more-than-3=3
* item[+]
  * linkId = "sexual-partners-count"
  * text = "Nechta jinsiy sherigingiz bo‘lgan?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Сколько сексуальных партнеров у вас было?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How many sexual partners have you had?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00016 "1–3"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "1–3"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "1–3"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00017 "3 tadan ko‘p"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Больше 3"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "More than 3"

// Question 9: Ever had an HPV test. Score: Yes=0, No=0 (does not affect the total)
* item[+]
  * linkId = "hpv-test-history"
  * text = "Siz hech qachon HPV testini topshirganmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проходили ли вы когда-либо тест на ВПЧ?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you ever had an HPV test?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

// Question 10: Pregnancy history. Score: no-pregnancy=2, pregnancy-no-loss=0, pregnancy-with-loss=1
* item[+]
  * linkId = "pregnancy-history"
  * text = "Siz homilador bo‘lganmisiz? (Tushishlar va abortlarni hisobga olgan holda)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Вы были беременны? (Включая выкидыши и аборты)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you ever been pregnant? (Including miscarriages and abortions)"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00018 "Yo'q"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00019 "Ha, tushish va abortlarsiz"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, без выкидышей и абортов"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, without miscarriages or abortions"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00020 "Ha, abort yoki tushish bo‘lgan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, были аборты или выкидыши"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, with miscarriages or abortions"

// Question 11: Number of abortions/miscarriages. Score: 0=0, 1=1, 2=2, 3=3, 4+=4
* item[+]
  * linkId = "miscarriage-abortion-count"
  * text = "Abortlar yoki tushishlar soni"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Количество абортов или выкидышей"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Number of abortions or miscarriages"
  * type = #coding
  * required = false

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00021 "0"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "0"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "0"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00022 "1"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "1"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "1"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00023 "2"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "2"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "2"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00024 "3"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "3"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "3"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00025 "4 va undan ko‘p"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "4 и более"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "4 and more"

// Question 12: Smoking status. Score: non-smoker=0, smoker-gt-5-years=5, smoker-lt-5-years=2
* item[+]
  * linkId = "smoking-status"
  * text = "Siz chekasizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Вы курите?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you smoke?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00026 "Yo'q"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00027 "Ha, 5 yildan ortiq"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, более 5 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, more than 5 years"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00028 "Ha, 5 yildan kam"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, менее 5 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, less than 5 years"

* item[+]
  * linkId = "contraception-method"
  * text = "Kontratseptsiya usullaridan foydalanasizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Пользуетесь ли вы методами контрацепции?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you use contraception methods?"
  * type = #coding
  * required = true
  * repeats = true

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00029 "Gormonal kontratseptivlar"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Гормональные контрацептивы"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Hormonal contraceptives"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00030 "Bachadon ichki spirali"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Внутриматочная спираль"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Intrauterine device"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00031 "Prezervativlar"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Презервативы"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Condoms"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00032 "Boshqa"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другое"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Other"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00033 "Foydalanmayman"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не пользуюсь"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Do not use"

// Question 14: STI history. Score: No=0, Yes=3, unknown=1
* item[+]
  * linkId = "sti-history"
  * text = "Sizda jinsiy yo‘l bilan yuqadigan infeksiyalar bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас когда-нибудь инфекции, передающиеся половым путем?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you ever had sexually transmitted infections?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00034 "Bilmayman / eslay olmayman"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не помню"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know / Don't remember"

// Question 15: HIV history. Score: No=0, Yes=5, unknown=2
* item[+]
  * linkId = "hiv-history"
  * text = "Sizda OIV infeksiyasi aniqlanganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Была ли у вас когда-нибудь обнаружена ВИЧ-инфекция?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you ever been diagnosed with HIV infection?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00034 "Bilmayman / eslay olmayman"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю / не помню"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know / Don't remember"

// Question 16: Family history of cervical cancer. Score: No=0, Yes=3, unknown=1
* item[+]
  * linkId = "family-history-cervical-cancer"
  * text = "Onangiz yoki opa-singillaringizda bachadon bo‘yni saratoni bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вашей матери или сестер РШМ?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Did your mother or sisters have cervical cancer?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

  * answerOption[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00034 "Bilmayman / eslay olmayman"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не знаю"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Don't know"

// Question 17: HPV vaccination status. Score: No=3, Yes=-3 (vaccination is protective and lowers
// the total score)
* item[+]
  * linkId = "hpv-vaccination-status"
  * text = "Siz HPVga qarshi emlanganmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проводилась ли вам вакцинация от ВПЧ?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you been vaccinated against HPV?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = -3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

// Question 18: Contact bleeding. Score: No=0, Yes=5
* item[+]
  * linkId = "contact-bleeding"
  * text = "Sizda aloqa vaqtida qon ketish kuzatilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас контактные кровотечения?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you experienced contact bleeding?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes"

// Computed result group: total score across all 18 questions and the resulting risk category.
* item[+]
  * linkId = "cervical-risk-assessment-result"
  * text = "Bachadon bo‘yni kasalliklari xavfini baholash natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат оценки риска заболеваний шейки матки"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Cervical disease risk assessment result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #s1
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'cervical-biopsy' or %resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'uterus-removal-without-cervix' or %resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'cervix-removal', 2, iif(%resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'ovarian-surgery' or %resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'cervical-polyp-removal' or %resource.item.where(linkId='gynecological-surgery-history').answer.value.ofType(Coding).code.first() = 'diathermocoagulation', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s2
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='hpv-test-result').answer.value.ofType(Coding).code.first() = 'positive', 5, 0)"
  * extension[$variable][+].valueExpression.name = #s3
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='abnormal-pap-test').answer.value.ofType(Coding).code.first() = 'Y', 5, 0)"
  * extension[$variable][+].valueExpression.name = #s4
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='marital-status').answer.value.ofType(Coding).code.first() = 'married', 1, iif(%resource.item.where(linkId='marital-status').answer.value.ofType(Coding).code.first().exists(), 2, 0))"
  * extension[$variable][+].valueExpression.name = #s5
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='sexual-debut-age').answer.value.ofType(Coding).code.first() = 'before-18', 3, iif(%resource.item.where(linkId='sexual-debut-age').answer.value.ofType(Coding).code.first() = 'after-18', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s6
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='current-cervical-cancer').answer.value.ofType(Coding).code.first() = 'Y', 10, 0)"
  * extension[$variable][+].valueExpression.name = #s7
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='cervical-cancer-history').answer.value.ofType(Coding).code.first() = 'Y', 5, 0)"
  * extension[$variable][+].valueExpression.name = #s8
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='sexual-partners-count').answer.value.ofType(Coding).code.first() = 'partners-more-than-3', 3, iif(%resource.item.where(linkId='sexual-partners-count').answer.value.ofType(Coding).code.first() = 'partners-1-3', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s9
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "0"
  * extension[$variable][+].valueExpression.name = #s10
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='pregnancy-history').answer.value.ofType(Coding).code.first() = 'no-pregnancy', 2, iif(%resource.item.where(linkId='pregnancy-history').answer.value.ofType(Coding).code.first() = 'pregnancy-with-loss', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s11
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='miscarriage-abortion-count').answer.value.ofType(Coding).code.first() = 'count-4-plus', 4, iif(%resource.item.where(linkId='miscarriage-abortion-count').answer.value.ofType(Coding).code.first() = 'count-3', 3, iif(%resource.item.where(linkId='miscarriage-abortion-count').answer.value.ofType(Coding).code.first() = 'count-2', 2, iif(%resource.item.where(linkId='miscarriage-abortion-count').answer.value.ofType(Coding).code.first() = 'count-1', 1, 0))))"
  * extension[$variable][+].valueExpression.name = #s12
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='smoking-status').answer.value.ofType(Coding).code.first() = 'smoker-gt-5-years', 5, iif(%resource.item.where(linkId='smoking-status').answer.value.ofType(Coding).code.first() = 'smoker-lt-5-years', 2, 0))"
  * extension[$variable][+].valueExpression.name = #s13
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='contraception-method').answer.value.ofType(Coding).code.select(iif(this = 'hormonal', 2, iif(this = 'iud', 2, iif(this = 'other', 1, iif(this = 'none', 1, 0))))).sum()"
  * extension[$variable][+].valueExpression.name = #s14
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='sti-history').answer.value.ofType(Coding).code.first() = 'Y', 3, iif(%resource.item.where(linkId='sti-history').answer.value.ofType(Coding).code.first() = 'unknown', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s15
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='hiv-history').answer.value.ofType(Coding).code.first() = 'Y', 5, iif(%resource.item.where(linkId='hiv-history').answer.value.ofType(Coding).code.first() = 'unknown', 2, 0))"
  * extension[$variable][+].valueExpression.name = #s16
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='family-history-cervical-cancer').answer.value.ofType(Coding).code.first() = 'Y', 3, iif(%resource.item.where(linkId='family-history-cervical-cancer').answer.value.ofType(Coding).code.first() = 'unknown', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s17
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='hpv-vaccination-status').answer.value.ofType(Coding).code.first() = 'Y', -3, iif(%resource.item.where(linkId='hpv-vaccination-status').answer.value.ofType(Coding).code.first() = 'N', 3, 0))"
  * extension[$variable][+].valueExpression.name = #s18
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='contact-bleeding').answer.value.ofType(Coding).code.first() = 'Y', 5, 0)"

  * extension[$variable][+].valueExpression.name = #totalScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%s1 + %s2 + %s3 + %s4 + %s5 + %s6 + %s7 + %s8 + %s9 + %s10 + %s11 + %s12 + %s13 + %s14 + %s15 + %s16 + %s17 + %s18"

  * item[+]
    * linkId = "cervical-risk-total-score"
    * text = "Umumiy ball"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Суммарный балл"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total score"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Sum of the scored answers across all 18 questions (contraception-method sums all selected repeats; HPV vaccination 'Yes' subtracts 3 as a protective factor)"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%totalScore"

  * item[+]
    * linkId = "cervical-risk-category"
    * text = "Bachadon bo‘yni kasalliklari xavfi darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска заболеваний шейки матки"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Cervical disease risk level"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band from the total score: <=5 low, 6-12 medium, 13-19 elevated, >=20 high"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%totalScore <= 5, 'low', iif(%totalScore <= 12, 'medium', iif(%totalScore <= 19, 'elevated', 'high')))"

    * answerOption[+].valueCoding = $cervical-risk-category-cs#low "Past xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk"

    * answerOption[+].valueCoding = $cervical-risk-category-cs#medium "O‘rtacha xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk"

    * answerOption[+].valueCoding = $cervical-risk-category-cs#elevated "Oshgan xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышенный риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Elevated risk"

    * answerOption[+].valueCoding = $cervical-risk-category-cs#high "Yuqori xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk"

Instance: example-cervical-risk-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Bachadon bo‘yni kasalliklari xavfini baholash so‘rovnomasiga javob namunasi"
Description: "Bemorning bachadon bo‘yni kasalliklari xavfini baholash so‘rovnomasiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(ScreeningCervicalRiskQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "gynecological-surgery-history"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00001 "Operatsiya bo‘lmagan"

* item[+]
  * linkId = "hpv-test-result"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00008 "Manfiy"

* item[+]
  * linkId = "abnormal-pap-test"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "marital-status"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00010 "Turmush qurgan"

* item[+]
  * linkId = "sexual-debut-age"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00015 "18 yoshdan keyin"

* item[+]
  * linkId = "current-cervical-cancer"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "cervical-cancer-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "sexual-partners-count"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00016 "1–3"

* item[+]
  * linkId = "hpv-test-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "pregnancy-history"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00019 "Ha, tushish va abortlarsiz"

* item[+]
  * linkId = "miscarriage-abortion-count"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00021 "0"

* item[+]
  * linkId = "smoking-status"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00026 "Yo'q"

* item[+]
  * linkId = "contraception-method"
  * answer[+].valueCoding = screening-cervical-risk-cs#scrn-0070-00031 "Prezervativlar"

* item[+]
  * linkId = "sti-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "hiv-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "family-history-cervical-cancer"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "hpv-vaccination-status"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "contact-bleeding"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "cervical-risk-assessment-result"
  * item[+]
    * linkId = "cervical-risk-total-score"
    * answer[+].valueInteger = 0
  * item[+]
    * linkId = "cervical-risk-category"
    * answer[+].valueCoding = $cervical-risk-category-cs#low "Past xavf"
