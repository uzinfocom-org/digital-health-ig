CodeSystem: MedicineIdentifierTypeCS
Id: medicine-identifier-type-cs
Title: "Medicine Identifier Types"
Description: "Types of identifiers used for medicines in Uzbekistan"
* insert OriginalCodeSystemDraft(medicine-identifier-type-cs)

* #box_group_id "Dori qadoqlash identifikatori"
  "Dori qadoqlari guruhi uchun identifikator"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medicine packaging identifier"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Идентификатор упаковки лекарств"

* #gtin "Global savdo elementi raqami"
  "Dori uchun global savdo elementi raqami (GTIN)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Global Trade Item Number"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глобальный номер торговой позиции"

* #marking "Markirovka"
  "Dori kuzatuvi uchun markirovka identifikatori"
  * ^designation[0].language = #en
  * ^designation[=].value = "Marking"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Маркировка"

* #registration_number "Ro'yxatga olish guvohnomasi"
  "Dori ro'yxatga olish guvohnomasi raqami"
  * ^designation[0].language = #en
  * ^designation[=].value = "Registration Certificate"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрационное удостоверение"

* #icps "Mahsulot va xizmatlar identifikatsiya kodlari"
  "Mahsulot va xizmatlarning xalqaro klassifikatsiyasi kodi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Product and service identification codes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Коды идентификации товаров и услуг"

* #pharm_id "Farmatsevtika agentligi dori identifikatori"
  "Farmatsevtika agentligi tomonidan berilgan identifikator"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pharmaceutical agency drug ID"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Идентификатор лекарства фармацевтического агентства"
