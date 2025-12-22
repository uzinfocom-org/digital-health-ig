CodeSystem: MedicineIdentifierTypeCS
Id: medicine-identifier-type-cs
Title: "Medicine Identifier Types"
Description: "Types of identifiers used for medicines in Uzbekistan"
* insert OriginalCodeSystemDraft(medicine-identifier-type-cs)

* #box_group_id "Medicine packaging identifier"
  "Identifier for a group of medicine packages"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dori qadoqlash identifikatori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Идентификатор упаковки лекарств"

* #gtin "Global Trade Item Number"
  "Global Trade Item Number (GTIN) for the medicine"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Global savdo elementi raqami"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глобальный номер торговой позиции"

* #marking "Marking"
  "Marking identifier for medicine tracking"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Markirovka"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Маркировка"

* #registration_number "Registration Certificate"
  "Medicine registration certificate number"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ro'yxatga olish guvohnomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрационное удостоверение"

* #icps "Product and service identification codes"
  "International Classification of Products and Services code"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mahsulot va xizmatlar identifikatsiya kodlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Коды идентификации товаров и услуг"

* #pharm_id "Pharmaceutical agency drug ID"
  "Identifier assigned by the pharmaceutical agency"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Farmatsevtika agentligi dori identifikatori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Идентификатор лекарства фармацевтического агентства"
