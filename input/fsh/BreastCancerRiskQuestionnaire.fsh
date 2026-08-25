
Instance: BreastCancerRiskQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Breast Cancer Risk Questionnaire"
Description: "Example for Questionnaire for Breast Cancer Risk"
* id = "ScreeningBreastCancerRiskQuestionnaire"
* url = "https://dhp.uz/fhir/core/Questionnaire/ScreeningBreastCancerRiskQuestionnaire"
* name = "BreastCancerRiskQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "Ko‘krak bezi saratoni xavfini baholash so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник по оценке риска рака молочной железы"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Breast Cancer Risk Assessment Questionnaire"
* description = "Bemorning ko‘krak bezi saratoni xavfini baholash uchun so‘rovnoma"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для оценки риска рака молочной железы пациента"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for assessing patient breast cancer risk"

// Question 1: Prior oncological diagnosis. Score: Yes=5, No=0
* item[+]
  * linkId = "cancer-history"
  * text = "Sizda avval onkologik kasalliklar tashxisi qo‘yilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас ранее диагностированы онкологические болезни?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you previously been diagnosed with oncological diseases?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
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

// Question 2: Age at menarche. Score: 7-11=3, 12-13=2, 14+=0
* item[+]
  * linkId = "menarche-age"
  * text = "Birinchi hayz ko‘rish necha yoshda bo‘lgan?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "В каком возрасте была первая менструация?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "At what age was your first menstruation?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00001 "7–11 yosh"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "7–11 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "7–11 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00002 "12–13 yosh"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "12–13 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "12–13 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00003 "14 yosh va undan katta"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "14 лет и старше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "14 years and older"

// Question 3: Breast density. Score: soft=0, medium=1, dense=3
* item[+]
  * linkId = "breast-density"
  * text = "Ko‘kragingiz zichligini qanday baholaysiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Как вы оцениваете плотность своей груди?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How would you assess your breast density?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00004 "Yumshoq"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Мягкая"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Soft"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00005 "O‘rtacha"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Средняя"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Medium"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00006 "Zich"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Плотная"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Dense"

// Question 4: Family history in first-degree relatives. Score: No=0, Yes=5
* item[+]
  * linkId = "family-history"
  * text = "Birinchi darajali qarindoshlarda (ona, opa-singil, qiz) ko‘krak bezi saratoni bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли случаи рака молочной железы у родственников первой линии (мать, сестра, дочь)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there a history of breast cancer in first-degree relatives (mother, sister, daughter)?"
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

// Question 5: Age at menopause. Score: no-menopause=0, 45-55=2, before-45=3, after-55=4
* item[+]
  * linkId = "menopause-age"
  * text = "Oxirgi hayz ko‘rish necha yoshda bo‘lgan?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "В каком возрасте была последняя менструация?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "At what age was your last menstruation?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00007 "Menopauza bo‘lmagan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет (менопаузы не было)"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No menopause yet"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00008 "45–55 yosh oralig‘ida"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "В промежутке 45–55 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Between 45–55 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00009 "45 yoshgacha"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "До 45 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Before 45 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00010 "55 yoshdan keyin"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "После 55 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "After 55 years"

// Question 6: Age at first childbirth. Score: before-30=0, after-30=2, never-given-birth=4
* item[+]
  * linkId = "first-birth-age"
  * text = "Birinchi tug‘ruq necha yoshda bo‘lgan?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "В каком возрасте были первые роды?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "At what age was your first childbirth?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00011 "30 yoshgacha"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "До 30 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Before 30 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00012 "30 yoshdan keyin"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "После 30 лет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "After 30 years"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00013 "Tug‘magan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не рожала"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Never gave birth"

// Question 7: Breastfeeding duration. Score: more-than-12m=0, up-to-6m=2, not-breastfed=3
* item[+]
  * linkId = "breastfeeding-duration"
  * text = "Oxirgi farzandingizni qancha vaqt emizgansiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Сколько времени вы кормили грудью последнего ребенка?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "How long did you breastfeed your last child?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00014 "12 oydan ko‘p"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Свыше 12 месяцев"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "More than 12 months"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00015 "6 oygacha"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "До 6 месяцев"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Up to 6 months"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00016 "Emizmagan"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не кормила грудью"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Did not breastfeed"

// Question 8: Breast/armpit lump in the last 3 months. Score: Yes=6, No=0
* item[+]
  * linkId = "breast-lump"
  * text = "So‘nggi 3 oyda ko‘krak yoki qo‘ltiq ostida qattiqlashish sezganmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Замечали ли вы уплотнения в груди или подмышечной области в последние 3 месяца?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you noticed lumps in the breast or armpit during the last 3 months?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 6
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

// Question 9: Nipple discharge unrelated to breastfeeding. Score: No=0, other-color=4, bloody=6
* item[+]
  * linkId = "nipple-discharge"
  * text = "Emizish bilan bog‘liq bo‘lmagan ko‘krak uchidan ajralma bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас выделения из соска, не связанные с кормлением?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had nipple discharge unrelated to breastfeeding?"
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

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00017 "Boshqa rangli ajralma"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, другого цвета"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, other color"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00018 "Qonli ajralma"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 6
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, кровянистые"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, bloody"

// Question 10: Change in breast appearance. Score: No=0, one-breast=5, both-breasts=7
* item[+]
  * linkId = "breast-appearance-changes"
  * text = "Ko‘krak ko‘rinishida o‘zgarish bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Изменился ли внешний вид груди (форма, размер, уплотнение, покраснение кожи, втяжение соска)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have there been changes in breast appearance (shape, size, redness, nipple retraction)?"
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

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00019 "Bir ko‘krakda"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, в одной груди"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, in one breast"

  * answerOption[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00020 "Ikkala ko‘krakda"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 7
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Да, в обеих грудях"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Yes, in both breasts"

// Question 11: Hormonal medication use. Score: No=0, Yes=3
* item[+]
  * linkId = "hormonal-therapy"
  * text = "Gormonal preparatlar qabul qilganmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Принимали ли вы гормональные препараты (противозачаточные, гормональные таблетки во время климакса)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you taken hormonal medications (contraceptives or hormone therapy)?"
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

// Computed result group: total score across all 11 questions and the resulting risk category.
* item[+]
  * linkId = "breast-cancer-risk-assessment-result"
  * text = "Ko‘krak bezi saratoni xavfini baholash natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат оценки риска рака молочной железы"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Breast cancer risk assessment result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #s1
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='cancer-history').answer.value.ofType(Coding).code.first() = 'Y', 5, 0)"
  * extension[$variable][+].valueExpression.name = #s2
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='menarche-age').answer.value.ofType(Coding).code.first() = 'age-7-11', 3, iif(%resource.item.where(linkId='menarche-age').answer.value.ofType(Coding).code.first() = 'age-12-13', 2, 0))"
  * extension[$variable][+].valueExpression.name = #s3
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='breast-density').answer.value.ofType(Coding).code.first() = 'dense', 3, iif(%resource.item.where(linkId='breast-density').answer.value.ofType(Coding).code.first() = 'medium', 1, 0))"
  * extension[$variable][+].valueExpression.name = #s4
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='family-history').answer.value.ofType(Coding).code.first() = 'Y', 5, 0)"
  * extension[$variable][+].valueExpression.name = #s5
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='menopause-age').answer.value.ofType(Coding).code.first() = 'after-55', 4, iif(%resource.item.where(linkId='menopause-age').answer.value.ofType(Coding).code.first() = 'before-45', 3, iif(%resource.item.where(linkId='menopause-age').answer.value.ofType(Coding).code.first() = 'age-45-55', 2, 0)))"
  * extension[$variable][+].valueExpression.name = #s6
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='first-birth-age').answer.value.ofType(Coding).code.first() = 'never-given-birth', 4, iif(%resource.item.where(linkId='first-birth-age').answer.value.ofType(Coding).code.first() = 'after-30', 2, 0))"
  * extension[$variable][+].valueExpression.name = #s7
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='breastfeeding-duration').answer.value.ofType(Coding).code.first() = 'not-breastfed', 3, iif(%resource.item.where(linkId='breastfeeding-duration').answer.value.ofType(Coding).code.first() = 'up-to-6m', 2, 0))"
  * extension[$variable][+].valueExpression.name = #s8
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='breast-lump').answer.value.ofType(Coding).code.first() = 'Y', 6, 0)"
  * extension[$variable][+].valueExpression.name = #s9
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='nipple-discharge').answer.value.ofType(Coding).code.first() = 'bloody', 6, iif(%resource.item.where(linkId='nipple-discharge').answer.value.ofType(Coding).code.first() = 'other-color', 4, 0))"
  * extension[$variable][+].valueExpression.name = #s10
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='breast-appearance-changes').answer.value.ofType(Coding).code.first() = 'both-breasts', 7, iif(%resource.item.where(linkId='breast-appearance-changes').answer.value.ofType(Coding).code.first() = 'one-breast', 5, 0))"
  * extension[$variable][+].valueExpression.name = #s11
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%resource.item.where(linkId='hormonal-therapy').answer.value.ofType(Coding).code.first() = 'Y', 3, 0)"

  * extension[$variable][+].valueExpression.name = #totalScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%s1 + %s2 + %s3 + %s4 + %s5 + %s6 + %s7 + %s8 + %s9 + %s10 + %s11"

  * item[+]
    * linkId = "breast-cancer-risk-total-score"
    * text = "Umumiy ball"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Суммарный балл"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total score"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Sum of the scored answers across all 11 questions"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%totalScore"

  * item[+]
    * linkId = "breast-cancer-risk-assessment-category"
    * text = "Ko‘krak bezi saratoni xavfi darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска рака молочной железы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Breast cancer risk level"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band from the total score: 0-5 low, 6-12 medium, 13-19 elevated, 20-100 high"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%totalScore <= 5, 'low', iif(%totalScore <= 12, 'medium', iif(%totalScore <= 19, 'elevated', 'high')))"

    * answerOption[+].valueCoding = $breast-cancer-risk-assessment-category-cs#low "Past xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk"

    * answerOption[+].valueCoding = $breast-cancer-risk-assessment-category-cs#medium "O‘rtacha xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk"

    * answerOption[+].valueCoding = $breast-cancer-risk-assessment-category-cs#elevated "Oshgan xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышенный риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Elevated risk"

    * answerOption[+].valueCoding = $breast-cancer-risk-assessment-category-cs#high "Yuqori xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk"


Instance: example-breast-cancer-risk-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Ko‘krak bezi saratoni xavfini baholash so‘rovnomasiga javob namunasi"
Description: "Bemorning ko‘krak bezi saratoni xavfini baholash so‘rovnomasiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(BreastCancerRiskQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "cancer-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "menarche-age"
  * answer[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00002 "12–13 yosh"

* item[+]
  * linkId = "breast-density"
  * answer[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00005 "O‘rtacha"

* item[+]
  * linkId = "family-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "menopause-age"
  * answer[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00008 "45–55 yosh oralig‘ida"

* item[+]
  * linkId = "first-birth-age"
  * answer[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00011 "30 yoshgacha"

* item[+]
  * linkId = "breastfeeding-duration"
  * answer[+].valueCoding = screening-breast-cancer-risk-cs#scrn-0069-00014 "12 oydan ko‘p"

* item[+]
  * linkId = "breast-lump"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "nipple-discharge"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-appearance-changes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "hormonal-therapy"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-cancer-risk-assessment-result"
  * item[+]
    * linkId = "breast-cancer-risk-total-score"
    * answer[+].valueInteger = 5
  * item[+]
    * linkId = "breast-cancer-risk-assessment-category"
    * answer[+].valueCoding = $breast-cancer-risk-assessment-category-cs#low "Past xavf"