Instance: ChildDevelopmentScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Child Development Delay Screening Questionnaire (0-3 years)"
Description: "Questionnaire for screening developmental disorders in young children"
* url = "https://dhp.uz/fhir/core/Questionnaire/ChildDevelopmentScreeningQuestionnaire"
* name = "ChildDevelopmentScreeningQuestionnaire"
* language = #uz
* status = #active
* publisher = "Uzinfocom"
* subjectType = #Patient
* title = "0–03 yosh bolalarda rivojlanish buzilishlarini aniqlash skriningi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Скрининг по выявлению нарушений развития у детей от 0 до 3 лет"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Child Development Delay Screening Questionnaire (0-3 years)"
* description = "Yosh bolalarda rivojlanish buzilishlarini skrining qilish so‘rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для скрининга нарушений развития у детей раннего возраста"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Questionnaire for screening developmental disorders in young children"

// ===== Age group 1: Ребенок 1 месяц (2 items) =====
* item[+]
  * linkId = "age-group-1"
  * text = "1 oylik bola"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Ребенок 1 месяц"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Child aged 1 month"
  * type = #group

  * item[+]
    * linkId = "eye-contact"
    * text = "Kattalarning ko‘zida o‘z nigohini kamida 5 soniya davomida ushlab turishi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Фиксирует взгляд на глазах взрослого не менее 5 секунд"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Fixes the gaze in the eyes of an adult for at least 5 seconds"
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
    * linkId = "response-to-loud-sounds"
    * text = "Chuqur bo‘lmagan uyqu holatida (uxlab qolish yoki uyqudan uyg‘onish paytida) 0,5 m masofadan tasodifiy baland tovushlar (masalan, temir qoshiqning qopqoqqa urilishi va hokazolar) ga ta‘sirlanishi (ko‘zini yumib-ochish, seskanish bilan)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Реагирует (морганием, вздрагиванием) на внезапные, громкие звуки (например, удар металлической ложки о крышку и т.п.) с расстояния 0,5м в состоянии неглубокого сна (когда засыпает или просыпается)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Reacts (by blinking, flinching) to sudden, loud sounds (for example, the impact of a metal spoon on the lid, etc.) from a distance of 0.5 m in a state of shallow sleep (when falling asleep or waking up)"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g1Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-1').item.answer.value.ofType(Coding).where(code = 'Y').count() / 2 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-1-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 2 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g1Percent"

  * item[+]
    * linkId = "age-group-1-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50% (special 2-item case) needs specialist consultation, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g1Percent >= 80, 'formed', iif(%g1Percent >= 50, 'needs-specialist-consult', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-specialist-consult "Mutaxassis konsultatsiyasi talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется консультация специалиста"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Specialist consultation required"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-1-recommendation"
    * text = "Mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasi tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется консультация специалиста (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A specialist consultation (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-1-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 2: Ребенок от 1 мес. 16 дней до 2 мес. 15 дней (6 items) =====
* item[+]
  * linkId = "age-group-2"
  * text = "1 oy 16 kunlikdan 2 oy 15 kunlikkacha bo'lgan bola"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Ребенок от 1 мес. 16 дней до 2 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Child aged 1 month 16 days to 2 months 15 days"
  * type = #group

  * item[+]
    * linkId = "tracks-face"
    * text = "Katta odamni 15 sm dan to 2 m gacha yaqinlashganda nigohini kamida 5 soniya davomida ushlab turadi, gorizontal yo‘nalishda katta odamning yuzini ohista kuzatadi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Не менее 5 секунд фиксирует взгляд на глазах взрослого и приближении от 15 см до 2 м, плавно прослеживает за лицом взрослого в горизонтальном направлении"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "For at least 5 seconds, it fixes its gaze on the eyes of an adult and an approximation from 15 cm to 2 m, smoothly traces the adult's face in a horizontal direction"
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
    * linkId = "looks-at-face-or-toy"
    * text = "Kamida 10 soniya davomida katta odamning yuziga (nigohini katta odam yuzidagi bir qismdan ikkinchi qismga oladi) yoki harakatlanuvchi o‘yinchoqqa sinchiklab qaraydi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Разглядывает лицо взрослого (переводит взгляд с одной детали лица взрослого на другую) или подвижную игрушку не менее 10 секунд"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Examines an adult's face (looks from one detail of an adult's face to another) or a moving toy for at least 10 seconds"
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
    * linkId = "looks-into-eyes"
    * text = "Ko‘zga qaraydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Смотрит в глаза"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Looks into the eyes"
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
    * linkId = "social-smile"
    * text = "Ohista murojaatga (ovoz, tegizish, tabassum bilan) javoban tabassum qiladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Улыбается в ответ на ласковое обращение (голосом, касанием, улыбкой)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Smiles in response to affectionate treatment (voice, touch, smile)"
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
    * linkId = "response-to-soft-sound"
    * text = "0.5 m masofadan ohista tovushga ta‘sirlanadi (ko‘rinmas tovush manbasi: katta odamning pichirlash balandligidagi ovozi, qog‘ozning shitirlashi, yoki shaqildoq – bolaning yon tomonidan uning boshi sathida): 5-10 soniyaga qotib qoladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Реагирует на тихий звук с расстояния 0,5 м (невидимый источник звука: голос взрослого шепотной громкости, шуршание бумаги, или погремушка – сбоку от ребёнка на уровне головы): замирает на 5-10 секунд"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Reacts to a quiet sound from a distance of 0.5 m (an invisible sound source: an adult's voice at a whisper volume, the rustle of paper, or a rattle on the side of the child at head level): freezes for 5-10 seconds"
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
    * linkId = "response-to-soft-sound-while-awake"
    * text = "Uyg‘oq holatida ohista tovushlarga ta‘sirlanadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Реагирует на тихие звуки в состоянии бодрствования"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Reacts to quiet sounds while awake"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g2Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-2').item.answer.value.ofType(Coding).where(code = 'Y').count() / 6 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-2-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 6 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g2Percent"

  * item[+]
    * linkId = "age-group-2-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g2Percent >= 80, 'formed', iif(%g2Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-2-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-2-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 3: от 3 мес. 16 дней до 4 мес. 15 дней (5 items) =====
* item[+]
  * linkId = "age-group-3"
  * text = "3 oy 16 kunlikdan 4 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 3 мес. 16 дней до 4 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "3 months 16 days to 4 months 15 days"
  * type = #group

  * item[+]
    * linkId = "tracks-toy"
    * text = "O‘yinchoq orqasidan ko‘zini o‘ngga, chapga, yuqoriga, pastga qimirlatadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Прослеживает глазами за игрушкой вправо, влево, вверх, вниз"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Follows the toy with his eyes to the right, left, up, down"
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
    * linkId = "turns-toward-sound"
    * text = "0.8-1 m uzoqlikda joylashgan ohista tovush manbasiga (shitirlaydigan qog‘oz, bolaning ismini pichirlab chaqirish) tomon (o‘ngga, chapga) buraladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Поворачивается (вправо, влево) к источнику тихого звука, расположенному на расстоянии 0,8-1 м (шуршащая бумага, шепот – зов ребёнка по имени)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Turns (to the right, to the left) to the source of a quiet sound located at a distance of 0.8-1 m (rustling paper, whispering – the child's name calling)."
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
    * linkId = "holds-head-in-prone-position"
    * text = "Qorinda yotgan holatida bilaklariga tayanib, boshini tik ushlaydi, tumshug‘i pastga tushirilgan."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Лежа на животе, опирается на предплечья и удерживает голову вертикально, подбородок опущен."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Lying on his stomach, he rests on his forearms and holds his head vertically, with his chin lowered"
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
    * linkId = "holds-head-upright"
    * text = "Boshini tik holatda mustahkam ushlab turadi (10 soniya davomida), agar tanasi tik holatdan siljisa boshini yana tik holatga qaytaradi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Устойчиво удерживает головку в вертикальном положении (не менее 10 секунд), при отклонении туловища от вертикали возвращает голову в вертикальное положение."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "It holds the head steadily in an upright position (for at least 10 seconds), and returns the head to an upright position when the body deviates from the vertical."
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
    * linkId = "social-engagement-response"
    * text = "Tabassum qiladi, qo‘llari va oyoqlarini faol qimirlatadi, katta odam munosabatga kirishishga harakat qilganda (2-3 marta 15-20 soniya tabassum qilib bolaning ismi bilan ohista chaqirganda) har xil tovushlar chiqaradi (\"jonlantirish majmuasi\")."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Улыбается, активно двигает руками и ногами, издает звуки при попытках взрослого (2-3 раза по 15-20 секунд улыбаясь и ласково называя по имени) вступить в контакт («комплекс оживления»)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Smiles, actively moves their arms and legs, and makes sounds when an adult attempts to engage with them (2-3 times for 15-20 seconds, smiling and gently calling the child by name), demonstrating the \"revitalization complex\" (social animation response)."
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g3Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-3').item.answer.value.ofType(Coding).where(code = 'Y').count() / 5 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-3-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 5 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g3Percent"

  * item[+]
    * linkId = "age-group-3-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g3Percent >= 80, 'formed', iif(%g3Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-3-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-3-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 4: от 5 мес. 16 дней до 6 мес. 15 дней (6 items) =====
* item[+]
  * linkId = "age-group-4"
  * text = "5 oy 16 kunlikdan 6 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 5 мес. 16 дней до 6 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "5 months 16 days to 6 months 15 days"
  * type = #group

  * item[+]
    * linkId = "tracks-side-object"
    * text = "nigohini yon tomondan paydo bo‘lgan obyektga ko‘chiradi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Переводит взгляд на появившийся сбоку объект."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Looks at the object that appeared from the side"
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
    * linkId = "reaches-for-object-in-prone-position"
    * text = "qorinda yotgan holda, bilakka tayanib ikkinchi qo‘li bilan predmetlarni oladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Лёжа на животе, опираясь на предплечье одной руки, другой берёт предметы."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "While lying on their stomach, the child supports themselves on one forearm and uses the other hand to grasp objects."
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
    * linkId = "transfers-object-between-hands"
    * text = "predmetlarni bir qo‘lidan ikkinchisiga oladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Перекладывает предметы из руки в руку."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shifts objects from hand to hand."
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
    * linkId = "rotates-toy-for-inspection"
    * text = "o‘yinchoqni har tomondan ko‘rib o‘rganish uchun bilagini aylantiradi (bunda o‘yinchoq ushlab turgan qo‘li ham aylanadi)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Вращает предплечье (при этом вращается кисть вместе с удерживаемой игрушкой), чтобы рассмотреть игрушку с разных сторон."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Rotates the forearm (while rotating the hand along with the toy being held) to view the toy from different angles"
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
    * linkId = "grasps-and-mouths-object"
    * text = "ko‘rgan narsasini ushlab uni og‘ziga olib keladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Захватывает увиденный предмет и тянет его в рот."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Grasps a visible object and brings it to the mouth."
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
    * linkId = "shows-interest-in-new-environment"
    * text = "yangi obyektlar, odamlar, yangi uy jihozlariga qiziqishini ko‘rsatadi – ularni kamida 30 soniya davomida o‘rganadi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проявляет интерес к новым объектам, людям, новой обстановке – исследует их не менее 30 сек."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shows interest in new objects, people, and new environments by exploring them for at least 30 seconds."
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g4Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-4').item.answer.value.ofType(Coding).where(code = 'Y').count() / 6 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-4-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 6 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g4Percent"

  * item[+]
    * linkId = "age-group-4-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g4Percent >= 80, 'formed', iif(%g4Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-4-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-4-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 5: от 8 мес. 16 дней до 9 мес. 15 дней (9 items) =====
* item[+]
  * linkId = "age-group-5"
  * text = "8 oy 16 kunlikdan 9 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 8 мес. 16 дней до 9 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "8 months 16 days to 9 months 15 days"
  * type = #group

  * item[+]
    * linkId = "sits-without-support"
    * text = "Bola o‘zi birovning yordamisiz mustahkam o‘tiradi, belini to‘g‘ri tutadi, qo‘llari ozod, o‘yinchoqqa intilishi va orqaga qarashi mumkin."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Сидит без поддержки устойчиво, с прямой спиной, руки свободны, может потянуться к игрушке, обернуться назад."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Sits steadily without support, with a straight back; keeps both hands free and can reach for a toy or turn around to look behind."
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
    * linkId = "rolls-from-back-to-stomach"
    * text = "Orqasi bilan yotish holatidan qoringa yotish uchun ag‘dariladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Переворачивается со спины на живот"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Rolls over from back to stomach"
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
    * linkId = "holds-toy-in-each-hand"
    * text = "Bir vaqtning o‘zida har bir qo‘lida bittadan o‘yinchoqni ushlab tura oladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может держать одновременно по игрушке в каждой руке"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can hold a toy in each hand at the same time."
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
    * linkId = "searches-for-hidden-object"
    * text = "Uning ko‘zi oldida yashiringan yoki tushib ketgan predmetni (koptok, o‘yinchoq) izlaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Ищет спрятанный у него на глазах или упавший предмет (например, мячик)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Looks for an object that was hidden in plain sight or dropped (e.g., a ball)."
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
    * linkId = "shares-attention-between-adult-and-object"
    * text = "Ota-onasiga va predmetga (yoki boshqa odamga) bir vaqtda diqqatini qaratadi, ularga navbati bilan qaraydi. Bola navbati bilan nigohini odamdan predmetga va aksincha olib o‘tadi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Внимателен одновременно к предмету (или другому человеку) и к родителю, смотрит поочередно на них. Ребёнок по попеременно переводит взгляд с предмета на взрослого и обратно."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can attend to both an object (or another person) and a parent at the same time, alternating gaze between the object and the adult."
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
    * linkId = "eats-thick-food-with-spoon"
    * text = "Quyuqroq ovqatni qoshiqdan yeydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Ест густоватую пищу с ложки"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Eats thick (semi-solid) food from a spoon."
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
    * linkId = "listens-to-conversation"
    * text = "Odamlarning so‘zlashishiga quloq tutadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Прислушивается к разговору людей"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Listens attentively to people talking."
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
    * linkId = "shows-stranger-wariness"
    * text = "Begonalarga shubha bilan qaraydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Реагирует на чужих с настороженностью"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shows caution around unfamiliar people (strangers)."
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
    * linkId = "plays-pat-a-cake-on-request"
    * text = "Iltimosga ko‘ra \"chapak-chapak\" o‘ynaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "По просьбе играет в «ладушки»"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Plays pat-a-cake (\"Pat-a-cake\") when asked"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g5Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-5').item.answer.value.ofType(Coding).where(code = 'Y').count() / 9 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-5-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 9 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g5Percent"

  * item[+]
    * linkId = "age-group-5-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g5Percent >= 80, 'formed', iif(%g5Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-5-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-5-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 6: от 11 мес. 16 дней до 12 мес. 15 дней (16 items) =====
* item[+]
  * linkId = "age-group-6"
  * text = "11 oy 16 kunlikdan 12 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 11 мес. 16 дней до 12 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "11 months 16 days to 12 months 15 days"
  * type = #group

  * item[+]
    * linkId = "examines-new-object"
    * text = "Yangi predmet olib uni og‘ziga olib bormay, balki tomosha qiladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Взяв новый предмет, не тянет его в рот, а рассматривает его."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "When given a new object, the child does not immediately put it in their mouth but examines it first"
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
    * linkId = "sits-up-and-stands-with-support"
    * text = "Yotiq holatdan o‘zi o‘tiradi va oyoqlariga to‘la tayanib tik turadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Сам садится из положения лежа и встает с опорой, стоит прямо, опираясь на полные стопы."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can independently sit up from a lying position and stand with support, standing upright with both feet flat on the floor"
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
    * linkId = "uses-pincer-grasp"
    * text = "1 va 2-barmoqchalarining uchlari bilan predmetni olib ushlab turadi (\"qisqichli ushlash\")"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может захватывать и держать маленький предмет кончиками 1 и 2-го пальцев («пинцетный захват»)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can grasp and hold a small object using the tips of the thumb and index finger (\"pincer grasp\")"
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
    * linkId = "identifies-named-objects"
    * text = "Aytilgan tanish predmetlarni ko‘zi bilan topadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Находит глазами названные знакомые предметы."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can visually locate familiar objects when they are named"
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
    * linkId = "uses-voice-to-get-attention"
    * text = "O‘ziga diqqatni jalb qilish uchun ovozdan foydalanadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Пользуется голосом, чтобы привлечь к себе внимание."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses vocalizations to attract attention"
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
    * linkId = "imitates-sounds-and-babbles"
    * text = "Emotsional g‘uvur-g‘uvur qilish, kattalar chiqaradigan ovozlarga taqlid qila oladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Лепет эмоциональный (с интонацией), может подражать звукам, которые делает взрослый."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Produces expressive babbling with intonation and can imitate sounds made by an adult."
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
    * linkId = "uses-consonants-in-babbling"
    * text = "G‘uvur-g‘uvurida undosh tovushlar ko‘p"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "В лепете много согласных."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Babbling contains many consonant sounds."
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
    * linkId = "accepts-new-objects"
    * text = "Yangi predmetlardan qo‘rqmaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Не пугается новых предметов."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Is not afraid of new objects"
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
    * linkId = "gets-on-all-fours"
    * text = "Tizza va kaftlariga turishi mumkin (emaklash)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может встать на четвереньки."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can get onto hands and knees."
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
    * linkId = "uses-pointing-gesture"
    * text = "Ko‘rsatish imosini ishlatadi, predmetlarni ko‘rsatadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Использует указательный жест, указывает предметы."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses the index finger to point at objects (pointing gesture)"
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
    * linkId = "checks-adult-reaction"
    * text = "Katta odamga tez-tez qarab turadi (go‘yo uning javobini tekshirganday)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Часто посматривает на взрослого (проверяя его реакцию.)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Frequently looks at an adult to check their reaction (social referencing)."
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
    * linkId = "initiates-interaction-with-adult"
    * text = "Katta odamga murojaat qiladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Обращается к взрослому."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Initiates interaction with an adult."
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
    * linkId = "adapts-to-new-people-and-environment"
    * text = "Yangi kishilar paydo bo‘lsa, yangi muhitda bo‘lib qolsa xulq-atvorini o‘zgartiradi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Изменяет свое поведение при новых людях, новой обстановке."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Changes behavior in response to unfamiliar people or new environments."
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
    * linkId = "shows-interest-in-toys"
    * text = "O‘yinchoqlarga qiziqishini izhor etadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проявляет интерес к игрушкам."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shows interest in toys"
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
    * linkId = "waves-goodbye-and-hello"
    * text = "Qo‘li bilan \"xayr-xayr\", \"salom-salom\" qilishga o‘rgatish mumkin"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Удается научить махать ручкой «пока-пока», «привет»."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can learn to wave \"bye-bye\" and \"hello\"."
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
    * linkId = "sleep-duration-per-day"
    * text = "Bir sutkada uyqusi 10 soatdan kam emas va 16 soatdan ortiq emas"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Спит не менее 10 и не более 16 часов в сутки."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Sleeps no less than 10 hours and no more than 16 hours per day"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g6Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-6').item.answer.value.ofType(Coding).where(code = 'Y').count() / 16 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-6-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 16 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g6Percent"

  * item[+]
    * linkId = "age-group-6-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g6Percent >= 80, 'formed', iif(%g6Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-6-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-6-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 7: от 1 года 1 мес. 16 дней до 1 года 4 мес. 15 дней (13 items) =====
* item[+]
  * linkId = "age-group-7"
  * text = "1 yosh 1 oy 16 kunlikdan 1 yosh 4 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 1 года 1 мес. 16 дней до 1 года 4 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "1 year 1 month 16 days to 1 year 4 months 15 days"
  * type = #group

  * item[+]
    * linkId = "walks-independently"
    * text = "Birovning yordamisiz yuradi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Ходит без поддержки"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Walks independently without support"
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
    * linkId = "drinks-from-cup"
    * text = "Piyoladan ichadi (lablari bilan piyola chetini quchib oladi)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Пьёт из чашки (обнимает губами край чашки)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Drinks from a cup (places lips on the rim of the cup)"
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
    * linkId = "eats-semi-solid-food"
    * text = "Yarim qattiq ovqatlarni yeydi (qaynatilgan sabzavotlar)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Ест полутвёрдую пищу (варёные овощи, протёртые фрукты и т.п.)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Eats semi-solid foods (e.g., cooked vegetables, mashed fruits)"
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
    * linkId = "speaks-several-words"
    * text = "Bir nechta so‘zni o‘rinli talaffuz etadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Уместно произносит несколько слов."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses several words appropriately"
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
    * linkId = "imitates-speech-sounds-and-words"
    * text = "Kattalar talaffuz etadigan nutq tovushlari va so‘zlarga taqlid qiladi (masalan, \"Voy\", \"Bam\", \"mu-u\", \"tog‘a\")"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Подражает речевым звукам и словам (например, «Ой!», «Бах!», «Му-у», «Дядя» …) произносимым взрослым."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Imitates speech sounds and words spoken by adults (e.g., \"Oops!\", \"Bang!\", \"Moo\", \"Uncle\", etc.)"
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
    * linkId = "imitates-adult-gestures-and-actions"
    * text = "Kattalarning imo-ishoralari va qo‘l harakatlariga taqlid qiladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Подражает жестам и действиям взрослых"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Imitates adults' gestures and actions."
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
    * linkId = "avoids-tripping-over-obstacles"
    * text = "To‘siqlarga hech qachon to‘qanamaydi yoki kamdan-kam to‘qanaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Никогда или редко спотыкается о препятствия."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Rarely or never trips over obstacles"
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
    * linkId = "walks-confidently"
    * text = "Yurishga qo‘rqmaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Не боится ходить"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Is not afraid to walk."
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
    * linkId = "demonstrates-fine-motor-skills"
    * text = "Epchillik (chaqqonlik) qiladi (stolning ustida turgan narsalarni kamdan-kam ag‘daraib yuboradi) – kitobning karton sahifalarini o‘giradi, pufaklarni qutichaga soladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проявляет ловкость (редко что-то случайно опрокидывает на столе), переворачивает картонные страницы в книжке, опускает шарики в коробку."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Demonstrates good hand coordination (rarely knocks objects over accidentally, turns thick cardboard pages in a book, drops balls into a box)."
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
    * linkId = "shows-interest-in-people"
    * text = "Kishilarga diqqatini qaratadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Проявляет внимание к людям."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shows interest in people."
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
    * linkId = "stands-up-from-floor-independently"
    * text = "Polda o‘tirgan holatdan birovning yordamisiz o‘zi tik turadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Встает с пола без поддержки из положения сидя."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Stands up from the floor independently from a sitting position."
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
    * linkId = "communicates-needs-with-gestures-and-sounds"
    * text = "Nima xohlashini imo-ishoralar, tovushlar, harakatlar bilan ko‘rsatadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Использует жесты, звуки, действия, чтобы показать, чего он хочет."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses gestures, sounds, or actions to communicate wants and needs"
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
    * linkId = "places-objects-into-container"
    * text = "Predmetlarni qutichaga taxlaydi yoki piramidaga halqalarni kiygizadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Складывает предметы в коробочку или нанизывает кольца на пирамидку."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Places objects into a container or stacks rings onto a ring-stacking toy (ring pyramid)"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g7Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-7').item.answer.value.ofType(Coding).where(code = 'Y').count() / 13 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-7-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 13 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g7Percent"

  * item[+]
    * linkId = "age-group-7-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g7Percent >= 80, 'formed', iif(%g7Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-7-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-7-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 8: от 1 года 4 мес.16 дней до 1 года 7 мес. 15 дней (6 items) =====
* item[+]
  * linkId = "age-group-8"
  * text = "1 yosh 4 oy 16 kunlikdan 1 yosh 7 oy 15 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 1 года 4 мес.16 дней до 1 года 7 мес. 15 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "1 year 4 months 16 days to 1 year 7 months 15 days"
  * type = #group

  * item[+]
    * linkId = "shows-interest-in-book-pictures"
    * text = "Kitobdagi rasmlarga qiziqadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Интересуется картинками в книжке."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Shows interest in pictures in books."
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
    * linkId = "identifies-body-parts"
    * text = "O‘zida, qo‘g‘irchoqda yoki katta odamda tana qismlarini ko‘rsatadi (bosh, oyoq, qo‘l, qorin)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "По просьбе показывает на себе, или на кукле, или на взрослом части тела (голова, ноги, руки, живот и т.п.)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "When asked, points to body parts on themselves, a doll, or an adult (e.g., head, legs, arms, tummy, etc.)."
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
    * linkId = "imitates-object-use"
    * text = "Kattalarning predmetlar bilan bajargan harakatlariga taqlid qiladi (masalan, taroq, qoshiq, telefon, televizorni boshqarish pulti, supurgi va shunga o‘xshash narsalar)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Подражает действиям взрослых с предметами (например, расческой, ложкой, телефоном, пультом от телевизора, веником и т.п.)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Imitates adults' actions using objects (e.g., a comb, spoon, telephone, TV remote, broom, etc.)."
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
    * linkId = "stacks-blocks"
    * text = "Bir kubikning ustiga ikkinchisini qo‘ya oladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может поставить кубик на кубик."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can stack one block on top of another."
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
    * linkId = "remembers-object-locations"
    * text = "Uni qiziqtirgan narsalar uyning qayerida joylashganini eslab qoladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Запоминает, где дома находятся интересующие его вещи."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Remembers where interesting objects are located at home"
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
    * linkId = "calms-down-easily"
    * text = "Agar xafa bo‘lsa uni tinchlantirish qiyin emas."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Если расстроился, то его не трудно успокоить"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can be comforted easily when upset"
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g8Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-8').item.answer.value.ofType(Coding).where(code = 'Y').count() / 6 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-8-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 6 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g8Percent"

  * item[+]
    * linkId = "age-group-8-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g8Percent >= 80, 'formed', iif(%g8Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-8-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-8-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 9: от 1 года 9 мес. до 2 лет 2 мес. 29 дней (6 items) =====
* item[+]
  * linkId = "age-group-9"
  * text = "1 yosh 9 oylikdan 2 yosh 2 oy 29 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 1 года 9 мес. до 2 лет 2 мес. 29 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "1 year 9 months to 2 years 2 months 29 days"
  * type = #group

  * item[+]
    * linkId = "names-familiar-objects"
    * text = "Iltimosga ko‘ra tanish predmetlar (odamlar…) ni hech bo‘lmaganda bir bo‘g‘in bilan nomlaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Называет знакомые предметы (людей, животных…) хотя бы одним слогом по просьбе взрослого."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Names familiar objects (people, animals, etc.) using at least one syllable when asked by an adult."
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
    * linkId = "matches-identical-objects"
    * text = "Bir nechta har xil narsalar ichidan katta odam ushlab turgan narsaning o‘zidan topa oladi (poyafzol yoki paypoqning ikkinchi jufti, yana bita qizil kubik, qoshiqcha va boshqalar)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Среди нескольких разных вещей может найти такую же, какую держит взрослый (второй ботинок, носок, еще один красный кубик, маленькую ложку и т.д.)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Among several different objects, can identify and select one that matches the object held by an adult (e.g., the other shoe, a sock, another red block, a small spoon)."
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
    * linkId = "brings-object-from-another-room"
    * text = "Iltimosga ko‘ra boshqa xonadan (oshxonadan, vannaxonadan va boshqa xonalardan) buyumni olib keladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Приносит по просьбе предмет из другого помещения (комнаты, кухни, ванной или других помещений)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Brings an object from another room (e.g., bedroom, kitchen, bathroom) when asked."
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
    * linkId = "follows-verbal-commands"
    * text = "og‘zaki iltimoslarni bajaradi (bolaga nigoh, imo-ishora, harkat bilan aytib turilmaganda): ko‘rsatadi, olib keladi, bajaradi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Выполняет чисто устные просьбы (когда ребёнку не подсказывают взглядом, жестом. действием): показывает, приносит, делает."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Follows spoken instructions without visual or gestural cues (e.g., points to, brings, or performs an action)."
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
    * linkId = "speaks-two-syllable-words"
    * text = "Ikkita har xil bo‘g‘indan iborat so‘zlarni talaffuz qiladi (\"xola\" va shunga o‘xshash)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Произносит слова, состоящие из двух разных слогов («тётя» и т.п.)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Says words consisting of two different syllables (e.g., \"aunt\")."
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
    * linkId = "eats-independently-with-spoon"
    * text = "O‘zi qoshiq bilan ovqat yeya oladi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Умеет сам есть ложкой."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Feeds themselves using a spoon."
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g9Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-9').item.answer.value.ofType(Coding).where(code = 'Y').count() / 6 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-9-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 6 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g9Percent"

  * item[+]
    * linkId = "age-group-9-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g9Percent >= 80, 'formed', iif(%g9Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-9-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-9-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 10: от 2 лет 3 месяцев до 2 лет 8 мес. 29 дней (5 items) =====
* item[+]
  * linkId = "age-group-10"
  * text = "2 yosh 3 oylikdan 2 yosh 8 oy 29 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "от 2 лет 3 месяцев до 2 лет 8 мес. 29 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "2 years 3 months to 2 years 8 months 29 days"
  * type = #group

  * item[+]
    * linkId = "uses-two-word-phrases"
    * text = "Kattalar bilan muloqotda bo‘lganida 2 va undan ortiq so‘zlardan iborat iboralarni ishlatadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При общении с взрослым использует высказывания из 2-х и более слов."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses phrases of two or more words when communicating with an adult."
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
    * linkId = "repeats-short-sentences"
    * text = "Kattalar orqasidan 2 va undan ortiq so‘zlardan iborat bo‘lgan gaplarni takrorlaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Повторяет за взрослым предложения из 2-х и более слов."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Repeats sentences of two or more words after an adult"
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
    * linkId = "sorts-objects-by-shape"
    * text = "Predmetlarni shakliga ko‘ra alohida qiladi (ikkita idishga 6 tadan kam bo‘lmagan miqdordagi predmetlarni soladi, masalan kubiklar – pufaklar, qoshiqlar - taroqlar)"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может сортировать предметы по форме (разложить в две ёмкости не менее, чем 6 предметов – например, кубики – шарики, ложки - расчёски)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can sort objects by shape (places at least six objects into two groups, e.g., blocks and balls, spoons and combs)."
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
    * linkId = "puts-on-clothing"
    * text = "O‘ziga biror bir predmetlarni kiyib olishi mumkin"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Может на себя надеть какие-нибудь предметы."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Can put on some clothing items independently."
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
    * linkId = "persists-in-goal-directed-activity"
    * text = "O‘z manfaatlarida qat‘iy: agar uni boshqa narsaga diqqatini chalg‘itishsa, nimani xohlaganini unutmaydi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Настойчив в своих интересах: если отвлекли, не забывает, чего хотел."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Persists in their interests; if distracted, remembers what they wanted to do."
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g10Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-10').item.answer.value.ofType(Coding).where(code = 'Y').count() / 5 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-10-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 5 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g10Percent"

  * item[+]
    * linkId = "age-group-10-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50-79% partially formed, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g10Percent >= 80, 'formed', iif(%g10Percent >= 50, 'partial', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#partial "Qisman shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Частично сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Partially formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-10-recommendation"
    * text = "Qisman shakllangan bo‘lsa — kuzatuv tavsiya etiladi; rivojlanish talab etilsa — mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasiga yo‘naltirish tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "При частично сформированном навыке рекомендуется наблюдение; при показателе «требуется развитие» — направление к специалисту (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "If partially formed, observation is recommended; if development is needed, referral to a specialist (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-10-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed

// ===== Age group 11: 2-х лет 9 мес. до 3-х лет 2 мес. 29 дней (2 items) =====
* item[+]
  * linkId = "age-group-11"
  * text = "2 yosh 9 oylikdan 3 yosh 2 oy 29 kunlikkacha"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "2-х лет 9 мес. до 3-х лет 2 мес. 29 дней"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "2 years 9 months to 3 years 2 months 29 days"
  * type = #group

  * item[+]
    * linkId = "asks-questions"
    * text = "Savollar beradi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Задает вопросы"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Asks questions."
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
    * linkId = "uses-self-referential-pronouns"
    * text = "\"Men\" yoki \"meniki\" so‘zlarini ishlatadi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Использует слова «я» или «мой»"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Uses the words \"I\" or \"my\"."
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

  // Computed: % "Yes" answers in this age group, and the resulting developmental status
  * extension[$variable][+].valueExpression.name = #g11Percent
  * extension[$variable][=].valueExpression.language = #"text/fhirpath"
  * extension[$variable][=].valueExpression.expression = "(%resource.item.where(linkId='age-group-11').item.answer.value.ofType(Coding).where(code = 'Y').count() / 2 * 100).round(0).toInteger()"

  * item[+]
    * linkId = "age-group-11-percent"
    * text = "Bajarilgan ko‘nikmalar foizi"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Процент выполненных навыков"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Percentage of skills achieved"
    * type = #integer
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Count of 'Ha' answers in this age group divided by 2 (the number of items in the group), as a percentage"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "%g11Percent"

  * item[+]
    * linkId = "age-group-11-result"
    * text = "Natija"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Результат"
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "Result"
    * type = #coding
    * readOnly = true
    * extension[$sdc-calculated-expression].valueExpression.description = "Result band: >=80% formed, 50% (special 2-item case) needs specialist consultation, <50% development needed"
    * extension[$sdc-calculated-expression].valueExpression.language = #"text/fhirpath"
    * extension[$sdc-calculated-expression].valueExpression.expression = "iif(%g11Percent >= 80, 'formed', iif(%g11Percent >= 50, 'needs-specialist-consult', 'needs-development'))"

    * answerOption[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Навык сформирован"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skill formed"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-specialist-consult "Mutaxassis konsultatsiyasi talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется консультация специалиста"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Specialist consultation required"
    * answerOption[+].valueCoding = $child-development-result-cs#needs-development "Rivojlanish talab etiladi"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Требуется развитие"
    * answerOption[=].valueCoding.display.extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Development needed"

  * item[+]
    * linkId = "age-group-11-recommendation"
    * text = "Mutaxassis (oftalmolog, otolaringolog, nevrolog) konsultatsiyasi tavsiya etiladi."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #ru
        * extension[content].valueString = "Рекомендуется консультация специалиста (офтальмолог, отоларинголог, невролог)."
      * extension[$translation-extension][+]
        * extension[lang].valueCode = #en
        * extension[content].valueString = "A specialist consultation (ophthalmologist, ENT, neurologist) is recommended."
    * type = #display
    * enableWhen[+].question = "age-group-11-result"
    * enableWhen[=].operator = #!=
    * enableWhen[=].answerCoding = $child-development-result-cs#formed


Instance: example-child-development-screening-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Bola rivojlanishi skriningiga javob namunasi"
Description: "0–03 yosh bolalarda rivojlanish buzilishlarini aniqlash skriningiga to‘ldirilgan javob namunasi (barcha ko‘nikmalar shakllangan holat)"
* questionnaire = Canonical(ChildDevelopmentScreeningQuestionnaire)
* status = #completed
* subject = Reference(example-salim)
* authored = "2026-07-27T10:00:00+05:00"
* language = #uz

* item[+]
  * linkId = "age-group-1"
  * item[+]
    * linkId = "eye-contact"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "response-to-loud-sounds"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-1-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-1-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-2"
  * item[+]
    * linkId = "tracks-face"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "looks-at-face-or-toy"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "looks-into-eyes"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "social-smile"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "response-to-soft-sound"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "response-to-soft-sound-while-awake"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-2-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-2-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-3"
  * item[+]
    * linkId = "tracks-toy"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "turns-toward-sound"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "holds-head-in-prone-position"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "holds-head-upright"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "social-engagement-response"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-3-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-3-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-4"
  * item[+]
    * linkId = "tracks-side-object"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "reaches-for-object-in-prone-position"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "transfers-object-between-hands"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "rotates-toy-for-inspection"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "grasps-and-mouths-object"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "shows-interest-in-new-environment"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-4-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-4-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-5"
  * item[+]
    * linkId = "sits-without-support"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "rolls-from-back-to-stomach"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "holds-toy-in-each-hand"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "searches-for-hidden-object"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "shares-attention-between-adult-and-object"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "eats-thick-food-with-spoon"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "listens-to-conversation"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "shows-stranger-wariness"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "plays-pat-a-cake-on-request"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-5-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-5-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-6"
  * item[+]
    * linkId = "examines-new-object"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "sits-up-and-stands-with-support"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "uses-pincer-grasp"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "identifies-named-objects"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "uses-voice-to-get-attention"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "imitates-sounds-and-babbles"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "uses-consonants-in-babbling"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "accepts-new-objects"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "gets-on-all-fours"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "uses-pointing-gesture"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "checks-adult-reaction"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "initiates-interaction-with-adult"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "adapts-to-new-people-and-environment"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "shows-interest-in-toys"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "waves-goodbye-and-hello"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "sleep-duration-per-day"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-6-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-6-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-7"
  * item[+]
    * linkId = "walks-independently"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "drinks-from-cup"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "eats-semi-solid-food"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "speaks-several-words"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "imitates-speech-sounds-and-words"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "imitates-adult-gestures-and-actions"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "avoids-tripping-over-obstacles"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "walks-confidently"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "demonstrates-fine-motor-skills"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "shows-interest-in-people"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "stands-up-from-floor-independently"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "communicates-needs-with-gestures-and-sounds"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "places-objects-into-container"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-7-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-7-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-8"
  * item[+]
    * linkId = "shows-interest-in-book-pictures"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "identifies-body-parts"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "imitates-object-use"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "stacks-blocks"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "remembers-object-locations"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "calms-down-easily"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-8-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-8-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-9"
  * item[+]
    * linkId = "names-familiar-objects"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "matches-identical-objects"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "brings-object-from-another-room"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "follows-verbal-commands"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "speaks-two-syllable-words"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "eats-independently-with-spoon"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-9-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-9-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-10"
  * item[+]
    * linkId = "uses-two-word-phrases"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "repeats-short-sentences"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "sorts-objects-by-shape"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "puts-on-clothing"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "persists-in-goal-directed-activity"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-10-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-10-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"

* item[+]
  * linkId = "age-group-11"
  * item[+]
    * linkId = "asks-questions"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "uses-self-referential-pronouns"
    * answer[+].valueCoding = $fertility-questionnaire-cs#Y "Yes"
  * item[+]
    * linkId = "age-group-11-percent"
    * answer[+].valueInteger = 100
  * item[+]
    * linkId = "age-group-11-result"
    * answer[+].valueCoding = $child-development-result-cs#formed "Ko‘nikma shakllangan"