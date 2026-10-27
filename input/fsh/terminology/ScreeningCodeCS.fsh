CodeSystem: ScreeningCodeCS
Id: screening-code-cs
Title: "Screening and Home Visits Code System"
Description: "National screening program identifiers and home visit services. DMED breast and cervical questionnaire programs remain distinct from the HPV programs even when their clinical service codes use SNOMED CT. Local program identifiers are not replacements for SNOMED clinical coding."
* insert OriginalCodeSystemDraft(screening-code-cs)

* #mserv-0007-00003 "Serebrovaskulyar kasalliklarni erta aniqlash so'rovnomasi"
  * ^definition = "Stable program code for DMED cerebrovascular screening. It is also retained as the questionnaire's clinical code because no equivalent SNOMED CT screening concept is available; the program is not carotid imaging."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опросник по раннему выявлению цереброваскулярной патологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Early Detection Questionnaire for Cerebrovascular Diseases"
* #mserv-0007-00007 "DMED ko'krak bezi saratoni skrining dasturi"
  * ^definition = "DMED breast risk questionnaire program. Its program identifier is distinct from HPV breast screening (268547008); clinical breast-screening service coding can still use SNOMED CT."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программа DMED по скринингу рака молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "DMED breast cancer screening program"
* #mserv-0007-00009 "DMED bachadon bo'yni saratoni skrining dasturi"
  * ^definition = "DMED cervical risk questionnaire program. Its program identifier is distinct from HPV cervical screening (171149006); clinical cervical-screening service coding can still use SNOMED CT."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программа DMED по скринингу рака шейки матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "DMED cervical cancer screening program"
* #mserv-0007-00011 "Emlashga chaqiruv"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Призыв к вакцинации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vaccination Invitation"
* #mserv-0007-00012 "Emlashdan keyingi patronaj"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Патронаж после вакцинации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Post-Vaccination Follow-up"
* #mserv-0007-00017 "Reproduktiv yoshdagi ayollar patronaji (15–49 yosh)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Патронаж женщин детородного возраста (15-49 лет)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Follow-up of Women of Reproductive Age (15–49 Years)"
* #mserv-0007-00021 "Aholini ro'yxatga olish"
  * ^definition = "A Nursing home visit to enumerate residents and collect or verify their demographic and household registration details. This is an administrative visit purpose, not a clinical screening examination, diagnosis, or questionnaire result. No equivalent international service concept was identified; do not substitute an ethnic-group census category, a disability assessment scale, or a clinical examination."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перепись населения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Population enumeration"
* #mserv-0007-00022 "Dori vositalarini uyga yetkazib berish"
  * ^definition = "A Nursing home visit to deliver and hand over prescribed medication to the patient or an authorized recipient at home. The home setting is part of this service's meaning. This purpose is not medication administration, a prescription, or an unspecified pharmacy dispense. The actual medication supply is recorded separately in MedicationDispense when applicable. No equivalent international service concept was identified; SNOMED CT 373784005 Dispensing medication does not specify the home setting."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдача препаратов на дом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Home medication delivery and handover"
