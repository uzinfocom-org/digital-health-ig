CodeSystem: AdmitSourceHomeCS
Id: admit-source-home-cs
Title: "Admit source from where patient was admitted"
Description: "Admit source where patient was admitted from with English and Russian translations"
* insert OriginalCodeSystemDraft(admit-source-home-cs)

* #mserv-0003-00001 "Uydan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From home"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из дома"

* #mserv-0003-00002 "Dispanserdan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From dispensary"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из диспансера"

* #mserv-0003-00003 "Shifoxonadan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From hospital"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из больницы"

* #mserv-0003-00004 "Ichki ishlar vazirligidan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From the Ministry of Internal Affairs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из Министерства внутренних дел"

* #mserv-0003-00005 "Boshqalar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"

