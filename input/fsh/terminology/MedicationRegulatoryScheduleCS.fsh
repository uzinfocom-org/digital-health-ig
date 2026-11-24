CodeSystem: MedicationRegulatoryScheduleCS
Id: medication-regulatory-schedule-cs
Title: "Medication regulatory schedule"
Description: "Control schedules of medicinal products from the Pharmaceutical Committee medicinal product registry (is_narcotic, is_psychotropic)"

* insert OriginalCodeSystemDraft(medication-regulatory-schedule-cs)

* #narcotic "Giyohvandlik vositasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наркотическое средство"
  * ^designation[+].language = #en
  * ^designation[=].value = "Narcotic drug"

* #psychotropic "Psixotrop modda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Психотропное вещество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Psychotropic substance"
