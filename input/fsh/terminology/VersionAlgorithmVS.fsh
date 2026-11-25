ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version algorithm"
Description: "Version algorithms"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/version-algorithm-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VersionAlgorithmCS)
* include codes from system $version-algorithms
