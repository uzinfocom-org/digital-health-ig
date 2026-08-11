Instance: ScreeningIHDProbabilityQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Preliminary Ischemic Heart Disease Probability Questionnaire"
Description: "Questionnaire for preliminary ischemic heart disease probability assessment"
* url = "https://dhp.uz/fhir/core/Questionnaire/ScreeningIHDProbabilityQuestionnaire"
* name = "IHDProbabilityQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "Yurak ishemik kasalligi ehtimolini dastlabki baholash so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник предварительной вероятности ишемической болезни сердца"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Preliminary Ischemic Heart Disease Probability Questionnaire"
* description = "Yurak ishemik kasalligi ehtimolini dastlabki baholash uchun so‘rovnoma"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для предварительной оценки вероятности ишемической болезни сердца"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for preliminary ischemic heart disease probability assessment"

// Question 1: Chest pain
* item[+]
  * linkId = "chest-pain"
  * text = "Ko‘krak qafasida og‘riq bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли боль в области груди?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you have chest pain?"
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

// Question 2: Pain during exertion or emotional stress
* item[+]
  * linkId = "exertional-pain"
  * text = "Ushbu og‘riq jismoniy yuklama yoki hissiy stress paytida paydo bo‘ladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возникает ли эта боль при физической нагрузке или эмоциональном стрессе?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Does the pain occur during physical exertion or emotional stress?"
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

// Question 3: Relief at rest or after nitrates
* item[+]
  * linkId = "relief-at-rest"
  * text = "Og‘riq tinch holatda yoki nitrat qabul qilgandan keyin bir necha daqiqada o‘tadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проходит ли боль в покое или после приема нитратов в течение нескольких минут?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Does the pain resolve at rest or after taking nitrates within a few minutes?"
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

// Question 4: Dyspnea
* item[+]
  * linkId = "dyspnea"
  * text = "Nafas qisishi yoki havo yetishmasligi hissi bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Беспокоит одышка или чувство нехватки воздуха?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do you experience shortness of breath or air hunger?"
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

* item[+]
  * linkId = "ihd-probability-result"
  * text = "Yurak ishemik kasalligi ehtimolini baholash natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат оценки вероятности ишемической болезни сердца"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Ischemic heart disease probability assessment result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #q1
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='chest-pain').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q2
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='exertional-pain').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q3
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='relief-at-rest').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #q4
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='dyspnea').answer.value.ofType(Coding).code.first()"

  * extension[$variable][+].valueExpression.name = #posCount
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%q1 = 'Y', 1, 0) + iif(%q2 = 'Y', 1, 0) + iif(%q3 = 'Y', 1, 0)"

  * extension[$variable][+].valueExpression.name = #painType
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%posCount = 3, 'typical', iif(%posCount = 2, 'atypical', 'non-anginal'))"

  * extension[$variable][+].valueExpression.name = #dyspneaFlag
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%q4 = 'Y'"

  * extension[$variable][+].valueExpression.name = #useDyspneaTable
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%posCount = 0 and %dyspneaFlag"

  * extension[$variable][+].valueExpression.name = #age
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%patient.birthDate.exists(), today().toString().substring(0,4).toInteger() - %patient.birthDate.toString().substring(0,4).toInteger(), {})"
  * extension[$variable][+].valueExpression.name = #sexcode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%patient.gender"

  * extension[$variable][+].valueExpression.name = #ageIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%age.exists() and %age >= 30, iif(%age < 40, 0, iif(%age < 50, 1, iif(%age < 60, 2, iif(%age < 70, 3, 4)))), {})"
  * extension[$variable][+].valueExpression.name = #sexIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%sexcode = 'male', 0, iif(%sexcode = 'female', 1, {}))"
  * extension[$variable][+].valueExpression.name = #idx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%ageIdx.exists() and %sexIdx.exists(), %ageIdx * 2 + %sexIdx, {})"

  * extension[$variable][+].valueExpression.name = #gridTypical
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "'03052210321344165227'"
  * extension[$variable][+].valueExpression.name = #gridAtypical
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "'04031006170626113419'"
  * extension[$variable][+].valueExpression.name = #gridNonAnginal
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "'01010302110322062410'"
  * extension[$variable][+].valueExpression.name = #gridDyspnea
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "'00031203200927143212'"

  * extension[$variable][+].valueExpression.name = #selectedGrid
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%useDyspneaTable, %gridDyspnea, iif(%painType = 'typical', %gridTypical, iif(%painType = 'atypical', %gridAtypical, %gridNonAnginal)))"

  * extension[$variable][+].valueExpression.name = #pct
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%idx.exists(), %selectedGrid.substring(%idx * 2, 2).toInteger(), {})"

  * item[+]
    * linkId = "ihd-pain-type"
    * text = "Og‘riq turi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Тип боли"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Pain type"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Pain type classification from questions 1-3"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%painType"

    * answerOption[+].valueCoding = $ihd-pain-type-cs#typical "Tipik stenokardiya"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Типичная стенокардия"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Typical angina"

    * answerOption[+].valueCoding = $ihd-pain-type-cs#atypical "Atipik stenokardiya"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Атипичная стенокардия"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Atypical angina"

    * answerOption[+].valueCoding = $ihd-pain-type-cs#non-anginal "Nostenokarditik og‘riq"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Нестенокардитическая (неангинозная) боль"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-anginal pain"

  * item[+]
    * linkId = "ihd-dyspnea-flag"
    * text = "Nafas qisishi asosiy alomat sifatida"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Одышка как основной симптом"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dyspnea as the primary symptom"
    * type = #boolean
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "True when the patient reports dyspnea"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%dyspneaFlag"

  * item[+]
    * linkId = "ihd-ptv-score"
    * text = "Kasallikning oldindan taxminiy ehtimoli (PTV), %"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Претестовая вероятность (ПТВ), %"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Pre-test probability (PTP), %"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Pre-test probability percent looked up from the age/sex/pain-type chart"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%pct"

  * item[+]
    * linkId = "ihd-risk-category"
    * text = "Xavf darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Risk level"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band derived from the pre-test probability (0-5% low, 6-15% medium, 16-100% high)"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%pct.exists(), iif(%pct <= 5, 'low', iif(%pct <= 15, 'medium', 'high')), {})"

    * answerOption[+].valueCoding = $ihd-risk-category-cs#low "Past xavf (0-5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск (0-5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk (0-5%)"

    * answerOption[+].valueCoding = $ihd-risk-category-cs#medium "O‘rtacha xavf (6-15%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск (6-15%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk (6-15%)"

    * answerOption[+].valueCoding = $ihd-risk-category-cs#high "Yuqori xavf (16-100%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск (16-100%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk (16-100%)"

Instance: example-ihd-probability-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Пример ответа на опросник вероятности ИБС"
Description: "Пример заполненного опросника предварительной вероятности ишемической болезни сердца"
* questionnaire = Canonical(ScreeningIHDProbabilityQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* language = #en

* item[+]
  * linkId = "chest-pain"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "exertional-pain"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "relief-at-rest"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "dyspnea"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "ihd-probability-result"
  * item[+]
    * linkId = "ihd-pain-type"
    * answer[+].valueCoding = $ihd-pain-type-cs#atypical "Атипичная стенокардия"
  * item[+]
    * linkId = "ihd-dyspnea-flag"
    * answer[+].valueBoolean = false
  * item[+]
    * linkId = "ihd-ptv-score"
    * answer[+].valueInteger = 17
  * item[+]
    * linkId = "ihd-risk-category"
    * answer[+].valueCoding = $ihd-risk-category-cs#high "Высокий риск (16-100%)"