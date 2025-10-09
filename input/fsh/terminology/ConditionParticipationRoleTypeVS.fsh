ValueSet: ConditionParticipationRoleTypeVS
Id: condition-participation-role-vs
Title: "Types of participation role"
Description: "Types of participation role in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-participation-role-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProvenanceParticipationRoleTypeCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DicomDCMCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ExtraSecurityRoleTypeCS)

* include $provenance-participant-type#enterer
* include $provenance-participant-type#performer
* include $provenance-participant-type#author
* include $provenance-participant-type#verifier
* include $provenance-participant-type#legal
* include $provenance-participant-type#attester
* include $provenance-participant-type#informant
* include $provenance-participant-type#custodian
* include $provenance-participant-type#assembler
* include $provenance-participant-type#composer

* include $dicom-dcm#110150
* include $dicom-dcm#110151
* include $dicom-dcm#110152
* include $dicom-dcm#110153
* include $dicom-dcm#110154
* include $dicom-dcm#110155

* include $extra-security-role-type#authserver
* include $extra-security-role-type#datacollector
* include $extra-security-role-type#dataprocessor
* include $extra-security-role-type#datasubject
* include $extra-security-role-type#humanuser
