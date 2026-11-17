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

* #blood-donation-deferred-temporary "Tibbiy sabablarga ko'ra qon donorligidan vaqtincha chetlatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Временный медицинский отвод от донации крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Temporary medical deferral from blood donation"

* #blood-donation-deferred-permanent "Tibbiy sabablarga ko'ra qon donorligidan doimiy chetlatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Постоянный медицинский отвод от донации крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Permanent medical deferral from blood donation"
