CodeSystem: IhdPainTypeCS
Id: ihd-pain-type-cs
Title: "IHD pain type categories"
Description: "Chest pain classification (typical / atypical / non-anginal) used to select the pre-test probability chart for ischemic heart disease"
* insert OriginalCodeSystemDraft(ihd-pain-type-cs)
* ^language = #uz
* #typical "Tipik stenokardiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Типичная стенокардия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Typical angina"
* #atypical "Atipik stenokardiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Атипичная стенокардия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Atypical angina"
* #non-anginal "Nostenokarditik og‘riq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нестенокардитическая (неангинозная) боль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-anginal pain"