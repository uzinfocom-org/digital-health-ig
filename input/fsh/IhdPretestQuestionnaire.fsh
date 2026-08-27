Instance: IhdPretestQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "IHD Pretest Probability Questionnaire"
Description: "Pre-test probability of ischemic heart disease (ihd_screenings)"
* url = "https://dhp.uz/fhir/core/Questionnaire/IhdPretestQuestionnaire"
* name = "IhdPretestQuestionnaire"
* language = #uz
* status = #draft
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* subjectType = #Patient
* title = "IBS predtest ehtimolini baholash so'rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник предтестовой вероятности ишемической болезни сердца"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Ischemic heart disease pre-test probability questionnaire"
* description = "Ko'krak og'rig'i turi, jins va yosh bo'yicha IBS predtest ehtimolini baholash."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Оценка предтестовой вероятности ИБС по типу боли в груди, полу и возрасту."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Pre-test probability of IHD assessed by chest pain type, sex and age."
* code = screening-code-cs#mserv-0007-00001 "Yurak ishemik kasalligining testoldi ehtimolini baholash so'rovnomasi"

* item[+]
  * linkId = "age"
  * text = "Yosh"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возраст"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Age"
  * type = #integer
  * required = true

* item[+]
  * linkId = "sex"
  * text = "Jins"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Пол"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Sex"
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

* item[+]
  * linkId = "has-chest-pain"
  * text = "Ko'krak sohasida og'riq bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли боли в области груди?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Chest pain?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "does-chest-pain-start-under-specified-conditions"
  * text = "Og'riq jismoniy zo'riqish yoki hissiy stressda paydo bo'ladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возникает ли боль при физической нагрузке или эмоциональном стрессе?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Pain occurs with physical exertion or emotional stress?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "does-chest-pain-stop-under-specified-conditions"
  * text = "Og'riq tinch holatda yoki nitratlardan so'ng bir necha daqiqada o'tadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проходит ли боль в покое или после приема нитратов за несколько минут?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Pain resolves at rest or with nitrates within minutes?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "shortness-of-breath"
  * text = "Nafas qisishi yoki havo yetishmasligi bezovta qiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Беспокоит одышка или чувство нехватки воздуха?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Shortness of breath or air hunger?"
  * type = #boolean
  * required = true

// ihd-risk-result: chest-pain-type, ihd-risk-score and ihd-risk-category are populated by the
// DHP backend after computing DMED's own algorithm — not computed client-side via SDC. See
// top-of-file note.
* item[+]
  * linkId = "ihd-risk-result"
  * text = "IBS predtest ehtimolini baholash"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Оценка предтестовой вероятности ИБС"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "IHD pre-test probability assessment"
  * type = #group

  * item[+]
    * linkId = "chest-pain-type"
    * text = "Og'riq turi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Тип боли"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Pain type"
    * type = #coding
    * readOnly = true
    * answerOption[+].valueCoding = $sct#429559004 "Tipik stenokardiya"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Типичная стенокардия"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Typical angina"
    * answerOption[+].valueCoding = $sct#371807002 "Atipik stenokardiya"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Атипичная стенокардия"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Atypical angina"
    * answerOption[+].valueCoding = $ihd-chest-pain-type-cs#non-anginal "Noanginoz og'riq"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Неангинозная боль"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-anginal pain"
    * answerOption[+].valueCoding = $sct#267036007 "Nafas qisilishi ekvivalenti"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Эквивалент одышки"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Dyspnea equivalent"

  * item[+]
    * linkId = "ihd-risk-score"
    * text = "IBS predtest ehtimoli (%)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Предтестовая вероятность ИБС (%)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "IHD pre-test probability (%)"
    * type = #integer
    * readOnly = true

  * item[+]
    * linkId = "ihd-risk-category"
    * text = "Xavf kategoriyasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Категория риска"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Risk category"
    * type = #coding
    * readOnly = true
    * answerOption[+].valueCoding = $ihd-risk-category-cs#low "Past xavf (<=5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск (≤5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk (≤5%)"
    * answerOption[+].valueCoding = $ihd-risk-category-cs#medium "O'rtacha xavf (6-15%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск (6–15%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk (6–15%)"
    * answerOption[+].valueCoding = $ihd-risk-category-cs#high "Yuqori xavf (>=16%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск (≥16%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk (≥16%)"
