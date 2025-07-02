ValueSet: AddressUseVS
Id: address-use-vs
Title: "Types of address registration"
Description: "Defines type of address registration in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/address-use-vs"
* ^experimental = true
* include $address-use#home
  * ^designation[0].language = #ru
  * ^designation[=].value = "Адрес прописки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tish manzili"
* include $address-use#temp
  * ^designation[0].language = #ru
  * ^designation[=].value = "Адрес проживания"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yashash manzili"
