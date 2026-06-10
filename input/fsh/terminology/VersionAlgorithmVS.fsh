ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version algorithm types"
Description: "Version algorithm types in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/version-algorithm-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VersionAlgorithmCS)
* include codes from system $version-algorithms
