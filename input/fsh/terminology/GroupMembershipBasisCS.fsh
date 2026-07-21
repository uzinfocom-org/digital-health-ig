CodeSystem: GroupMembershipBasisCS
Id: group-membership-basis-cs
Title: "Group membership basis translations"
Description: "Group membership basis supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(group-membership-basis-cs, $group-membership-basis, 5.0.0)

* #definitional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определяющий"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ta'riflovchi"
* #enumerated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перечисленные"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sanab o'tilgan"
