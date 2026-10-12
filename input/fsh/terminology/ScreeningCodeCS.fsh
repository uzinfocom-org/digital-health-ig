CodeSystem: ScreeningCodeCS
Id: screening-code-cs
Title: "Screening and Home Visits Code System"
Description: "Screening activities and patronage (home visit) services that have no suitable SNOMED CT concept. Screening and patronage services that SNOMED CT does cover, such as breast cancer, cervical cancer and diabetes screening, are coded in SNOMED CT directly. This code system provides a high-level classification of the requested service type and is used for request routing, workflow processing, interoperability between healthcare information systems, and reporting purposes"
* insert OriginalCodeSystemDraft(screening-code-cs)

* #mserv-0007-00003 "Serebrovaskulyar kasalliklarni erta aniqlash so'rovnomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опросник по раннему выявлению цереброваскулярной патологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Early Detection Questionnaire for Cerebrovascular Diseases"
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
