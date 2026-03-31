CodeSystem: PatientSatisfactionCS
Id: patient-satisfaction-cs
Title: "Patient satisfaction survey answers"
Description: "Answer codes for the patient satisfaction questionnaire"
* insert OriginalCodeSystem(patient-satisfaction-cs)
* ^language = #uz

* #remote "Masofadan yozildim («Портал Пациента» orqali)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дистанционно (через Портал Пациента)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Remotely (via Patient Portal)"

* #in-person "Tibbiyot muassasasiga kelib yozildim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По приходу в мед.учреждение"
  * ^designation[+].language = #en
  * ^designation[=].value = "In person at the medical facility"

* #phone "Telefon orqali yozildim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По телефону"
  * ^designation[+].language = #en
  * ^designation[=].value = "By phone"

* #by-staff "Meni shifokor / hamshira yozdi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Записал врач/мед.сестра"
  * ^designation[+].language = #en
  * ^designation[=].value = "Scheduled by doctor/nurse"

* #other "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"

* #10-15min "10-15 daqiqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "10-15 минут"
  * ^designation[+].language = #en
  * ^designation[=].value = "10-15 minutes"

* #20-30min "20-30 daqiqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "20-30 минут"
  * ^designation[+].language = #en
  * ^designation[=].value = "20-30 minutes"

* #60min-plus "60 daqiqa yoki undan ortiq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "60 минут и больше"
  * ^designation[+].language = #en
  * ^designation[=].value = "60 minutes or more"

* #fully-satisfied "To'liq mamnunman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полностью удовлетворен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fully satisfied"

* #rather-satisfied "Ko'proq mamnunman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скорее удовлетворен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rather satisfied"

* #rather-unsatisfied "Ko'proq mamnun emasman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скорее не удовлетворен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rather unsatisfied"

* #not-satisfied "Umuman mamnun emasman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Совсем не удовлетворен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not satisfied at all"

* #yes-complete "Ha, to'liq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Да, полностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yes, completely"

* #not-quite-complete "Unchalik to'liq emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не совсем полностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not quite completely"

* #only-partial "Faqat qisman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Только частично"
  * ^designation[+].language = #en
  * ^designation[=].value = "Only partially"

* #no "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"

* #no-answers "Yo'q, javob olmadim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет, не получил(а) ответы"
  * ^designation[+].language = #en
  * ^designation[=].value = "No, I didn't get answers"
