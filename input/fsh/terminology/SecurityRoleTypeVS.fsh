ValueSet: SecurityRoleTypeVS
Id: security-role-type-vs
Title: "Security role type"
Description: "Defines the role of the participant that is being recorded in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/security-role-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SampleSecurityStructuralRolesCS)

* include $sample-security-structural-codes#regulated-health-professionals
* include $sample-security-structural-codes#non-regulated-health-professionals
