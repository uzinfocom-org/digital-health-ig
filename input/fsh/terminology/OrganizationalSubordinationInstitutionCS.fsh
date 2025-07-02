CodeSystem: OrganizationalSubordinationInstitutionCS
Id: organizational-subordination-institution-cs
Title: "Organizational subordination institution"
Description: "Defines the type of medical organizations without forming a legal entity"
* ^url = "https://terminology.medcore.uz/CodeSystem/organizational-subordination-institution-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-02-24"
* ^publisher = "Example Healthcare Authority"
* ^content = #complete
* ^language = #uz
* ^caseSensitive = true
* #STIR-I_10 "Ko'p tarmokli markaziy poliklinika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Филиал центральной поликлиники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Branch of the central polyclinic"
* #STIR-I_30 "Oilaviy poliklinika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Семейная поликлиника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family polyclinic"
* #STIR-I_60 "Oilaviy shifokorlik punkti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Семейный медицинский пункт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family medical center"
* #STIR-I_90 "Qishloq uchastka shifoxonasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сельская районная больница"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rural district hospital"
