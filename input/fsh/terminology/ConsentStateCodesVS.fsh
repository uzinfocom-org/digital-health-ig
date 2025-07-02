ValueSet: ConsentStateCodesVS
Id: consent-state-codes-vs
Title: "Consent State Codes"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-state-codes-vs"
* ^experimental = true
* ^language = #en
* $consent-state-codes#draft
* $consent-state-codes#draft ^designation[0].language = #ru
* $consent-state-codes#draft ^designation[=].value = "Ожидание"
* $consent-state-codes#draft ^designation[+].language = #uz
* $consent-state-codes#draft ^designation[=].value = "Kutilmoqda"
* $consent-state-codes#active
* $consent-state-codes#active ^designation[0].language = #ru
* $consent-state-codes#active ^designation[=].value = "Активно"
* $consent-state-codes#active ^designation[+].language = #uz
* $consent-state-codes#active ^designation[=].value = "Faol"
* $consent-state-codes#inactive
* $consent-state-codes#inactive ^designation[0].language = #ru
* $consent-state-codes#inactive ^designation[=].value = "Неактивно"
* $consent-state-codes#inactive ^designation[+].language = #uz
* $consent-state-codes#inactive ^designation[=].value = "Faol emas"
* $consent-state-codes#not-done
* $consent-state-codes#not-done ^designation[0].language = #ru
* $consent-state-codes#not-done ^designation[=].value = "Отказано"
* $consent-state-codes#not-done ^designation[+].language = #uz
* $consent-state-codes#not-done ^designation[=].value = "Tashlab ketilgan"
* $consent-state-codes#entered-in-error
* $consent-state-codes#entered-in-error ^designation[0].language = #ru
* $consent-state-codes#entered-in-error ^designation[=].value = "Введено по ошибке"
* $consent-state-codes#entered-in-error ^designation[+].language = #uz
* $consent-state-codes#entered-in-error ^designation[=].value = "Xatoda kiritilgan"
* $consent-state-codes#unknown
* $consent-state-codes#unknown ^designation[0].language = #ru
* $consent-state-codes#unknown ^designation[=].value = "Неизвестно"
* $consent-state-codes#unknown ^designation[+].language = #uz
* $consent-state-codes#unknown ^designation[=].value = "Noma'lum"

CodeSystem: ConsentPolicyCS
Id: consent-policy-cs
Title: "Consent policies"
Description: "Defines the regulatory basis for consent"
* ^url = "https://terminology.medcore.uz/CodeSystem/consent-policy-cs"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* #uz-265-I "“Fuqarolar salomatligini muhofaza qilish to'g'risida”gi O'zbekiston Respublikasi Qonunining 19, 24, 25, 26, 28, 34, 45-moddalari."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Статьи: 19, 24, 25, 26, 28, 34, 45 Закона Руз \"Об охране здоровья граждан\""
  * ^designation[+].language = #en
  * ^designation[=].value = "Articles: 19, 24, 25, 26, 28, 34, 45 of the Law of the Republic of Uzbekistan \"On the Protection of Citizens' Health\""
* #uz-LRU-547 "“Shaxsiy ma'lumotlar to'g'risida”gi O'zR Qonunining 15, 18, 19, 21-31-moddalari."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Статьи: 15, 18, 19, 21-31 Закона Руз \"О персональных данных\""
  * ^designation[+].language = #en
  * ^designation[=].value = "Articles: 15, 18, 19, 21-31 of the Law of the Republic of Uzbekistan \"On Personal Data\""
