CodeSystem: DonorEligibilityCS
Id: donor-eligibility-cs
Title: "Donor eligibility"
Description: "Local donor eligibility decisions in Uzbekistan"
* insert OriginalCodeSystemDraft(donor-eligibility-cs)

* #donation-eligible "Donorlikka ruxsat berilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Допущен к донации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eligible for donation"

* #donation-deferred "Tibbiy sabablarga ko‘ra donorlikdan chetlatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский отвод"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical deferral"
