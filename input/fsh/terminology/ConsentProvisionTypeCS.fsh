CodeSystem: ConsentProvisionTypeCS
Id: consent-provision-type-cs
Title: "Consent provision type translations"
Description: "Consent provision type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(consent-provision-type-cs, $consent-provision-type, 5.0.0)
* #deny
  * ^designation[0].language = #ru
  * ^designation[=].value = "Согласие отклоняется на действия, соответствующие этим правилам"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu qoidalarga mos keladigan harakatlar uchun rozilik rad etiladi"
* #permit
  * ^designation[0].language = #ru
  * ^designation[=].value = "Согласие предоставляется на действия, соответствующие настоящим правилам"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu qoidalarga muvofiq harakatlarga rozilik beriladi"
