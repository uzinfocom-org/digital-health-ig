CodeSystem: VersionAlgorithmCS
Id: version-algorithm-cs
Title: "Version algorithm translations"
Description: "Version algorithm supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(version-algorithm-cs, $version-algorithm, 5.0.0)

* #semver
  * ^designation[0].language = #uz
  * ^designation[=].value = "Semantik versiyalash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семантическое версионирование"
* #integer
  * ^designation[0].language = #uz
  * ^designation[=].value = "Butun son"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целое число"