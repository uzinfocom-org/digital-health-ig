/*
Profile: UZCoreQuestionnaire
Parent: Questionnaire
Id: uz-core-questionnaire
Title: "UZ Core Questionnaire"
Description: "Uzbekistan Core Questionnaire profile for multilingual structured data capture forms"
* ^experimental = true
* ^status = #active
* ^date = "2025-12-16"
* ^publisher = "Uzinfocom"

// Core elements
* url MS
* identifier MS
* version MS
* name MS
* status MS

// Multilingual title
* title 1..1 MS
  * ^short = "Questionnaire title (in Uzbek language)"
  * extension contains $translation-extension named translation 0..* MS
    * ^short = "Questionnaire title (in Russian and Karakalpak languages)"

// Description with translation
* description MS
  * extension contains $translation-extension named translation 0..* MS
    * ^short = "Description (in Russian and Karakalpak languages)"

// Publisher and use context
* publisher MS
* useContext MS
* jurisdiction MS
* purpose MS
* effectivePeriod MS

// Subject type
* subjectType MS
  * ^short = "Resource types that can be subject of this questionnaire"

// Item structure
* item MS
  * linkId MS
  * definition MS
  * code MS
  * prefix MS
    * extension contains $translation-extension named translation 0..* MS
      * ^short = "Item prefix (in Russian and Karakalpak languages)"
  * text MS
    * extension contains $translation-extension named translation 0..* MS
      * ^short = "Item text (in Russian and Karakalpak languages)"
  * type MS
  * enableWhen MS
  * required MS
  * repeats MS
  * readOnly MS
  * maxLength MS
  * answerConstraint MS
  * answerValueSet MS

  // Answer options with translation support
  * answerOption MS
    * value[x] MS
    * valueCoding MS
    * valueCoding.display.extension contains $translation-extension named translation 0..* MS
      * ^short = "Answer option display (in Russian and Karakalpak languages)"

  // Initial value
  * initial MS

  // Nested items
  * item MS
*/
