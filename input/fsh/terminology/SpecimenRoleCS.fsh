CodeSystem: SpecimenRoleCS
Id: specimen-role-cs
Title: "Specimen role status translations"
Description: "Specimen role status, supplemented with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(specimen-role-cs, $specimen-role, 5.0.0)

* #b
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слепой образец"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'r namuna"

* #c
  * ^designation[0].language = #ru
  * ^designation[=].value = "Калибратор"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kalibrator"

* #e
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронный контроль качества"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Elektron sifat nazorati"

* #f
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проверка квалификации организации-исполнителя"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashkilot malakasini tekshirish"

* #o
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проверка квалификации оператора"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Operator malakasini tekshirish"

* #p
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor"

* #q
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контрольный образец"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nazorat namunasi"

* #r
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повтор (образца пациента в качестве контроля)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takror (nazorat sifatida bemor namunasi)"

* #v
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проверочный калибратор"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tekshiruvchi kalibrator"

