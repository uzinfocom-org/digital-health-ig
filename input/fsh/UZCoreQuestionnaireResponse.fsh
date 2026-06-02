Profile: UZCoreQuestionnaireResponse
Parent: QuestionnaireResponse
Id: uz-core-questionnaire-response
Title: "UZ Core QuestionnaireResponse"
Description: "Uzbekistan Core QuestionnaireResponse profile for capturing responses with digital signature support"
* ^experimental = true
* ^status = #active
* ^date = "2025-12-16"
* ^publisher = "Uzinfocom"

// Core elements
* identifier MS
* basedOn MS
* partOf MS
* questionnaire 1..1 MS
  * ^short = "Reference to the UZCoreQuestionnaire being answered"
* status MS
* subject MS
* encounter MS
* encounter only Reference(UZCoreEncounter)
* authored MS
* author MS
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device or UZCoreOrganization)
* source MS
* source only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson)

// Item structure
* item MS
  * linkId MS
  * definition MS
  * text MS
  * answer MS
    * value[x] MS
    * item MS
  * item MS
