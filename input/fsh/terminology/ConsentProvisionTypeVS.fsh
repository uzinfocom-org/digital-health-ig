ValueSet: ConsentProvisionTypeVS
Id: consent-provision-type-vs
Title: "Consent provision type"
Description: "Determines the type of consent"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-provision-type-vs"
* ^status = #active
* ^experimental = true
* ^language = #en
* $consent-provision-type#deny
* $consent-provision-type#deny ^designation[0].language = #ru
* $consent-provision-type#deny ^designation[=].value = "Согласие отклоняется на действия, соответствующие этим правилам"
* $consent-provision-type#deny ^designation[+].language = #uz
* $consent-provision-type#deny ^designation[=].value = "Ushbu qoidalarga mos keladigan harakatlar uchun rozilik rad etiladi"
* $consent-provision-type#permit
* $consent-provision-type#permit ^designation[0].language = #ru
* $consent-provision-type#permit ^designation[=].value = "Согласие предоставляется на действия, соответствующие настоящим правилам"
* $consent-provision-type#permit ^designation[+].language = #uz
* $consent-provision-type#permit ^designation[=].value = "Ushbu qoidalarga muvofiq harakatlarga rozilik beriladi"
