CodeSystem: MedicationRequestStatusReasonSctCS
Id: medicationrequest-status-reason-sct-cs
Title: "MedicationRequest SNOMED CT status reason translations"
Description: "MedicationRequest SNOMED CT status reason supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(
    medicationrequest-status-reason-sct-cs,
    $sct,
    2026.1.0
)

* #438833006 "Administration of medication contraindicated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Применение лекарственного средства противопоказано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasini qo'llash qarshi ko'rsatilgan"
