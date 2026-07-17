CodeSystem: GroupTypeCS
Id: group-type-cs
Title: "Group type translations"
Description: "Group type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(group-type-cs, $group-type, 5.0.0)

* #person
  * ^designation[0].language = #ru
  * ^designation[=].value = "Личность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shaxs"
* #animal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Животное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hayvon"
* #practitioner
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский работник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiyot xodimi"
* #device
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройство"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilma"
* #careteam
  * ^designation[0].language = #ru
  * ^designation[=].value = "Команда по оказанию медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy yordam guruhi"
* #healthcareservice
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинская услуга"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy xizmat"
* #location
  * ^designation[0].language = #ru
  * ^designation[=].value = "Локация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Lokatsiya"
* #organization
  * ^designation[0].language = #ru
  * ^designation[=].value = "Организация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashkilot"
* #relatedperson
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лицо, связанное с пациентом"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aloqador shaxs"
* #specimen
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биоматериал"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biologik namuna"
