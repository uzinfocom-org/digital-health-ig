Instance: OncohematologyScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Oncohematology Screening Questionnaire"
Description: "Example for Questionnaire for Oncohematology Screening"
* url = "https://dhp.uz/fhir/core/Questionnaire/OncohematologyScreeningQuestionnaire"
* name = "OncohematologyScreeningQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "Onkogematologik kasalliklarni erta aniqlash so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник раннего выявления онкогематологических заболеваний"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Oncohematologic Disease Early Detection Questionnaire"
* description = "Onkogematologik kasallik belgilarini erta aniqlash uchun so‘rovnoma"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для раннего выявления признаков онкогематологических заболеваний"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for early detection of signs of oncohematologic diseases"

* item[+]
  * linkId = "unexplained-weight-loss"
  * text = "So‘nggi 6 oy ichida sababsiz vazn yo‘qotish kuzatilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наблюдается ли необъяснимая потеря веса в течение последних 6 месяцев?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there unexplained weight loss during the last 6 months?"
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
  * linkId = "morning-headaches"
  * text = "Ayniqsa ertalab sababsiz bosh og‘riqlari bo‘ladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Бывают ли необъяснимые головные боли, особенно по утрам?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do unexplained headaches occur, especially in the morning?"
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
  * linkId = "body-joint-pain-limping"
  * text = "Tana va bo‘g‘imlarda kuchayib boruvchi og‘riqlar yoki oqsoqlanish bezovta qiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Беспокоят ли нарастающие боли в теле и суставах, хромота?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are increasing body and joint pains or limping present?"
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
  * linkId = "unexplained-bruises-rashes"
  * text = "Tanada sababsiz ko‘karishlar va toshmalar paydo bo‘ladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Появляются ли по всему телу необъяснимые синяки и высыпания?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do unexplained bruises and rashes appear over the body?"
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
  * linkId = "spontaneous-bleeding"
  * text = "Burun, og‘iz, milk yoki quloqdan o‘z-o‘zidan qon ketishi kuzatiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наблюдаются ли спонтанные кровотечения из носа, рта, десен, ушей?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are there spontaneous bleedings from the nose, mouth, gums, or ears?"
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
  * linkId = "nausea-vomiting-blood"
  * text = "Ko‘ngil aynishi va qon izlari bilan qusish tez-tez bo‘ladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Часто ли случаются тошнота и рвота с прожилками крови?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Do nausea and vomiting with blood streaks occur frequently?"
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
  * linkId = "weakness-restlessness-night-sweats"
  * text = "Holsizlik, bezovtalik yoki kechasi ko‘p terlash kuzatiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наблюдается ли слабость или беспокойство, повышенное ночное потоотделение?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are weakness, restlessness, or increased night sweating observed?"
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
  * linkId = "dizziness-blurred-vision"
  * text = "To‘satdan bosh aylanishi va ko‘rish xiralashishi xuruji bo‘lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Возникал ли внезапный приступ головокружения и помутнения зрения?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Has there been a sudden episode of dizziness and blurred vision?"
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
  * linkId = "periodic-fever"
  * text = "Vaqti-vaqti bilan sababsiz tana harorati ko‘tarilishi kuzatiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наблюдается ли периодическое беспричинное повышение температуры тела?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there periodic unexplained fever?"
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
  * linkId = "dysuria-hematuria"
  * text = "Siydik chiqarishda qiyinchilik yoki siydikda qon bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли затрудненное мочеиспускание, кровь в моче?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there difficult urination or blood in the urine?"
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
  * linkId = "pallor-bruises-exam"
  * text = "Terining yaqqol oqarishi va tanada ko‘karishlar bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли выраженная бледность кожи и синяки в теле?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there marked skin pallor and bruising on the body?"
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
  * linkId = "neck-chest-swelling-lymph-nodes"
  * text = "Bo‘yin yoki ko‘krak qafasi sohasida shishlar va palpatsiyada kattalashgan limfa tugunlari bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли припухлости в области шеи или грудной клетки и увеличенные лимфатические узлы при пальпации?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are there swellings in the neck or chest area and enlarged lymph nodes on palpation?"
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
  * linkId = "eye-shape-change-glow"
  * text = "Ko‘z shakli yoki ko‘rinishida o‘zgarish kuzatiladimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Наблюдается ли изменение (свечение), формы глаз?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Are changes in the appearance or shape of the eyes observed?"
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
  * linkId = "nasal-breathing-voice-face-dyspnea"
  * text = "Burundan nafas olish qiyinlashishi, burun ajralmasi, manqalanish, yuz assimetriyasi yoki hansirash bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли затруднение носового дыхания, выделения из носа, гнусавость голоса, асимметрия лица, одышка?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there difficulty in nasal breathing, nasal discharge, nasal voice, facial asymmetry, or shortness of breath?"
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
  * linkId = "abdominal-enlargement-stool-changes"
  * text = "Qorin kattalashishi va ich kelishida o‘zgarishlar bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Есть ли увеличение размеров живота и изменения стула?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Is there abdominal enlargement and stool changes?"
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
  * linkId = "oncohematology-risk-result"
  * text = "Onkogematologik skrining natijasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Результат онкогематологического скрининга"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Oncohematology screening result"
  * type = #group

  * extension[$variable][+].valueExpression.name = #positiveCount
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.answer.value.ofType(Coding).where(code = 'Y').count()"

  * item[+]
    * linkId = "positive-yes-count"
    * text = "Ijobiy (“Ha”) javoblar soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество положительных ответов («Да»)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of positive (\"Yes\") answers"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha'/'Y' answers across all 15 questions"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%positiveCount"

  * item[+]
    * linkId = "recommendation"
    * text = "Oila shifokoriga murojaat qiling!"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Необходима консультация семейного врача."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A family doctor consultation is required."
    * type = #display
    * enableWhen[+].question = "positive-yes-count"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 2


Instance: example-oncohematology-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Onkogematologik skriningga javob namunasi"
Description: "Bemorning onkogematologik kasalliklarni erta aniqlash so‘rovnomasiga to‘ldirilgan javob namunasi"
* questionnaire = Canonical(OncohematologyScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "unexplained-weight-loss"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "morning-headaches"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "body-joint-pain-limping"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "unexplained-bruises-rashes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "spontaneous-bleeding"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "nausea-vomiting-blood"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "weakness-restlessness-night-sweats"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "dizziness-blurred-vision"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "periodic-fever"
  * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

* item[+]
  * linkId = "dysuria-hematuria"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "pallor-bruises-exam"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "neck-chest-swelling-lymph-nodes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "eye-shape-change-glow"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "nasal-breathing-voice-face-dyspnea"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "abdominal-enlargement-stool-changes"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "oncohematology-risk-result"
  * item[+]
    * linkId = "positive-yes-count"
    * answer[+].valueInteger = 3    
