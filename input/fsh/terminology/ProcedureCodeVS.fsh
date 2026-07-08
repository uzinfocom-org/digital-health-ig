ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure Code Codes"
Description: "Procedure code ValueSet with translations in English, Russian and Uzbek"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-code-vs"
* ^status = #active
* ^experimental = true
* include codes from system $sct where concept is-a #71388002
* include codes from system $sct where concept is-a #33879002 "Administration of vaccine to produce active immunity"