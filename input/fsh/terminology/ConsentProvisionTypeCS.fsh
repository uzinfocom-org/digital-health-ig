CodeSystem: ConsentProvisionTypeCS
Id: consent-provision-type-cs
Title: "Consent provision type translations"
Description: "Consent provision type supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/consent-provision-type-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $consent-provision-type
* ^version = "5.0.0"
* ^language = #en
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
