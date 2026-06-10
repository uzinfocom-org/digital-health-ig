CodeSystem: VersionAlgorithmCS
Id: version-algorithm-cs
Title: "Version algorithm types"
Description: "Version algorithm types in Uzbekistan"
* insert SupplementCodeSystemDraft(version-algorithm-cs, $version-algorithms, 5.0.0)

* #semver
  * ^designation[0].language = #ru
  * ^designation[=].value = "Семантическое версионирование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Semantik versiyalash"

* #integer
  * ^designation[0].language = #ru
  * ^designation[=].value = "Целое число"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Butun son"

* #alpha
  * ^designation[0].language = #ru
  * ^designation[=].value = "Алфавитный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Alifbo bo'yicha"

* #date
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sana"

* #natural
  * ^designation[0].language = #ru
  * ^designation[=].value = "Естественная сортировка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tabiiy tartiblash"

