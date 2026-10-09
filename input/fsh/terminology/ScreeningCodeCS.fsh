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
