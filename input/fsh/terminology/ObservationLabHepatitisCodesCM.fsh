Instance: lab-hepatitis-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Hepatitis Codes to LOINC"
Description: "Maps local UZ hepatitis codes to LOINC codes for laboratory observations."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/lab-hepatitis-to-loinc"
* name = "HepatitisCodeToLoinc"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationLabHepatitisCodesCS)
* sourceScopeCanonical = Canonical(ObservationCodesVS)
* group.target = $loinc
* targetScopeCanonical = $loinc

* group.element[+].code = #hepat-A
* group.element[=].display = "Gepatit A virusi"
* group.element[=].target[+].code = #32762-3
* group.element[=].target[=].display = "Hepatitis A virus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-1
* group.element[=].display = "Gepatit A virusiga qarshi antitanalar — anti-HAV"
* group.element[=].target[+].code = #22314-9
* group.element[=].target[=].display = "Hepatitis A virus IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-B
* group.element[=].display = "Gepatit B virusi"
* group.element[=].target[+].code = #32762-3
* group.element[=].target[=].display = "Hepatitis B virus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-2
* group.element[=].display = "Gepatit B virusi DNKsi — sifat jihatidan"
* group.element[=].target[+].code = #29610-3
* group.element[=].target[=].display = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-3
* group.element[=].display = "Gepatit B virusi DNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #42595-9
* group.element[=].target[=].display = "Hepatitis B virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-4
* group.element[=].display = "Gepatit B virusining yuzaki antigeni"
* group.element[=].target[+].code = #75410-1
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum, Plasma or blood by Rapid immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-5
* group.element[=].display = "Gepatit B virusining yuzaki antigeniga qarshi antitanalar — anti-HBs"
* group.element[=].target[+].code = #22322-2
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-6
* group.element[=].display = "Gepatit B virusining yuzaki antigeni — HBsAg"
* group.element[=].target[+].code = #5195-3
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-7
* group.element[=].display = "Gepatit B virusining yadroviy antigeniga qarshi antitanalar — anti-HBc"
* group.element[=].target[+].code = #13952-7
* group.element[=].target[=].display = "Hepatitis B virus (HBV) Core antibody, Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-8
* group.element[=].display = "Gepatit B virusining e-antigeni — HBeAg"
* group.element[=].target[+].code = #13954-3
* group.element[=].target[=].display = "Hepatitis B virus e Ag [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-9
* group.element[=].display = "Gepatit B virusining e-antigeniga qarshi antitanalar — anti-HBe"
* group.element[=].target[+].code = #22320-6
* group.element[=].target[=].display = "Hepatitis B virus e Ab [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-C
* group.element[=].display = "Gepatit C virusi"
* group.element[=].target[+].code = #32754-0
* group.element[=].target[=].display = "Hepatitis C virus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-10
* group.element[=].display = "Gepatit C virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #11259-9
* group.element[=].target[=].display = "Hepatitis C virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-11
* group.element[=].display = "Gepatit C virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #11011-4
* group.element[=].target[=].display = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-12
* group.element[=].display = "Gepatit C virusi genotipi — genotiplash"
* group.element[=].target[+].code = #32286-7
* group.element[=].target[=].display = "Hepatitis C virus genotype [Identifier] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-13
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — miqdoriy"
* group.element[=].target[+].code = #22327-1
* group.element[=].target[=].display = "Hepatitis C virus Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-14
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — umumiy (Anti-HCV)"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-D
* group.element[=].display = "Gepatit D virusi"
* group.element[=].target[+].code = #80426-0
* group.element[=].target[=].display = "Hepatitis D virus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-15
* group.element[=].display = "Gepatit D virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #7906-1
* group.element[=].target[=].display = "Hepatitis D virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #hepat-16
* group.element[=].display = "Gepatit D virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #85512-2
* group.element[=].target[=].display = "Hepatitis D virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent


