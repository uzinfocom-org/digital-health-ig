CodeSystem: DeviceRiskClassCS
Id: device-risk-class-cs
Title: "Device risk class"
Description: "Medical device risk classes used in the Pharmaceutical Committee medical device registry (certificate.risk_class: L - I, O - IIa, M - IIb, H - III)"

* insert OriginalCodeSystemDraft(device-risk-class-cs)

* #I "I sinf (past xavf)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Класс I (низкий риск)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Class I (low risk)"

* #IIa "IIa sinf (o'rtacha xavf)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Класс IIа (средний риск)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Class IIa (medium risk)"

* #IIb "IIb sinf (yuqori xavf)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Класс IIб (повышенный риск)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Class IIb (elevated risk)"

* #III "III sinf (eng yuqori xavf)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Класс III (высокий риск)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Class III (high risk)"
