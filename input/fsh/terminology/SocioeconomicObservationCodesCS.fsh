CodeSystem: SocioeconomicObservationCodesCS
Id: socioeconomic-observation-codes-cs
Title: "Socioeconomic Observation Codes Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for socioeconomic observation codes used in DHIS."

* insert SupplementCodeSystemDraft(
    socioeconomic-observation-codes-cs,
    $sct,
    2026.1.0
)

* #1303306008 "Eligible for benefit"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имеет право на льготы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Imtiyoz olish huquqiga ega"

* #105421008 "Educational achievement"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уровень образования"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ta'lim darajasi"

* #14679004 "Occupation"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kasbi"

* #82996008 "Social status"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Социальный статус"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijtimoiy holati"