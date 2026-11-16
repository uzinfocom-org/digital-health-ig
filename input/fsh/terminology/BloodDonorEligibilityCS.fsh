CodeSystem: BloodDonorEligibilityCS
Id: blood-donor-eligibility-cs
Title: "Blood donor eligibility"
Description: "Local blood donor eligibility decisions in Uzbekistan"
* insert OriginalCodeSystemDraft(blood-donor-eligibility-cs)

* #blood-donation-eligible "Qon donorligiga ruxsat berilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Допущен к донации крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eligible for blood donation"

* #blood-donation-deferred "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский отвод от донации крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical deferral from blood donation"
