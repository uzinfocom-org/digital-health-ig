Instance: HelminthScreeningQuestionnaire
InstanceOf: UZCoreQuestionnaire
Usage: #definition
Title: "Helminth Disease Screening Questionnaire"
Description: "Early detection questionnaire for helminthic diseases (children)"
* url = "https://dhp.uz/fhir/core/Questionnaire/HelminthScreeningQuestionnaire"
* name = "HelminthScreeningQuestionnaire"
* language = #uz
* status = #draft
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* subjectType = #Patient
* title = "Gijja kasalliklarini erta aniqlash so'rovnomasi"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник раннего выявления гельминтозных заболеваний"
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Helminth disease early-detection questionnaire"
* description = "2-10 yoshdagi bolalar uchun gijja kasalliklarini erta aniqlash so'rovnomasi."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #ru
    * extension[content].valueString = "Опросник для детей 2-10 лет на раннее выявление гельминтозов."
  * extension[$translation-extension][+]
    * extension[lang].valueCode = #en
    * extension[content].valueString = "Early-detection questionnaire for helminth infection in children aged 2-10."
* code = screening-code-cs#mserv-0007-00004 "Gelmintoz kasalliklarini erta aniqlash so'rovnomasi"

* item[+]
  * linkId = "had-helminth-symptoms-6-months"
  * text = "Bolada oxirgi 6 oy ichida gijja bilan zararlanish alomatlari bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли у ребенка симптомы заражения гельминтами за последние 6 месяцев?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Helminth infection symptoms in the last 6 months?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "had-increased-fatigue-weakness"
  * text = "Kuchaygan charchoq va zaiflik bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Повышенная утомляемость и слабость?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Increased fatigue and weakness?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "child-grinds-teeth-in-sleep"
  * text = "Bola uxlaganda tishlarini g'ijirlatadimi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Скрежещет ли ребенок зубами во сне?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Child grinds teeth in sleep?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "parents-noticed-appetite-changes"
  * text = "Ishtaha pasayishi yoki aksincha oshishi bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Снижение или, наоборот, повышение аппетита?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Decreased or increased appetite?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "had-unexplained-weight-loss"
  * text = "Sababsiz vazn yo'qotish holatlari bo'lganmi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Были ли случаи необъяснимой потери веса?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Unexplained weight loss?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "child-complains-anal-itching"
  * text = "Anal teshik sohasida qichishishga shikoyat bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Жалобы на зуд в области анального отверстия?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Complaints of anal itching?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "parents-noticed-sleep-disturbances"
  * text = "Uyqu buzilishi (bezovta uyqu) bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Нарушения сна (беспокойный сон)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Sleep disturbances (restless sleep)?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "had-abdominal-pain-no-cause"
  * text = "Sababsiz qorin og'rig'i bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Боли в животе без видимой причины?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Abdominal pain with no apparent cause?"
  * type = #boolean
  * required = true

* item[+]
  * linkId = "skin-condition-deterioration"
  * text = "Teri holatining yomonlashishi (oq toshma, oqarish) bormi?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Ухудшение состояния кожи (белая сыпь, бледность)?"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Skin condition deterioration (white rash, pallor)?"
  * type = #boolean
  * required = true

// helminth-risk-score: populated by the DHP backend (count of true answers, 0-9) — not
// computed client-side via SDC. See top-of-file note.
* item[+]
  * linkId = "helminth-risk-score"
  * text = "Ijobiy javoblar soni"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #ru
      * extension[content].valueString = "Количество положительных ответов"
    * extension[$translation-extension][+]
      * extension[lang].valueCode = #en
      * extension[content].valueString = "Number of positive answers"
  * type = #integer
  * readOnly = true
