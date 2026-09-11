Instance: dmed-dispensary-deregistration-reason-to-dhp-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED dispensary deregistration reasons To DHP dispensary deregistration reasons"
Description: "ConceptMap for mapping DMED `deregistration_reason` values to DHP dispensary deregistration reason codes. DMED populates `Encounter.admission.dischargeDisposition` with the target code of this map."
* name = "DMEDDispensaryDeregistrationReasonCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-dispensary-deregistration-reason-to-dhp-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DMEDDispensaryDeregistrationReasonCS)
* group.target = Canonical(DispensaryDeregistrationReasonCS)

* sourceScopeCanonical = Canonical(DMEDDispensaryDeregistrationReasonVS)
* targetScopeCanonical = Canonical(DispensaryDeregistrationReasonVS)

* group[=].element[+].code = #unspecified
* group[=].element[=].display = "Не указано"
* group[=].element[=].target[+].code = #chr-0129-0001
* group[=].element[=].target[=].display = "Ko'rsatilmagan"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #recovery_improvement
* group[=].element[=].display = "Подтверждённое выздоровление или стойкое улучшение"
* group[=].element[=].target[+].code = #chr-0129-0002
* group[=].element[=].target[=].display = "Tasdiqlangan sog'ayish yoki barqaror yaxshilanish"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #deceased
* group[=].element[=].display = "Смерть пациента"
* group[=].element[=].target[+].code = #chr-0129-0003
* group[=].element[=].target[=].display = "Bemorning vafoti"
* group[=].element[=].target[=].relationship = #equivalent

// DMED states only that residence changed; the DHP code additionally requires the
// move to leave the served territory, which is what the registry rule intends.
* group[=].element[+].code = #residence_change
* group[=].element[=].display = "Изменение постоянного места жительства"
* group[=].element[=].target[+].code = #chr-0129-0004
* group[=].element[=].target[=].display = "Doimiy yashash joyining xizmat ko'rsatiladigan hudud tashqarisiga o'zgarishi"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

// DMED does not qualify the sentence length; the DHP code requires more than a year.
* group[=].element[+].code = #prison
* group[=].element[=].display = "Лишение свободы"
* group[=].element[=].target[+].code = #chr-0129-0005
* group[=].element[=].target[=].display = "Bir yildan ortiq muddatga ozodlikdan mahrum qilish"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

// Source code is misspelled in the DMED API contract.
* group[=].element[+].code = #patitient_decline
* group[=].element[=].display = "Отказ пациента"
* group[=].element[=].target[+].code = #chr-0129-0006
* group[=].element[=].target[=].display = "Bemorning dispanser kuzatuvidan bosh tortishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #other
* group[=].element[=].display = "Другое"
* group[=].element[=].target[+].code = #chr-0129-0007
* group[=].element[=].target[=].display = "Boshqa"
* group[=].element[=].target[=].relationship = #equivalent
