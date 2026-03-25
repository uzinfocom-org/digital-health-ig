CodeSystem: ObservationLabHepatitisCodesCS
Id: observation-lab-hepatitis-cs
Title: "Observation lab hepatitis codes"
Description: "Hepatitis laboratory test names with translations in english and russian"
* insert OriginalCodeSystemDraft(observation-lab-hepatitis-cs)

* #hepat-A "Gepatit A virusi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус гепатит А"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis A virus"

* #hepat-1 "Gepatit A virusiga qarshi antitanalar — anti-HAV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к вирусному гепатиту A — anti-HAV"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis A virus IgM Ab [Presence] in Serum"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-A

* #hepat-B "Gepatit B virusi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус гепатит Б"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus"

* #hepat-2 "Gepatit B virusi DNKsi — sifat jihatidan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ДНК вирусного гепатита Б — качественный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-3 "Gepatit B virusi DNKsi — miqdoriy (IU/mL)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ДНК вирусного гепатита Б — количественный (IU/mL)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-4 "Gepatit B virusining yuzaki antigeni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поверхностный антиген вирусного гепатита Б"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus surface Ag [Presence] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-5 "Gepatit B virusining yuzaki antigeniga qarshi antitanalar — anti-HBs"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к поверхностному антигену вирусного гепатита B — anti-HBs"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus surface Ab [Presence] in Serum"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-6 "Gepatit B virusining yuzaki antigeni — HBsAg"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поверхностный антиген вирусного гепатита B — HBsAg"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus surface Ag [Presence] in Serum"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-7 "Gepatit B virusining yadroviy antigeniga qarshi antitanalar — anti-HBc"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к HBcor-антигену вирусного гепатита B — anti-HBc"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus (HBV) Core antibody, Blood"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-8 "Gepatit B virusining e-antigeni — HBeAg"
  * ^designation[0].language = #ru
  * ^designation[=].value = "HBe-антиген вирусного гепатита B — HBeAg"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus e Ag [Presence] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-9 "Gepatit B virusining e-antigeniga qarshi antitanalar — anti-HBe"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к HBe-антигену вирусного гепатита B — anti-HBe"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis B virus e Ab [Presence] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-B

* #hepat-C "Gepatit C virusi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус гепатит C"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus"  

* #hepat-10 "Gepatit C virusi RNKsi — sifat jihatidan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "РНК вирусного гепатита C — качественный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-C
* #hepat-11 "Gepatit C virusi RNKsi — miqdoriy (IU/mL)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "РНК вирусного гепатита C — количественный (IU/mL)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-C
* #hepat-12 "Gepatit C virusi genotipi — genotiplash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Генотип вирусного гепатита C — генотипирование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus genotype [Identifier] in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-C
* #hepat-13 "Gepatit C virusiga qarshi antitanalar — miqdoriy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к вирусному гепатиту С (количественный)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus Ab [Units/volume] in Serum"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-C
* #hepat-14 "Gepatit C virusiga qarshi antitanalar — umumiy (Anti-HCV)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Антитела к вирусному гепатиту C — total (Anti-HCV)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-C

* #hepat-D "Gepatit D virusi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус гепатит Д"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis D virus"
* #hepat-15 "Gepatit D virusi RNKsi — sifat jihatidan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "РНК вирусного гепатита Д — качественный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis D virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-D
* #hepat-16 "Gepatit D virusi RNKsi — miqdoriy (IU/mL)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "РНК вирусного гепатита Д — количественный (IU/mL)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatitis D virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #hepat-D
