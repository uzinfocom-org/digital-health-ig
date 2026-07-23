Instance: CVDRiskScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "CVD Risk Screening Questionnaire"
Description: "Example for CVD Risk Screening Questionnaire"
* url = "https://dhp.uz/fhir/core/Questionnaire/CVDRiskScreeningQuestionnaire"
* name = "CVDRiskScreeningQuestionnaire"
* language = #uz
* status = #draft
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* subjectType = #Patient
* title = "Yurak-qon tomir kasalliklari xavfini erta aniqlash skriningi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скрининг раннего выявления риска сердечно-сосудистых заболеваний"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Cardiovascular disease risk screening"
* description = "DMed qabulida bemor uchun so'rovnoma: yosh, jins, vazn, bo'y, TVI, arterial bosim va tamaki mahsulotlari iste'moli."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для DMed при приёме пациента: возраст, пол, вес, рост, ИМТ, артериальное давление и употребление табачных изделий."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for DMed during patient visit: age, sex, weight, height, BMI, blood pressure and tobacco use."

// Question 1: Age (years)
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

// Question 2: Sex
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

  // Sex codes come from the HL7 administrative-gender system, whose canonical display language
  // is English, so the base display stays English (else the validator flags "Wrong Display Name");
  // Russian and Uzbek are supplied as translation extensions.
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

  * answerOption[+].valueCoding = $administrative-gender#other "Other"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Другой"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Boshqa"

  * answerOption[+].valueCoding = $administrative-gender#unknown "Unknown"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Неизвестно"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #uz
    * extension[content].valueString = "Noma'lum"

// Question 3: Weight (kg)
* item[+]
  * linkId = "weight"
  * text = "Vazn"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Вес"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Weight"
  * type = #decimal
  * required = true

// Question 4: Height (cm)
* item[+]
  * linkId = "height"
  * text = "Bo'y"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Рост"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Height"
  * type = #decimal
  * required = true

// Question 5: BMI (may be computed by the system: weight / (height in metres)^2)
* item[+]
  * linkId = "bmi"
  * text = "Tana vazni indeksi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Индекс массы тела"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Body mass index"
  * type = #decimal
  * readOnly = true
  // Auto-calculated (SDC): BMI = weight / (height in metres)^2
  * extension[$variable][+].valueExpression.name = #weight
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='weight').answer.value.ofType(decimal).first()"
  * extension[$variable][+].valueExpression.name = #height
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='height').answer.value.ofType(decimal).first()"
  * extension[$sdc-calculated-expression].valueExpression.description = "BMI from weight and height"
  * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
  * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%height.exists() and %height > 0 and %weight.exists(), (%weight / ((%height / 100) * (%height / 100))).round(1), {})"

// Question 6: Systolic blood pressure (mm Hg)
* item[+]
  * linkId = "systolic-bp"
  * text = "Sistolik bosim"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Систолическое давление"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Systolic blood pressure"
  * type = #decimal
  * required = true

// Question 7: Diastolic blood pressure (mm Hg)
* item[+]
  * linkId = "diastolic-bp"
  * text = "Diastolik bosim"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Диастолическое давление"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Diastolic blood pressure"
  * type = #decimal
  * required = true

// Question 8: Tobacco use
* item[+]
  * linkId = "tobacco-use"
  * text = "Tamaki mahsulotlarini iste'mol qilish"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Употребление табачных изделий"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Tobacco products use"
  * type = #coding
  * required = true

  * answerOption[+].valueCoding = $cvd-tobacco-use-cs#not-use "Iste'mol qilmaydi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Не употребляет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Does not use"

  * answerOption[+].valueCoding = $cvd-tobacco-use-cs#use "Iste'mol qiladi"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Употребляет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Uses"

  * answerOption[+].valueCoding = $cvd-tobacco-use-cs#quit "Tashlagan"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Бросил"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Quit"

// CVD risk result and follow-up recommendations (the risk band chart from the source spreadsheet).
// The risk percentage/category is derived by the system from age, sex, systolic BP and tobacco use
// using the WHO/ISH CVD risk chart; the recommendation shown depends on the resulting category.
* item[+]
  * linkId = "cvd-risk-result"
  * text = "Yurak-qon tomir kasalliklari xavfini baholash"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Оценка риска сердечно-сосудистых заболеваний"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Cardiovascular disease risk assessment"
  * type = #group

  // FHIRPath scoring variables (SDC), inherited by the child items below. The 10-year risk %
  // is looked up from the WHO/ISH chart encoded as a fixed-width string %grid (2 digits per cell),
  // indexed by discretised age/sex/smoking/BMI/systolic-BP bands.
  * extension[$variable][+].valueExpression.name = #weight
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='weight').answer.value.ofType(decimal).first()"
  * extension[$variable][+].valueExpression.name = #height
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='height').answer.value.ofType(decimal).first()"
  * extension[$variable][+].valueExpression.name = #age
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='age').answer.value.ofType(integer).first()"
  * extension[$variable][+].valueExpression.name = #sbp
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='systolic-bp').answer.value.ofType(decimal).first()"
  * extension[$variable][+].valueExpression.name = #sexcode
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='sex').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #smk
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "%resource.item.where(linkId='tobacco-use').answer.value.ofType(Coding).code.first()"
  * extension[$variable][+].valueExpression.name = #bmi
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%height.exists() and %height > 0 and %weight.exists(), %weight / ((%height / 100) * (%height / 100)), {})"
  * extension[$variable][+].valueExpression.name = #ageIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%age < 45, 0, iif(%age < 50, 1, iif(%age < 55, 2, iif(%age < 60, 3, iif(%age < 65, 4, iif(%age < 70, 5, 6))))))"
  * extension[$variable][+].valueExpression.name = #bmiIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%bmi < 20, 0, iif(%bmi < 25, 1, iif(%bmi < 30, 2, iif(%bmi < 36, 3, 4))))"
  * extension[$variable][+].valueExpression.name = #sbpIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%sbp < 120, 0, iif(%sbp < 140, 1, iif(%sbp < 160, 2, iif(%sbp < 180, 3, 4))))"
  * extension[$variable][+].valueExpression.name = #sexIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%sexcode = 'male', 0, iif(%sexcode = 'female', 1, {}))"
  * extension[$variable][+].valueExpression.name = #smkIdx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%smk = 'use', 1, 0)"
  * extension[$variable][+].valueExpression.name = #idx
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "((((%sexIdx * 2 + %smkIdx) * 7 + %ageIdx) * 5 + %sbpIdx) * 5 + %bmiIdx)"
  * extension[$variable][+].valueExpression.name = #grid
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "'01010202030202020304020303040504040507090607081114020202030302030304050404050608050608091208091214180203030405040405060705060709110809111317111316202504040606070506070911080911131611131619231519222732060708101108101113151214161922161922263123263136421011131517131618202318212427322528323742333742485416182023262224273033283135394337414550554751556267030304050604050608110608101317091115202614172330400304050709050709111408101316211215192632182329374706070910120709111418111317212716202531392429364454070911131611131619241518232634222632394731374453621113151822151821263021253035423035414855404754627016192225292225293439303439455140455157645158647177242730343832353944484145505560525762677364697479840101010102020202020302020303030304040505050506060701020202020202030304030304040504050506070707080912020203030303030404050405050607060707081009101112140303040404040505060706070708090910111214131416182105060607070708080909101011121313141517191819212326080910101111121314151516171820202123252626283032351415161718181920222323252628303032343638384043464803030404050404050606060708091010111214161516182124040405050606060708090809111214131416182019212325300606070809080910111212131416181719212326242630333708090911121112141517161719212422242730333134374145111214151615171921232224262931293235384239434650541718192123222426283130323437403942454852505357606424252729313133353840404245485150535559626164687174'"
  * extension[$variable][+].valueExpression.name = #pct
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "iif(%age >= 40 and %age <= 74 and %sbp.exists() and %bmi.exists() and %sexIdx.exists() and %smk.exists(), %grid.substring(%idx * 2, 2).toInteger(), {})"

  // Computed 10-year risk percent (from the chart lookup above)
  * item[+]
    * linkId = "cvd-risk-score"
    * text = "10 yillik xavf (%)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "10-летний риск (%)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "10-year risk (%)"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "WHO/ISH CVD 10-year risk percent looked up from the chart"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%pct"

  * item[+]
    * linkId = "cvd-risk-category"
    * text = "Xavf darajasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Степень риска"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Risk level"
    * type = #coding
    * readOnly = true
    // Derived from the calculated risk percent (%pct inherited from the group)
    * extension[$sdc-calculated-expression].valueExpression.description = "Risk band derived from the calculated risk percent"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%pct.exists(), iif(%pct < 5, 'low', iif(%pct < 10, 'moderate', iif(%pct < 20, 'medium', iif(%pct < 30, 'high', 'very-high')))), {})"

    * answerOption[+].valueCoding = $cvd-risk-category-cs#low "Past xavf (<5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Низкий риск (<5%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Low risk (<5%)"

    * answerOption[+].valueCoding = $cvd-risk-category-cs#moderate "O'rtacha xavf (5% - <10%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Умеренный риск (5% - <10%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Moderate risk (5% - <10%)"

    * answerOption[+].valueCoding = $cvd-risk-category-cs#medium "O'rtacha xavf (10% - <20%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Средний риск (10% - <20%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Medium risk (10% - <20%)"

    * answerOption[+].valueCoding = $cvd-risk-category-cs#high "Yuqori xavf (20% - <30%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Высокий риск (20% - <30%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "High risk (20% - <30%)"

    * answerOption[+].valueCoding = $cvd-risk-category-cs#very-high "Juda yuqori xavf (>=30%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Очень высокий риск (>=30%)"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Very high risk (>=30%)"

  // Recommendation shown for a low risk result (<5%)
  * item[+]
    * linkId = "recommendation-low"
    * text = "Sog'lom turmush tarziga rioya qilish, to'g'ri ovqatlanish, jismoniy faollik, tamaki chekishni kamaytirish (agar bemor tamaki mahsulotlari iste'mol qilsa), spirtli ichimliklar iste'mol qilishni chegaralash (agar bemor alkogol mahsulotlari ichsa) tavsiya etiladi. Takroriy tekshiruv 12 oydan keyin o'tkaziladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется здоровый образ жизни, правильное питание, физическая активность, ограничение употребления табака (если пациент употребляет табачные изделия), ограничение употребления алкоголя (если пациент употребляет алкоголь). Повторное обследование через 12 месяцев."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A healthy lifestyle, proper nutrition, physical activity, reduced tobacco use (if the patient uses tobacco products) and limited alcohol consumption (if the patient drinks alcohol) are recommended. Repeat assessment after 12 months."
    * type = #display
    // Gated on the computed numeric score so it fires in SDC renderers (a coding calc result
    // is not reliably mapped back to an answerOption by every renderer)
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #<
    * enableWhen[=].answerInteger = 5

  // Recommendation shown for a moderate risk result (5% - <10%)
  * item[+]
    * linkId = "recommendation-moderate"
    * text = "Sog'lom turmush tarziga rioya qilish, to'g'ri ovqatlanish, jismoniy faollik, tamaki chekishni kamaytirish (agar bemor tamaki mahsulotlari iste'mol qilsa), spirtli ichimliklar iste'mol qilishni chegaralash (agar bemor alkogol mahsulotlari ichsa) tavsiya etiladi. Takroriy tekshiruv har uch oyda o'tkaziladi (arterial bosimning maqsadli darajasiga erishilganda - takroriy tekshiruvlar har 6-9 oyda amalga oshiriladi). Qondagi glyukoza, xolesterin, siydikdagi oqsil monitoringi, ko'zlar ko'ruvi, EKG - 2 yilda 1 marta yoki ko'rsatma bo'yicha."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется здоровый образ жизни, правильное питание, физическая активность, ограничение употребления табака (если пациент употребляет табачные изделия), ограничение употребления алкоголя (если пациент употребляет алкоголь). Повторные обследования каждые 3 месяца (при достижении артериального давления целевого уровня - повторные обследования каждые 6-9 месяцев). Мониторинг глюкозы в крови, холестерина, белка мочи, осмотр глаз, ЭКГ - 1 раз в 2 года или по назначению."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A healthy lifestyle, proper nutrition, physical activity, reduced tobacco use (if the patient uses tobacco products) and limited alcohol consumption (if the patient drinks alcohol) are recommended. Repeat assessment every 3 months (once the blood pressure target is reached - every 6-9 months). Monitoring of blood glucose, cholesterol and urine protein, eye examination and ECG - once every 2 years or as prescribed."
    * type = #display
    * enableBehavior = #all
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 5
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #<
    * enableWhen[=].answerInteger = 10

  // Recommendation shown for a medium risk result (10% - <20%)
  * item[+]
    * linkId = "recommendation-medium"
    * text = "Sog'lom turmush tarziga rioya qilish, to'g'ri ovqatlanish, jismoniy faollik, tamaki chekishni kamaytirish (agar bemor tamaki mahsulotlari iste'mol qilsa), spirtli ichimliklar iste'mol qilishni chegaralash (agar bemor alkogol mahsulotlari ichsa) tavsiya etiladi. Monitoring har 3-6 oyda - arterial bosim maqsadli darajasiga yetgunigacha o'tkaziladi. Qondagi glyukoza, xolesterin, siydikdagi oqsil monitoringi, ko'z tubi tekshiruvi, EKG - reja yoki ko'rsatma bo'yicha yilda 1 marta. Kardiolog, terapevt ko'rigi - reja yoki ko'rsatma bo'yicha yilda 1 marta."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется здоровый образ жизни, правильное питание, физическая активность, ограничение употребления табака (если пациент употребляет табачные изделия), ограничение употребления алкоголя (если пациент употребляет алкоголь). Мониторинг каждые 3-6 месяцев до достижения целевого уровня артериального давления. Мониторинг глюкозы в крови, холестерина, белка мочи, исследование глазного дна, ЭКГ - 1 раз в год по плану или по назначению. Осмотр кардиолога, терапевта плановый 1 раз в год или по назначению."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A healthy lifestyle, proper nutrition, physical activity, reduced tobacco use (if the patient uses tobacco products) and limited alcohol consumption (if the patient drinks alcohol) are recommended. Monitoring every 3-6 months until the blood pressure target is reached. Monitoring of blood glucose, cholesterol and urine protein, fundus examination and ECG - once a year as scheduled or as prescribed. Cardiologist and general practitioner review - once a year as scheduled or as prescribed."
    * type = #display
    * enableBehavior = #all
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 10
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #<
    * enableWhen[=].answerInteger = 20

  // Recommendation shown for high and very-high risk (score >= 20%). The source sheet merges
  // the 20-<30% and >=30% rows into a single shared recommendation, so it covers both bands.
  * item[+]
    * linkId = "recommendation-high"
    * text = "Sog'lom turmush tarziga rioya qilish, to'g'ri ovqatlanish, jismoniy faollik, tamaki chekishni kamaytirish (agar bemor tamaki mahsulotlari iste'mol qilsa), spirtli ichimliklar iste'mol qilishni chegaralash (agar bemor alkogol mahsulotlari ichsa) tavsiya etiladi. Monitoring har 3-6 oyda - arterial bosim maqsadli darajasiga yetgunigacha o'tkaziladi. Qondagi glyukoza, xolesterin, siydikdagi oqsil monitoringi, ko'z tubi tekshiruvi, EKG - reja yoki ko'rsatma bo'yicha yilda 1 marta. Lipid spektri va qondagi kreatinin darajasi hamda koptokchali filtratsiya tezligi (KFT) hisobi reja yoki ko'rsatma bo'yicha yilda 1 marta. Kardiolog, terapevt ko'rigi - reja yoki ko'rsatma bo'yicha yilda 1 marta."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется здоровый образ жизни, правильное питание, физическая активность, ограничение употребления табака (если пациент употребляет табачные изделия), ограничение употребления алкоголя (если пациент употребляет алкоголь). Мониторинг каждые 3-6 месяцев до достижения целевого уровня артериального давления. Мониторинг глюкозы в крови, холестерина, белка мочи, исследование глазного дна, ЭКГ - 1 раз в год по плану или по назначению. Определение липидного спектра и уровня креатинина в крови и расчёт скорости клубочковой фильтрации (СКФ) 1 раз в год в плановом порядке или по назначению. Осмотр кардиолога, терапевта - плановый 1 раз в год или по назначению."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A healthy lifestyle, proper nutrition, physical activity, reduced tobacco use (if the patient uses tobacco products) and limited alcohol consumption (if the patient drinks alcohol) are recommended. Monitoring every 3-6 months until the blood pressure target is reached. Monitoring of blood glucose, cholesterol and urine protein, fundus examination and ECG - once a year as scheduled or as prescribed. Lipid profile, blood creatinine and glomerular filtration rate (GFR) calculation - once a year as scheduled or as prescribed. Cardiologist and general practitioner review - once a year as scheduled or as prescribed."
    * type = #display
    * enableWhen[+].question = "cvd-risk-score"
    * enableWhen[=].operator = #>=
    * enableWhen[=].answerInteger = 20
