CodeSystem: DispensaryDeregistrationReasonCS
Id: dispensary-deregistration-reason-cs
Title: "Dispensary deregistration reason"
Description: "Additional reasons for ending dispensary observation that are not covered by existing discharge disposition codes. Carried in `Encounter.admission.dischargeDisposition`."
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

* #chr-0129-0006 "Bemorning dispanser kuzatuvidan bosh tortishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказ пациента от диспансерного наблюдения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient's refusal of dispensary observation"
