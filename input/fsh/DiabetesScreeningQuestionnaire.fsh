Instance: DiabetesScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Diabetes Screening Questionnaire"
Description: "Example for Diabetes Screening Questionnaire"
* url = "https://dhp.uz/fhir/core/Questionnaire/DiabetesScreeningQuestionnaire"
* name = "DiabetesScreeningQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* version = "1.0"
* title = "Qandli diabetni erta aniqlash skriningi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скрининг раннего выявления сахарного диабета"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Early Diabetes Screening"

// Question 1: Age band. Score: 40-64=5, 65+=7
* item[+]
  * linkId = "age"
  * text = "Yoshi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возраст"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Age"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00001 "40-64 yosh"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 5
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "40-64 года"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "40-64 years"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00002 "65 yosh va undan katta"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 7
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "65 лет и выше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "65 years and older"

// Question 2: Gender. No score.
* item[+]
  * linkId = "gender"
  * text = "Jinsi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Пол"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Gender"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $administrative-gender#male "Male"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Мужской"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Erkak"

  * answerOption[+].valueCoding = $administrative-gender#female "Female"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Женский"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Ayol"

// Question 3: Waist circumference band (male and female bands in one flat list, as in the source
// sheet). Score: below=0, mid=3, high=4 for both sexes.
* item[+]
  * linkId = "waist"
  * text = "Bel o‘lchami (sm)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Окружность талии (см)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Waist circumference (cm)"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00003 "94 sm dan past"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Ниже 94 см"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Below 94 cm"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00004 "94-101"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "94-101"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "94-101"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00005 "102 va undan yuqori"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "102 и выше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "102 and above"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00006 "80 sm dan past"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Ниже 80 см"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Below 80 cm"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00007 "80-87"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 3
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "80-87"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "80-87"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00008 "88 va undan yuqori"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "88 и выше"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "88 and above"

// Question 4: Sedentary lifestyle. Score: Yes=5, No=0
* item[+]
  * linkId = "sedentary"
  * text = "Kamharakat hayot tarzi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Малоподвижный образ жизни"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Sedentary lifestyle"
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

// Question 5: Family history of diabetes. Score: first-degree=4, second-degree=2, none=0
* item[+]
  * linkId = "family-history"
  * text = "Qarindoshlarda qandli diabet mavjudligi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наличие сахарного диабета у родственников"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Family history of diabetes"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00009 "Ota-ona, aka-uka, opa-singil"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 4
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "У родителей, братьев, сестёр"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Parents, siblings"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00010 "Buva, buvi, xola, amaki, tog'a"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 2
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "У дедушки, бабушки, тёти, дяди"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Grandparents, aunt, uncle"

  * answerOption[+].valueCoding = $fertility-questionnaire-cs#N "No"
  * answerOption[=].valueCoding.extension[$ordinal-value].valueDecimal = 0
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

// Question 6: Blood glucose (mmol/L). Free decimal value, no answerOptions/score.
* item[+]
  * linkId = "glucose"
  * text = "Qondagi shakar miqdori (mmol/l)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Уровень сахара в крови (ммоль/л)"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Blood glucose level (mmol/L)"
  * type = #decimal

// Question 7: When the blood sample was taken. No score.
* item[+]
  * linkId = "blood-sampling"
  * text = "Qon qachon olingan?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Когда сделан забор крови?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "When was blood sample taken?"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00011 "Och qoringa"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Натощак"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Fasting"

  * answerOption[+].valueCoding = screening-diabetes-cs#scrn-0074-00012 "Ovqatlangandan 2 soat o'tib"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Через 2 часа после приема пищи"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "2 hours after meal"

* item[+]
  * linkId = "diabetes-risk-result"
  * text = "Qandli diabet xavfini baholash natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат оценки риска сахарного диабета"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Diabetes risk assessment result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #ageCode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='age').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #ageScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%ageCode = 'age-40-64', 5, iif(%ageCode = 'age-65-plus', 7, 0))"

  * extension[$variable][+].valueExpression.name = #waistCode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='waist').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #waistScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%waistCode = 'sm-94-101' or %waistCode = 'sm-80-87', 3, iif(%waistCode = 'sm-102-plus' or %waistCode = 'sm-88-plus', 4, 0))"

  * extension[$variable][+].valueExpression.name = #sedentaryCode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='sedentary').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #sedentaryScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%sedentaryCode = 'Y', 5, 0)"

  * extension[$variable][+].valueExpression.name = #familyCode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='family-history').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #familyScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%familyCode = 'first-degree', 4, iif(%familyCode = 'second-degree', 2, 0))"

  * extension[$variable][+].valueExpression.name = #totalScore
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%ageScore + %waistScore + %sedentaryScore + %familyScore"

  * item[+]
    * linkId = "diabetes-total-score"
    * text = "Umumiy ball"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Суммарный балл"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total score"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Sum of scored answers: age + waist + sedentary lifestyle + family history"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%totalScore"

  * item[+]
    * linkId = "diabetes-risk-category"
    * text = "Qandli diabet xavfi darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска сахарного диабета"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Diabetes risk level"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band from the total score: <9 low, 9-11 moderate, 12-14 elevated, >14 high"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%totalScore < 9, 'low', iif(%totalScore <= 11, 'moderate', iif(%totalScore <= 14, 'elevated', 'high')))"

    * answerOption[+].valueCoding = $diabetes-risk-category-cs#low "Past xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск сахарного диабета"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk of diabetes"

    * answerOption[+].valueCoding = $diabetes-risk-category-cs#moderate "Xavf mavjud"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть риск сахарного диабета"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Risk of diabetes present"

    * answerOption[+].valueCoding = $diabetes-risk-category-cs#elevated "Oshgan xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышенный риск сахарного диабета"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Elevated risk of diabetes"

    * answerOption[+].valueCoding = $diabetes-risk-category-cs#high "Yuqori xavf"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск сахарного диабета"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk of diabetes"

  * item[+]
    * linkId = "recommendation-low"
    * text = "Sog'lom turmush tarzini yuritish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется ведение здорового образа жизни."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A healthy lifestyle is recommended."
    * type = #display
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #<
    * enableWhen[=].answerInteger = 9

  * item[+]
    * linkId = "recommendation-moderate"
    * text = "Parhez va jismoniy faollik (kuniga 5-10 ming qadam) tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется диета и физическая активность (5-10 тыс. шагов в день)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Diet and physical activity (5-10 thousand steps a day) are recommended."
    * type = #display
    * enableBehavior = #all
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 9
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #<=
    * enableWhen[=].answerInteger = 11

  * item[+]
    * linkId = "recommendation-elevated"
    * text = "Oilaviy shifokor nazorati va tavsiyalari tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуются контроль и рекомендации семейного врача."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Monitoring and family doctor's recommendations are advised."
    * type = #display
    * enableBehavior = #all
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 12
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #<=
    * enableWhen[=].answerInteger = 14

  * item[+]
    * linkId = "recommendation-high"
    * text = "Oilaviy shifokor nazorati va tavsiyalari tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуются контроль и рекомендации семейного врача."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Monitoring and family doctor's recommendations are advised."
    * type = #display
    * enableWhen[+].question = "diabetes-total-score"
    * enableWhen[=].operator = #>
    * enableWhen[=].answerInteger = 14

Instance: example-diabetes-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Qandli diabet skriningiga javob namunasi"
Description: "Bemorning qandli diabetni erta aniqlash skriningiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(DiabetesScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "age"
  * answer[+].valueCoding = screening-diabetes-cs#scrn-0074-00001 "40-64 yosh"

* item[+]
  * linkId = "gender"
  * answer[+].valueCoding = $administrative-gender#male "Male"

* item[+]
  * linkId = "waist"
  * answer[+].valueCoding = screening-diabetes-cs#scrn-0074-00004 "94-101"

* item[+]
  * linkId = "sedentary"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "family-history"
  * answer[+].valueCoding = screening-diabetes-cs#scrn-0074-00009 "Ota-ona, aka-uka, opa-singil"

* item[+]
  * linkId = "glucose"
  * answer[+].valueDecimal = 5.8

* item[+]
  * linkId = "blood-sampling"
  * answer[+].valueCoding = screening-diabetes-cs#scrn-0074-00011 "Och qoringa"

* item[+]
  * linkId = "diabetes-risk-result"
  * item[+]
    * linkId = "diabetes-total-score"
    * answer[+].valueInteger = 12
  * item[+]
    * linkId = "diabetes-risk-category"
    * answer[+].valueCoding = $diabetes-risk-category-cs#elevated "Oshgan xavf"