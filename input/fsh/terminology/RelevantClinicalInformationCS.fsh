CodeSystem: RelevantClinicalInformationCS
Id: relevant-clinical-information-cs
Title: "Relevant clinical information translations"
Description: "Relevant clinical information (v2-0916), supplemented with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(relevant-clinical-information-cs, $v2-0916, 2.9)

* #F
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент был натощак перед процедурой."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor protsedura oldidan och qoringa edi."
* #NF
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент сообщил, что не соблюдал голодание перед процедурой."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor protsedura oldidan och qoringa bo'lmaganini bildirdi."
* #NG
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не указано — пациента не спрашивали во время процедуры."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'rsatilmagan, protsedura vaqtida bemordan so'ralmagan."
* #FNA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Информация о голодании не была запрошена у пациента во время процедуры."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Protsedura vaqtida bemordan och qoringa bo'lishi haqida so'ralmagan."
