ValueSet: AddressTypeVS
Id: address-type-vs
Title: "Types of possible addresses"
Description: "Defines the types of addresses with translations in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/address-type-vs"
* ^experimental = true
* include $address-type#postal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Почтовый адрес"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Pochta manzili"
* include $address-type#physical
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физический адрес"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jismoniy manzil"
* include $address-type#both
  * ^designation[0].language = #ru
  * ^designation[=].value = "Почтовый и физический адрес"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Pochta va jismoniy manzil"
