ValueSet: BloodGroupVS
Id: blood-group-vs
Title: "Blood Group VS"
Description: "ValueSet for blood group codes"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BloodGroupCS)

* include $sct#58460004
* include $sct#112144000
* include $sct#112149005
* include $sct#165743006