CodeSystem: DonorCategoryCS
Id: donor-category-cs
Title: "Donor Category Code System"
Description: "List of blood donor categories used in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(donor-category-cs)

* #STAFF "Kadr donor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кадровый донор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Staff donor"

* #RESERVE "Zaxira donor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резервный донор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reserve donor"