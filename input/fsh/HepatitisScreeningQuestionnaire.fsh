
Instance: HepatitisScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Hepatitis B and C Screening Questionnaire"
Description: "Example for Questionnaire for Hepatitis B and C Screening"
* url = "https://dhp.uz/fhir/core/Questionnaire/HepatitisScreeningQuestionnaire"
* name = "HepatitisScreeningQuestionnaire"
* version = "1.0.0"
* language = #uz
* status = #active
* subjectType = #Patient
* title = "Gepatit B va C skrining so'rovnomasi"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Опросник по скринингу вирусных гепатитов B и C"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Hepatitis B and C Screening Questionnaire"
* description = "Gepatit B va C bo'yicha anamnez va xavf omillarini yig'ish uchun so'rovnoma."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Опросник предназначен для сбора анамнеза, факторов риска заражения вирусными гепатитами B и C, сведений о лечении, вакцинации и возможных путях передачи инфекции."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Questionnaire for collecting hepatitis B and C history and risk factors."

* item[+]
  * linkId = "basic-info"
  * text = "Asosiy ma'lumotlar"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Основная информация"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Basic Information"
  * type = #group
  
  * item[+]
    * linkId = "current-occupation"
    * text = "Hozirgi kasbi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Нынешняя профессия"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Current occupation"
    * type = #string
    * required = true
    * repeats = false
    
  * item[+]
    * linkId = "previous-treatment"
    * text = "Oldin VGB/VGS davolanganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проводилось ли лечение от ВГС/ВГВ в прошлом?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Previous HBV/HCV treatment"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "previous-treatment-drugs"
    * text = "Qanday dori vositalari qabul qilingan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Какие лекарства принимались против ВГС/ВГВ?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Medications used for HBV/HCV"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "previous-treatment"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y
      
  * item[+]
    * linkId = "knew-about-disease"
    * text = "Bemor kasalligi haqida bilganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Знал ли пациент, что был болен ВГС/ВГВ?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Did patient know about HBV/HCV?"
    * type = #coding
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "previous-treatment"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "family-history-hbv-hcv"
    * text = "Oilada VGB/VGS bilan kasallanganlar bormi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Есть ли у пациента члены семьи с ВГС/ВГВ?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Family members with HBV/HCV"
    * type = #coding
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "previous-treatment"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "hemodialysis"
    * text = "Gemodializ"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Гемодиализ"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Hemodialysis"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz

  * item[+]
    * linkId = "gender"
    * text = "Bemor jinsi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Пол пациента"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Patient Gender"
    * type = #coding
    * required = true
    * repeats = false

    * answerOption[+].valueCoding = $administrative-gender#male "Male"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "мужчина"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "erkak"

    * answerOption[+].valueCoding = $administrative-gender#female "Female"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "женщина"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #uz
      * extension[content].valueString = "ayol"

  * item[+]
    * linkId = "pregnancy-term"
    * enableWhen[+]
      * question = "gender"
      * operator = #=
      * answerCoding = $administrative-gender#female
    * text = "Homiladorlik muddati"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Срок беременности"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Pregnancy term"
    * type = #coding
    * required = false
    * repeats = false
    * answerOption[+].valueCoding = hepatitis-screening-questionnaire-cs#scrn-0076-00001 "4–12 hafta"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "4–12 недель"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "4–12 weeks"
    * answerOption[+].valueCoding = hepatitis-screening-questionnaire-cs#scrn-0076-00002 "13–24 hafta"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "13–24 недели"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "13–24 weeks"
    * answerOption[+].valueCoding = hepatitis-screening-questionnaire-cs#scrn-0076-00003 "25–36 hafta"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "25–36 недель"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "25–36 weeks"
    * answerOption[+].valueCoding = hepatitis-screening-questionnaire-cs#scrn-0076-00004 "37–40 hafta"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "37–40 недель"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "37–40 weeks"

* item[+]
  * linkId = "infected-contact-group"
  * text = "Infeksiyalanganlar bilan aloqa"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Контакт с инфицированными"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Contact with infected"
  * type = #group
  
  * item[+]
    * linkId = "contact-with-infected"
    * text = "VGB/VGS bilan kasallangan bilan aloqa bo'lganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Контактировал ли пациент с больными ВГС/ВГВ?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Contact with infected person"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "contact-details"
    * text = "Qayerda va qachon aloqa bo'lgan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Где и когда произошел контакт?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Where and when did contact occur?"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "contact-with-infected"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "operations-group"
  * text = "Operatsiyalar"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Операции"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Operations"
  * type = #group
  
  * item[+]
    * linkId = "had-surgery"
    * text = "Operatsiya qilinganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проводились ли пациенту операции?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Previous surgery"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "surgery-details"
    * text = "Qanday operatsiya qilingan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Где, когда и какая операция была проведена?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Surgery details"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "had-surgery"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "blood-transfusion-group"
  * text = "Qon quyish"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Переливание крови"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Blood transfusion"
  * type = #group
  
  * item[+]
    * linkId = "blood-transfusion"
    * text = "Qon quyilganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Выполнялось ли переливание крови?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Blood transfusion"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "blood-transfusion-details"
    * text = "Qayerda va qachon qon quyilgan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Где и когда выполнялось переливание?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Where and when?"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "blood-transfusion"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "other-invasive-treatment"
  * text = "Boshqa invaziv muolajalar"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Другие инвазивные методы лечения"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Other invasive procedures"
  * type = #group
  
  * item[+]
    * linkId = "other-invasive"
    * text = "Boshqa invaziv muolajalar o'tkazilganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проводились ли другие инвазивные методы лечения?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Other invasive procedures"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "other-invasive-details"
    * text = "Qayerda va qachon o'tkazilgan?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Где и когда проводились?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Where and when?"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "other-invasive"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "dental-treatment-group"
  * text = "Stomatologik davolash"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Стоматологическое лечение"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Dental treatment"
  * type = #group
  
  * item[+]
    * linkId = "dental-treatment"
    * text = "Stomatologik davolanish bo'lganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проходил ли пациент стоматологическое лечение?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dental treatment"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "dental-details"
    * text = "Qayerda va qachon?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Где и когда проводилось?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Where and when?"
    * type = #string
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "dental-treatment"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y

* item[+]
  * linkId = "antiviral-therapy-group"
  * text = "VGS antivirus terapiyasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Противовирусная терапия ВГС"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "HCV antiviral therapy"
  * type = #group

  * item[+]
    * linkId = "therapy-start-date"
    * text = "PVT boshlanish sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата начала ПВТ"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Therapy start date"
    * type = #date
    * required = true
    * repeats = false
    
  * item[+]
    * linkId = "therapy-end-date"
    * text = "PVT tugash sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата окончания ПВТ"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Therapy end date"
    * type = #date
    * required = true
    * repeats = false
    
  * item[+]
    * linkId = "rna-screening-date"
    * text = "PVTdan keyingi RNK tekshiruv sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата скрининга после терапии (РНК ВГС)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Post-treatment RNA screening date"
    * type = #date
    * required = true
    * repeats = false

* item[+]
  * linkId = "hepatitis-b-vaccination"
  * text = "Gepatit B vaksinatsiyasi"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Вакцинация против гепатита B"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Hepatitis B vaccination"
  * type = #group
  
  * item[+]
    * linkId = "hbv-vaccinated"
    * text = "Gepatit B vaksina olganmi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Прививка против гепатита B"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "HBV vaccination"
    * type = #coding
    * required = true
    * repeats = false
    * insert yes-no-options-uz
    * answerOption[+].valueCoding = hepatitis-screening-questionnaire-cs#scrn-0076-00005 "Noma'lum"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Неизвестно"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Unknown"
      
  * item[+]
    * linkId = "knows-dose-count"
    * text = "Bemor olgan dozalar sonini biladimi?"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Знает ли пациент количество полученных доз"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Does the patient know the number of doses received"
    * type = #coding
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "hbv-vaccinated"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y
    * insert yes-no-options-uz
    
  * item[+]
    * linkId = "hbv-dose-count"
    * text = "Olingan dozalar soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество полученных доз"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of doses"
    * type = #integer
    * required = false
    * repeats = false
    * enableWhen[+]
      * question = "knows-dose-count"
      * operator = #=
      * answerCoding = $fertility-questionnaire-cs#Y
      
  * item[+]
    * linkId = "hbv-dose1-date"
    * text = "1-doza sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата 1-й дозы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dose 1 date"
    * type = #date
    * required = false
    * repeats = false
    
  * item[+]
    * linkId = "hbv-dose2-date"
    * text = "2-doza sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата 2-й дозы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dose 2 date"
    * type = #date
    * required = false
    * repeats = false
    
  * item[+]
    * linkId = "hbv-dose3-date"
    * text = "3-doza sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата 3-й дозы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dose 3 date"
    * type = #date
    * required = false
    * repeats = false
    
  * item[+]
    * linkId = "hbv-dose4-date"
    * text = "4-doza sanasi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата 4-й дозы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Dose 4 date"
    * type = #date
    * required = false
    * repeats = false

Instance: example-hepatitis-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Gepatit B va C skrining so'rovnomasiga javob namunasi"
Description: "Bemor tomonidan to'ldirilgan gepatit B va C skrining so'rovnomasining namunaviy javobi"

* questionnaire = Canonical(HepatitisScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-10T11:15:00+05:00"
* language = #uz

* item[+]
  * linkId = "basic-info"
  * text = "Asosiy ma'lumotlar"
  
  * item[+]
    * linkId = "current-occupation"
    * text = "Hozirgi kasbi"
    * answer[+].valueString = "O'qituvchi"
    
  * item[+]
    * linkId = "previous-treatment"
    * text = "Oldin VGB/VGS davolanganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
    
  * item[+]
    * linkId = "previous-treatment-drugs"
    * text = "Qanday dori vositalari qabul qilingan?"
    * answer[+].valueString = "Sofosbuvir + Daklatasvir (2023-yil, 12 haftalik kurs)"
    
  * item[+]
    * linkId = "knew-about-disease"
    * text = "Bemor kasalligi haqida bilganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
    
  * item[+]
    * linkId = "family-history-hbv-hcv"
    * text = "Oilada VGB/VGS bilan kasallanganlar bormi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"
    
  * item[+]
    * linkId = "hemodialysis"
    * text = "Gemodializ"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

  * item[+]
    * linkId = "gender"
    * text = "Bemor jinsi"
    * answer[+].valueCoding = $administrative-gender#male "Male"
    
* item[+]
  * linkId = "infected-contact-group"
  * text = "Infeksiyalanganlar bilan aloqa"
  
  * item[+]
    * linkId = "contact-with-infected"
    * text = "VGB/VGS bilan kasallangan bilan aloqa bo'lganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
    
  * item[+]
    * linkId = "contact-details"
    * text = "Qayerda va qachon aloqa bo'lgan?"
    * answer[+].valueString = "2022-yilda VGS bilan kasallangan oila a'zosi bilan bir xonadonda yashagan"

* item[+]
  * linkId = "operations-group"
  * text = "Operatsiyalar"
  
  * item[+]
    * linkId = "had-surgery"
    * text = "Operatsiya qilinganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
    
  * item[+]
    * linkId = "surgery-details"
    * text = "Qanday operatsiya qilingan?"
    * answer[+].valueString = "2019-yil, Toshkent shahar klinik shifoxonasi, appendektomiya"

* item[+]
  * linkId = "blood-transfusion-group"
  * text = "Qon quyish"
  
  * item[+]
    * linkId = "blood-transfusion"
    * text = "Qon quyilganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"
    
* item[+]
  * linkId = "other-invasive-treatment"
  * text = "Boshqa invaziv muolajalar"
  
  * item[+]
    * linkId = "other-invasive"
    * text = "Boshqa invaziv muolajalar o'tkazilganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "dental-treatment-group"
  * text = "Stomatologik davolash"
  
  * item[+]
    * linkId = "dental-treatment"
    * text = "Stomatologik davolanish bo'lganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
    
  * item[+]
    * linkId = "dental-details"
    * text = "Qayerda va qachon?"
    * answer[+].valueString = "2024-yil dekabr, xususiy stomatologiya klinikasi, Toshkent"


* item[+]
  * linkId = "antiviral-therapy-group"
  * text = "VGS antivirus terapiyasi"
  
  * item[+]
    * linkId = "therapy-start-date"
    * text = "PVT boshlanish sanasi"
    * answer[+].valueDate = "2023-03-01"
    
  * item[+]
    * linkId = "therapy-end-date"
    * text = "PVT tugash sanasi"
    * answer[+].valueDate = "2023-05-24"
    
  * item[+]
    * linkId = "rna-screening-date"
    * text = "PVTdan keyingi RNK tekshiruv sanasi"
    * answer[+].valueDate = "2023-08-25"

* item[+]
  * linkId = "hepatitis-b-vaccination"
  * text = "Gepatit B vaksinatsiyasi"
  
  * item[+]
    * linkId = "hbv-vaccinated"
    * text = "Gepatit B vaksina olganmi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

  * item[+]
    * linkId = "knows-dose-count"
    * text = "Bemor olgan dozalar sonini biladimi?"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"

  * item[+]
    * linkId = "hbv-dose-count"
    * text = "Olingan dozalar soni"
    * answer[+].valueInteger = 3
    
  * item[+]
    * linkId = "hbv-dose1-date"
    * text = "1-doza sanasi"
    * answer[+].valueDate = "2021-02-15"
    
  * item[+]
    * linkId = "hbv-dose2-date"
    * text = "2-doza sanasi"
    * answer[+].valueDate = "2021-03-15"
    
  * item[+]
    * linkId = "hbv-dose3-date"
    * text = "3-doza sanasi"
    * answer[+].valueDate = "2021-08-15"
