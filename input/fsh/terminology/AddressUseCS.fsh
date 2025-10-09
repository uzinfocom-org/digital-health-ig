CodeSystem: AddressUseCS
Id: address-use-cs
Title: "Address registration translations"
Description: "Types of address registration supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(address-use-cs, $address-use, 5.0.0)
* #home
  * ^designation[0].language = #ru
  * ^designation[=].value = "Адрес прописки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tish manzili"
* #temp
  * ^designation[0].language = #ru
  * ^designation[=].value = "Адрес проживания"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yashash manzili"
