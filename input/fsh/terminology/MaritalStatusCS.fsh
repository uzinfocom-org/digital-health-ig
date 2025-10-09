CodeSystem: MaritalStatusCS
Id: marital-status-cs
Title: "Marital status translations"
Description: "Marital status supplement with Uzbek and Russian translations"
* insert SupplementCodeSystemDraft(marital-status-cs, $v3-MaritalStatus, 3.0.0)
* #M "Married"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uylangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Состоит в браке"
* #W "Widower"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Beva, beva"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вдовец, вдова"
* #D "Divorced"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ajrashgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Разведен (а)"
* #U "Single"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Turmushga chiqmagan/Bo'ydoq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не замужем/Холост"
* #T "Cohabiting"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Birgalikda yashash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сожительство"
