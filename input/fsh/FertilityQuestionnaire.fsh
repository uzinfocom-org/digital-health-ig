Instance: FertilityQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Fertility Questionnaire Survey"
Description: "Example Questionnaire for fertility history collection"
* url = "https://dhp.uz/fhir/core/Questionnaire/FertilityQuestionnaire"
* name = "FertilityQuestionnaire"
* language = #uz
* status = #active
* subjectType = #Patient
* title = "Fertillik bo‘yicha so‘rovnoma" 
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник по фертильности"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Fertility Questionnaire"
* description = "Fertillik anamnezini yig‘ish uchun so‘rovnoma"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для сбора анамнеза по менструации, беременности, перинатальным потерям, контрацепции и бесплодию"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for fertility history collection"

* item[+]
  * linkId = "menstruation"
  * text = "Hayz ko'rish"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Менструация"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Menstruation"
  * type = #group

// Question 1: Menstruation
  * item[+]
    * linkId = "menstruation-present"
    * text = "Hayz ko‘rish"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Менструация"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Menstruation"
    * type = #coding
    * required = true
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
    * linkId = "menstruation-age-start"
    * text = "Hayz necha yoshdan boshlangan"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Менструации с какого возраста"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Menstruation from what age"
    * type = #integer

* item[+]
  * linkId = "pregnancy"
  * text = "Homiladorlik"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Беременность"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Pregnancy"
  * type = #group

  * item[+]
    * linkId = "pregnancy-total-count"
    * text = "Homiladorliklarning umumiy soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Общее количество беременностей"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total number of pregnancies"
    * type = #integer

  * item[+]
    * linkId = "birth-total-count"
    * text = "Tug‘ruqlarning umumiy soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Общее количество родов"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Total number of births"
    * type = #integer

  * item[+]
    * linkId = "children-count"
    * text = "Farzandlar soni"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Количество детей"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Number of children"
    * type = #integer

* item[+]
  * linkId = "perinatal-losses"
  * text = "Perinatal yo‘qotishlar"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Перинатальные потери"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Perinatal losses"
  * type = #group

  * item[+]
    * linkId = "perinatal-losses-present"
    * text = "Perinatal yo‘qotishlar"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Перинатальные потери"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Perinatal losses"
    * type = #coding
    * required = true
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
    * linkId = "abortion-count"
    * text = "Abort"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Аборт"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Abortion"
    * type = #integer

  * item[+]
    * linkId = "miscarriage-count"
    * text = "Homila tushishi / homilani ko‘tara olmaslik"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Ситуации невынашивания беременности"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Miscarriage / pregnancy loss"
    * type = #integer

  * item[+]
    * linkId = "ectopic-pregnancy-count"
    * text = "Bachadondan tashqari homiladorlik"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Внематочная беременность"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Ectopic pregnancy"
    * type = #integer

  * item[+]
    * linkId = "antenatal-fetal-death-count"
    * text = "Antenatal homila o‘limi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Антенатальная гибель плода"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Antenatal fetal death"
    * type = #integer

  * item[+]
    * linkId = "intrapartum-fetal-death-count"
    * text = "Intranatal homila o‘limi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Интранатальная гибель плода"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Intrapartum fetal death"
    * type = #integer

  * item[+]
    * linkId = "neonatal-death-count"
    * text = "Yangi tug‘ilgan chaqaloq o‘limi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Смерть новорождённого"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Neonatal death"
    * type = #integer

* item[+]
  * linkId = "contraception"
  * text = "Kontratseptsiya"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Контрацепция"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Contraception"
  * type = #group

  * item[+]
    * linkId = "contraception-method"
    * text = "Kontratseptsiya"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Контрацепция"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Contraception"
    * type = #coding
    * repeats = true
    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00001 "Jarrohlik — ayol sterilizatsiyasi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Хирургическая — женская стерилизация"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Surgical — female sterilization"

    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00002 "Jarrohlik — vazektomiya"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Хирургическая — вазэктомия"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Surgical — vasectomy"
    
    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00003 "Jarrohliksiz — tabiiy"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не хирургическая — естественная"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-surgical — natural"

    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00004 "Jarrohliksiz — baryer"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не хирургическая — барьерная"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-surgical — barrier"

    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00005 "Jarrohliksiz — kimyoviy"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не хирургическая — химическая"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-surgical — chemical"

    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00006 "Jarrohliksiz — bachadon ichi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не хирургическая — внутриматочная"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-surgical — intrauterine"
    
    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00007 "Jarrohliksiz — gormonal"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не хирургическая — гормональная"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Non-surgical — hormonal"

    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00008 "Foydalanilmaydi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Не используется"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Not used"
    
  * item[+]
    * linkId = "contraception-notes"
    * text = "Izohlar"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Примечания"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Notes"
    * type = #text

* item[+]
  * linkId = "infertility"
  * text = "Bepushtlik"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Бесплодие"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Infertility"
  * type = #group

  * item[+]
    * linkId = "infertility-present"
    * text = "Bepushtlik"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Бесплодие"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Infertility"
    * type = #coding
    * required = true

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
    * linkId = "infertility-type"
    * text = "Bepushtlik turi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Характер бесплодия"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Type of infertility"
    * type = #coding
    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00009 "Birlamchi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Первично"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Primary"
      
    * answerOption[+].valueCoding = fertility-questionnaire-cs#scrn-0071-00010 "Ikkilamchi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Вторично"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Secondary"

  * item[+]
    * linkId = "infertility-diagnosis-date"
    * text = "Tashxis qo‘yilgan sana"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Дата постановки диагноза"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Diagnosis date"
    * type = #date

  * item[+]
    * linkId = "infertility-icd-diagnosis"
    * text = "XKT bo‘yicha tashxis"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Диагноз по МКБ"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "ICD diagnosis"
    * type = #string

Instance: example-fertility-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Пример ответа на опросник фертильности"
Description: "Пример заполненного опросника по фертильности пациента"
* questionnaire = Canonical(FertilityQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-01T14:30:00+05:00"
* language = #ru

* item[+]
  * linkId = "menstruation"
  * item[+]
    * linkId = "menstruation-present"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "menstruation-age-start"
    * answer[+].valueInteger = 15

* item[+]
  * linkId = "perinatal-losses"
  * item[+]
    * linkId = "perinatal-losses-present"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"

* item[+]
  * linkId = "infertility"
  * item[+]
    * linkId = "infertility-present"
    * answer[+].valueCoding = $fertility-questionnaire-cs#N "No"
