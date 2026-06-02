ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version algorithm translations"
Description: "Version algorithm codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/version-algorithm-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VersionAlgorithmCS)

* include $version-algorithm#semver
* include $version-algorithm#integer