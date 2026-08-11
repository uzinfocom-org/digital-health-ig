Instance: BreastCancerScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Breast Cancer Screening Questionnaire"
Description: "Example for Questionnaire for breast cancer risk screening"
* url = "https://dhp.uz/fhir/core/Questionnaire/BreastCancerScreeningQuestionnaire"
* name = "BreastCancerScreeningQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "Ko‘krak bezi saratonini aniqlash skrining so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скрининг на выявление рака груди"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Breast Cancer Screening Questionnaire"
* description = "Ko‘krak bezi saratoni xavf belgilarini aniqlash uchun skrining so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для скрининга на выявление признаков риска рака груди"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for breast cancer risk screening"

// Question 1: Mastitis history. Score: Yes=3, No=0
* item[+]
  * linkId = "mastitis-history"
  * text = "Sizda mastit bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "У вас был мастит?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had mastitis?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 2: Breast surgery history. Score: Yes=1, No=0
* item[+]
  * linkId = "breast-surgery-history"
  * text = "Sizda ko‘krak bezida operatsiya bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Была ли у вас операция на молочной железе?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had breast surgery?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 1
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

// Question 3: Breast trauma history. Score: Yes=3, No=0
* item[+]
  * linkId = "breast-trauma-history"
  * text = "Sizda ko‘krak bezi jarohati bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас травмы молочной железы?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had breast trauma?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 4: Fibrocystic mastopathy. Score: Yes=3, No=0
* item[+]
  * linkId = "fibrocystic-mastopathy"
  * text = "Sizda fibroz-kistoz mastopatiya bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Была ли у вас фиброзно-кистозная мастопатия?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had fibrocystic mastopathy?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 5: Axillary lymph node changes on palpation. Score: Yes=5, No=0
* item[+]
  * linkId = "axillary-lymph-node-changes"
  * text = "Qo‘ltiq osti limfa tugunlarida palpatsiyada o‘zgarishlar bormi (kattalashgan, og‘riqli)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли изменения в подмышечных лимфоузлах при пальпации (увеличены, болезненны)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are there changes in axillary lymph nodes on palpation (enlarged or painful)?"
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

// Question 6: Local breast changes (skin redness, orange-peel, discharge, lumps). Score: Yes=5, No=0
* item[+]
  * linkId = "breast-local-changes"
  * text = "Ko‘krak bezida o‘zgarishlar bormi (teri qizarishi, «limon po‘sti» belgisi, ko‘krak uchidan ajralma, qattiqlashish, o‘sma)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли у вас изменения в области молочной железы (покраснение кожи, эффект «лимонной корки», выделения из соска, уплотнения, опухоли)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have breast changes (skin redness, orange-peel skin, nipple discharge, lumps, tumors)?"
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

// Question 7: Gynecological diseases. Score: Yes=3, No=0
* item[+]
  * linkId = "gynecological-diseases"
  * text = "Sizda ginekologik kasalliklar bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у вас гинекологические заболевания?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had gynecological diseases?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 8: Cyclic breast pain related to menstrual cycle. Score: Yes=3, No=0
* item[+]
  * linkId = "cyclic-breast-pain"
  * text = "Hayz sikli bilan bog‘liq ko‘krak bezlarida og‘riq bormi (hayz boshlanishidan oldin)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли у вас боли в молочных железах, связанные с менструальным циклом (до начала менструации)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have breast pain related to the menstrual cycle (before menstruation)?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 9: Thyroid disease (goiter). Score: Yes=3, No=0
* item[+]
  * linkId = "thyroid-disease"
  * text = "Sizda qalqonsimon bez kasalligi (bo‘qoq) bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Было ли у вас заболевание щитовидной железы (зоб)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have you had thyroid disease (goiter)?"
  * type = #coding
  * required = true
  * answerOption[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
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

// Question 10: Family history of breast cancer. Score: Yes=5, No=0
* item[+]
  * linkId = "relation"
  * text = "Yaqin qarindoshlarda (buvi, ona, xola, opa/singil) ko‘krak bezi saratoni kuzatilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Был ли рак молочной железы у ваших родственников (бабушка, мать, тетя, сестра)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Have any of your relatives (grandmother, mother, aunt, sister) had breast cancer?"
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

* item[+]
  * linkId = "breast-cancer-risk-result"
  * text = "Ko‘krak bezi saratoni xavfini baholash natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат оценки риска рака молочной железы"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Breast cancer risk assessment result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #q1
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='mastitis-history').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q2
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='breast-surgery-history').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q3
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='breast-trauma-history').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q4
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='fibrocystic-mastopathy').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q5
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='axillary-lymph-node-changes').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q6
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='breast-local-changes').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q7
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='gynecological-diseases').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q8
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='cyclic-breast-pain').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q9
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='thyroid-disease').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q10
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='relation').answer.value.ofType(Coding).code.first()"

  * extension[$variable][+].valueExpression.name = #totalScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%q1 = 'Y', 3, 0) + iif(%q2 = 'Y', 1, 0) + iif(%q3 = 'Y', 3, 0) + iif(%q4 = 'Y', 3, 0) + iif(%q5 = 'Y', 5, 0) + iif(%q6 = 'Y', 5, 0) + iif(%q7 = 'Y', 3, 0) + iif(%q8 = 'Y', 3, 0) + iif(%q9 = 'Y', 3, 0) + iif(%q10 = 'Y', 5, 0)"

  * item[+]
    * linkId = "breast-cancer-total-score"
    * text = "Umumiy ball"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Суммарный балл"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total score"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Sum of the 10 weighted Yes/No answers"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%totalScore"

  * item[+]
    * linkId = "breast-cancer-risk-category"
    * text = "Ko‘krak bezi saratoni xavfi darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска рака молочной железы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Breast cancer risk level"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band from the total score: 0-10 low, 11-20 medium, 21-34 high"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%totalScore <= 10, 'low', iif(%totalScore <= 20, 'medium', 'high'))"

    * answerOption[+].valueCoding = $breast-cancer-risk-category-cs#low "Past xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск развития рака молочной железы"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk of breast cancer"

    * answerOption[+].valueCoding = $breast-cancer-risk-category-cs#medium "O‘rta xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск развития рака молочной железы"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk of breast cancer"

    * answerOption[+].valueCoding = $breast-cancer-risk-category-cs#high "Yuqori xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск развития рака молочной железы"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk of breast cancer"

  * item[+]
    * linkId = "recommendation-low"
    * text = "Odatiy skrining nazorati davom ettiriladi, alohida chora talab etilmaydi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Продолжается стандартное скрининговое наблюдение, дополнительных мер не требуется."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Routine screening continues; no additional action is required."
    * type = #display
    * enableWhen[+].question = "breast-cancer-total-score"
    * enableWhen[=].operator = #<=
    * enableWhen[=].answerInteger = 10

  * item[+]
    * linkId = "recommendation-medium"
    * text = "Skrining protokoli bo‘yicha standart marshrutlash talab etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Требуется стандартная маршрутизация по протоколу скрининга."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Standard routing per the screening protocol is required."
    * type = #display
    * enableBehavior = #all
    * enableWhen[+].question = "breast-cancer-total-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 11
    * enableWhen[+].question = "breast-cancer-total-score"
    * enableWhen[=].operator = #<=
    * enableWhen[=].answerInteger = 20

  * item[+]
    * linkId = "recommendation-high"
    * text = "Protokol bo‘yicha ustuvor yo‘naltirish/qo‘shimcha diagnostika talab etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Требуется приоритетное направление/дальнейшая диагностика по протоколу."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Priority referral / further diagnostic workup per the protocol is required."
    * type = #display
    * enableWhen[+].question = "breast-cancer-total-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 21


Instance: example-breast-cancer-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Ko‘krak bezi saratoni skriningiga javob namunasi"
Description: "Bemorning ko‘krak bezi saratonini aniqlash skrining so‘rovnomasiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(BreastCancerScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "mastitis-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-surgery-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-trauma-history"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "fibrocystic-mastopathy"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "axillary-lymph-node-changes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-local-changes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "gynecological-diseases"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "cyclic-breast-pain"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "thyroid-disease"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "relation"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "breast-cancer-risk-result"
  * item[+]
    * linkId = "breast-cancer-total-score"
    * answer[+].valueInteger = 9
  * item[+]
    * linkId = "breast-cancer-risk-category"
    * answer[+].valueCoding = $breast-cancer-risk-category-cs#low "Past xavf"
