
Instance: CervicalCancerScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Cervical Cancer Screening Questionnaire"
Description: "Example for Questionnaire for Cervical Cancer Screening"
* url = "https://dhp.uz/fhir/core/Questionnaire/CervicalCancerScreeningQuestionnaire"
* name = "CervicalCancerScreeningQuestionnaire"
* version = "1.0.0"
* language = #uz
* status = #active
* subjectType = #Patient
* title = "Bachadon bo'yni saratonini erta aniqlash bo'yicha so'rovnoma"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Опросник раннего выявления рака шейки матки"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Cervical Cancer Early Detection Questionnaire"
* description = "Bachadon bo'yni saratoni xavf omillari va anamnezini davlat skrining dasturi doirasida yig'ish uchun mo'ljallangan so'rovnoma."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Опросник предназначен для сбора анамнеза и факторов риска рака шейки матки в рамках государственной программы скрининга. Включает сведения о менструальной функции, репродуктивном анамнезе, половой жизни, использовании гормональной терапии, перенесённых гинекологических заболеваниях и вмешательствах, а также данных, необходимых для принятия решения о проведении дальнейших обследований (ВПЧ-тест, цитологическое исследование, кольпоскопия и др.)."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Questionnaire for collecting medical history and cervical cancer risk factors within the national screening program."

* item[+]
  * linkId = "menstrual-cycle"
  * text = "Hayz tsikli"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Менструальный цикл"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Menstrual cycle"
  * type = #coding
  * required = true
  * repeats = false
  * answerOption[+].valueCoding = cervical-cancer-screening-questionnaire-cs#scrn-0075-00001 "Muntazam"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Регулярный"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Regular"
  * answerOption[+].valueCoding = cervical-cancer-screening-questionnaire-cs#scrn-0075-00002 "Muntazamsiz"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Нерегулярный"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Irregular"

* item[+]
  * linkId = "last-menstruation-date"
  * text = "Oxirgi hayz sanasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Дата последней менструации"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Date of last menstruation"
  * type = #date
  * required = true
  * repeats = false

* item[+]
  * linkId = "menopause"
  * text = "Menopauza boshlanganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Началась ли менопауза?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Has menopause started?"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * item[+]
    * linkId = "menopause-age"
    * prefix = "3.1"
    * text = "Klimaks boshlanish yoshi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Возраст начала менопаузы (лет)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Age at menopause (years)"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "menopause"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "sexual-life"
  * text = "Jinsiy hayot boshlanganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Началась ли половая жизнь?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Has sexual activity started?"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * item[+]
    * linkId = "sexual-life-age"
    * text = "Jinsiy hayot boshlanish yoshi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Возраст начала половой жизни (лет)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Age at first sexual intercourse"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "sexual-life"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "pregnancies"
  * text = "Homiladorliklar bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли беременности?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Previous pregnancies"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * item[+]
    * linkId = "pregnancies-count"
    * text = "Homiladorliklar soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество беременностей"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of pregnancies"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "pregnancies"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "deliveries"
  * text = "Tug'ruqlar bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли роды?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Previous deliveries"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
  * item[+]
    * linkId = "deliveries-count"
    * text = "Tug'ruq soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество родов"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of deliveries"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "deliveries"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "abortions"
  * text = "Tibbiy abortlar bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли медицинские аборты?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Previous medical abortions"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"

  * item[+]
    * linkId = "abortions-count"
    * text = "Tibbiy abortlar soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество медицинских абортов"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of medical abortions"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "abortions"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "contraception"
  * text = "Kontratseptiv vositalardan foydalanasizmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Пользуетесь ли контрацептивами?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Use contraceptives"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "contraception-type"
    * text = "Qanday kontratseptiv vositalardan foydalanasiz?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какие контрацептивы используются?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Type of contraceptives"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "contraception"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "gyn-surgery"
  * text = "Ginekologik operatsiyalar bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли гинекологические операции?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Previous gynecological surgery"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "gyn-surgery-type"
    * text = "O'tkazilgan ginekologik operatsiyalar"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Перенесённые гинекологические операции"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Previous gynecological operations"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "gyn-surgery"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "chemo-radiotherapy"
  * text = "Kimyoterapiya yoki nur terapiyasidan o'tganmisiz?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Проходили ли химиотерапию или лучевую терапию?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "History of chemo/radiotherapy"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "chemo-type"
    * text = "Qanday davolash turi o'tkazildi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какое лечение проводилось?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Type of treatment"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "chemo-radiotherapy"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "hormone-therapy"
  * text = "Gormon terapiyasidan foydalanish"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Использование гормонотерапии"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Hormone therapy"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "hormone-type"
    * text = "Qanday gormonlardan foydalanildi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какие гормоны использовались?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Hormones used"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "hormone-therapy"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "cervix-treatment"
  * text = "Bachadon bo'yni davolanganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Лечение шейки матки в анамнезе"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Previous cervical treatment"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "cervix-treatment-type"
    * text = "Qanday davolash turi o'tkazildi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какое лечение проводилось?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Type of cervical treatment"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "cervix-treatment"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "contact-bleeding"
  * text = "Aloqa paytida qon ketish kuzatilganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Контактное кровотечение"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Contact bleeding"
  * type = #coding
  * required = true
  * repeats = false
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
    * extension[content].valueString = "Нет"
  * answerOption[=].valueCoding.display.extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "No"
    
  * item[+]
    * linkId = "bleeding-type"
    * text = "Qanday qon ketish turi kuzatilgan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какое кровотечение?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Type of bleeding"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "contact-bleeding"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "specimen-date"
  * text = "Tahlillar olingan sana"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Дата забора материалов на анализы"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Date of specimen collection"
  * type = #date
  * required = true
  * repeats = false

Instance: example-cervical-cancer-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Bachadon bo'yni saratoni skriningi so'rovnomasiga javob namunasi"
Description: "Bemor tomonidan to'ldirilgan bachadon bo'yni saratoni skriningi so'rovnomasining namunaviy javobi"

* questionnaire = Canonical(CervicalCancerScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #uz

* item[+]
  * linkId = "menstrual-cycle"
  * text = "Hayz tsikli"
  * answer[+].valueCoding = cervical-cancer-screening-questionnaire-cs#scrn-0075-00001 "Muntazam"

* item[+]
  * linkId = "last-menstruation-date"
  * text = "Oxirgi hayz sanasi"
  * answer[+].valueDate = "2026-06-20"

* item[+]
  * linkId = "menopause"
  * text = "Menopauza boshlanganmi?"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "sexual-life"
  * text = "Jinsiy hayot boshlanganmi?"
  * answer[+]
    * valueCoding = $fertility-questionnaire-cs#Y "Yes"
    * item[+]
      * linkId = "sexual-life-age"
      * text = "Jinsiy hayot boshlanish yoshi"
      * answer[+].valueInteger = 19

* item[+]
  * linkId = "pregnancies"
  * text = "Homiladorliklar bo'lganmi?"
  * answer[+]
    * valueCoding = $fertility-questionnaire-cs#Y "Yes"
    * item[+]
      * linkId = "pregnancies-count"
      * text = "Homiladorliklar soni"
      * answer[+].valueInteger = 3

* item[+]
  * linkId = "deliveries"
  * text = "Tug'ruqlar bo'lganmi?"
  * answer[+]
    * valueCoding = $fertility-questionnaire-cs#Y "Yes"
    * item[+]
      * linkId = "deliveries-count"
      * text = "Tug'ruq soni"
      * answer[+].valueInteger = 2

* item[+]
  * linkId = "abortions"
  * text = "Tibbiy abortlar bo'lganmi?"
  * answer[+]
    * valueCoding = $fertility-questionnaire-cs#Y "Yes"
    * item[+]
      * linkId = "abortions-count"
      * text = "Tibbiy abortlar soni"
      * answer[+].valueInteger = 1

* item[+]
  * linkId = "contraception"
  * text = "Kontratseptiv vositalardan foydalanasizmi?"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "gyn-surgery"
  * text = "Ginekologik operatsiyalar bo'lganmi?"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "chemo-radiotherapy"
  * text = "Kimyoterapiya yoki nur terapiyasidan o'tganmisiz?"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "hormone-therapy"
  * text = "Gormon terapiyasidan foydalanish"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "cervix-treatment"
  * text = "Bachadon bo'yni davolanganmi?"
  * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "contact-bleeding"
  * text = "Aloqa paytida qon ketish kuzatilganmi?"
  * answer[+]
    * valueCoding = $fertility-questionnaire-cs#Y "Yes"
    * item[+]
      * linkId = "bleeding-type"
      * text = "Qanday qon ketish turi kuzatilgan?"
      * answer[+].valueString = "Jinsiy aloqadan keyin ozgina qon ajralishi (kontakt qon ketish)"

* item[+]
  * linkId = "specimen-date"
  * text = "Tahlillar olingan sana"
  * answer[+].valueDate = "2026-07-01"
