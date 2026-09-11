CodeSystem: DispensaryDeregistrationReasonCS
Id: dispensary-deregistration-reason-cs
Title: "Dispensary Deregistration Reason CodeSystem"
Description: "Reasons a patient is taken off dispensary observation, recorded on the encounter that closes the observation period. Carried in `Encounter.admission.dischargeDisposition` and therefore included in [encounter-discharge-disposition-vs](ValueSet-encounter-discharge-disposition-vs.html)."
* insert OriginalCodeSystemDraft(dispensary-deregistration-reason-cs)

* #chr-0129-0001 "Ko'rsatilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не указано"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified"

* #chr-0129-0002 "Tasdiqlangan sog'ayish yoki barqaror yaxshilanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтверждённое выздоровление или стойкое улучшение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Confirmed recovery or sustained improvement"

* #chr-0129-0003 "Bemorning vafoti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Смерть пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Death of the patient"

* #chr-0129-0004 "Doimiy yashash joyining xizmat ko'rsatiladigan hudud tashqarisiga o'zgarishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменение постоянного места жительства с выездом за пределы обслуживаемой территории"
  * ^designation[+].language = #en
  * ^designation[=].value = "Change of permanent residence outside the served territory"

* #chr-0129-0005 "Bir yildan ortiq muddatga ozodlikdan mahrum qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лишение свободы на срок свыше одного года"
  * ^designation[+].language = #en
  * ^designation[=].value = "Imprisonment for a term exceeding one year"

* #chr-0129-0006 "Bemorning dispanser kuzatuvidan bosh tortishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказ пациента от диспансерного наблюдения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient's refusal of dispensary observation"

* #chr-0129-0007 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"
