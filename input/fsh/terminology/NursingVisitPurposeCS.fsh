CodeSystem: NursingVisitPurposeCS
Id: nursing-visit-purpose-cs
Title: "Nursing Visit Purposes"
Description: "National purposes of a Nursing home visit that have no equivalent SNOMED CT concept. They are service codes for ServiceRequest, not screening programs; the other Nursing purposes use SNOMED CT or the screening and home visit codes."
* insert OriginalCodeSystemDraft(nursing-visit-purpose-cs)

* #mserv-0008-00001 "Aholini ro'yxatga olish"
  * ^definition = "A Nursing home visit to enumerate residents and collect or verify their demographic and household registration details. This is an administrative visit purpose, not a clinical screening examination, diagnosis, or questionnaire result. No equivalent international service concept was identified; do not substitute an ethnic-group census category, a disability assessment scale, or a clinical examination."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перепись населения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Population enumeration"
* #mserv-0008-00002 "Dori vositalarini uyga yetkazib berish"
  * ^definition = "A Nursing home visit to deliver and hand over prescribed medication to the patient or an authorized recipient at home. The home setting is part of this service's meaning. This purpose is not medication administration, a prescription, or an unspecified pharmacy dispense. The actual medication supply is recorded separately in MedicationDispense when applicable. No equivalent international service concept was identified: SNOMED CT 373784005 Dispensing medication does not specify the home setting, and 895405008 Pharmacy delivery service is a pharmacy's service rather than a nurse's handover at a home visit."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдача препаратов на дом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Home medication delivery and handover"
