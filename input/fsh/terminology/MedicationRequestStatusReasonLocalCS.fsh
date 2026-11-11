CodeSystem: MedicationRequestStatusReasonLocalCS
Id: medicationrequest-status-reason-local-cs
Title: "MedicationRequest local status reason"
Description: "National reasons for cancelling a prescription that HL7 medicationrequest-status-reason does not cover, in Uzbek, Russian and English"
* insert OriginalCodeSystemDraft(medicationrequest-status-reason-local-cs)

* #medical-contraindication "Tibbiy qarshi ko'rsatma"
  * ^definition = "The prescription is cancelled because the medicine is medically contraindicated for the patient, without a more specific HL7 reason such as allergy, intolerance or pregnancy."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинское противопоказание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical contraindication"

* #other "Boshqa sabab"
  * ^definition = "The prescription is cancelled for another reason, described in free text."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other reason"
