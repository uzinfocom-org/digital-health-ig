CodeSystem: ClaimResponseCategoryCS
Id: claim-response-category-cs
Title: "Claim Response Category CS"
Description: "Claim response adjudication category supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-category-cs, $claim-response-category,  1.0.1)

* #benefit "Benefit Amount"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sug'urta polisi bo'yicha to'lanadigan summa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сумма, подлежащая выплате по страховому полису"

