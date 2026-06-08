Instance: medication-total-volume-units-to-uz-display-cm
InstanceOf: ConceptMap
Usage: #definition
* id = "medication-total-volume-units-to-uz-display-cm"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/medication-total-volume-units-to-uz-display-cm"
* status = #draft
* experimental = true
* title = "Medication total volume units → Uzbek display"
* name = "MedicationTotalVolumeUnitsToUzDisplayCM"
* description = "Uzbek display translations for units in MedicationTotalVolumeUnitsVS (UCUM + local)."

// связь с ValueSet
* sourceScopeCanonical = Canonical(MedicationTotalVolumeUnitsVS)

* group.source = $ucum
* group.target = $ucum
* targetScopeCanonical = $ucum-vs

* group.element[+].code = #%
* group.element[=].display = "%"
* group.element[=].target.code = #%
* group.element[=].target.display = "foiz"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ng
* group.element[=].display = "ng"
* group.element[=].target.code = #ng
* group.element[=].target.display = "nanogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #uL
* group.element[=].display = "uL"
* group.element[=].target.code = #uL
* group.element[=].target.display = "mikrolitr"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #nL
* group.element[=].display = "nL"
* group.element[=].target.code = #nL
* group.element[=].target.display = "nanolitr"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kcal
* group.element[=].display = "kcal"
* group.element[=].target.code = #kcal
* group.element[=].target.display = "kilokaloriya"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mmol
* group.element[=].display = "mmol"
* group.element[=].target.code = #mmol
* group.element[=].target.display = "millimol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #umol
* group.element[=].display = "umol"
* group.element[=].target.code = #umol
* group.element[=].target.display = "mikromol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #nmol
* group.element[=].display = "nmol"
* group.element[=].target.code = #nmol
* group.element[=].target.display = "nanomol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #osm
* group.element[=].display = "osm"
* group.element[=].target.code = #osm
* group.element[=].target.display = "osmol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mosm
* group.element[=].display = "mosm"
* group.element[=].target.code = #mosm
* group.element[=].target.display = "milliosmol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[drp]
* group.element[=].display = "[drp]"
* group.element[=].target.code = #[drp]
* group.element[=].target.display = "tomchi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #g/mL
* group.element[=].display = "g/mL"
* group.element[=].target.code = #g/mL
* group.element[=].target.display = "millilitrda gramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg/mL
* group.element[=].display = "mg/mL"
* group.element[=].target.code = #mg/mL
* group.element[=].target.display = "millilitrda milligramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/mL
* group.element[=].display = "ug/mL"
* group.element[=].target.code = #ug/mL
* group.element[=].target.display = "millilitrda mikrogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg/g
* group.element[=].display = "mg/g"
* group.element[=].target.code = #mg/g
* group.element[=].target.display = "grammda milligramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/g
* group.element[=].display = "ug/g"
* group.element[=].target.code = #ug/g
* group.element[=].target.display = "grammda mikrogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/mg
* group.element[=].display = "ug/mg"
* group.element[=].target.code = #ug/mg
* group.element[=].target.display = "milligrammda mikrogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mmol/L
* group.element[=].display = "mmol/L"
* group.element[=].target.code = #mmol/L
* group.element[=].target.display = "litrda millimol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #cm2
* group.element[=].display = "cm2"
* group.element[=].target.code = #cm2
* group.element[=].target.display = "kvadrat santimetr"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mL
* group.element[=].display = "mL"
* group.element[=].target.code = #mL
* group.element[=].target.display = "millilitr"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #L
* group.element[=].display = "L"
* group.element[=].target.code = #L
* group.element[=].target.display = "litr"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg
* group.element[=].display = "mg"
* group.element[=].target.code = #mg
* group.element[=].target.display = "milligramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #g
* group.element[=].display = "g"
* group.element[=].target.code = #g
* group.element[=].target.display = "gramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug
* group.element[=].display = "ug"
* group.element[=].target.code = #ug
* group.element[=].target.display = "mikrogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kg
* group.element[=].display = "kg"
* group.element[=].target.code = #kg
* group.element[=].target.display = "kilogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #J
* group.element[=].display = "J"
* group.element[=].target.code = #J
* group.element[=].target.display = "joul"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #GBq
* group.element[=].display = "GBq"
* group.element[=].target.code = #GBq
* group.element[=].target.display = "gigabekkerel"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kBq
* group.element[=].display = "kBq"
* group.element[=].target.code = #kBq
* group.element[=].target.display = "kilobekkerel"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MBq
* group.element[=].display = "MBq"
* group.element[=].target.code = #MBq
* group.element[=].target.display = "megabekkerel"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mol
* group.element[=].display = "mol"
* group.element[=].target.code = #mol
* group.element[=].target.display = "mol"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #Bq
* group.element[=].display = "Bq"
* group.element[=].target.code = #Bq
* group.element[=].target.display = "bekkerel"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #RAD
* group.element[=].display = "RAD"
* group.element[=].target.code = #RAD
* group.element[=].target.display = "o'rtacha samarali immunizatsiya qilingan doza miqdori"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[IU]
* group.element[=].display = "[IU]"
* group.element[=].target.code = #[IU]
* group.element[=].target.display = "xalqaro birlik"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[PFU]
* group.element[=].display = "[PFU]"
* group.element[=].target.code = #[PFU]
* group.element[=].target.display = "chechak hosil qiluvchi birlik (tiqin hosil qiluvchi raqam)"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[Lf]
* group.element[=].display = "[Lf]"
* group.element[=].target.code = #[Lf]
* group.element[=].target.display = "flokulyatsiya birligi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[PNU]
* group.element[=].display = "[PNU]"
* group.element[=].target.code = #[PNU]
* group.element[=].target.display = "oqsil azoti birligi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[CFU]
* group.element[=].display = "[CFU]"
* group.element[=].target.code = #[CFU]
* group.element[=].target.display = "koloniya hosil qiluvchi birlik"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[tb'U]
* group.element[=].display = "[tb'U]"
* group.element[=].target.code = #[tb'U]
* group.element[=].target.display = "tuberkulin birligi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[AU]
* group.element[=].display = "[AU]"
* group.element[=].target.code = #[AU]
* group.element[=].target.display = "allergen birligi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[D'ag'U]
* group.element[=].display = "[D'ag'U]"
* group.element[=].target.code = #[D'ag'U]
* group.element[=].target.display = "D-antigen birligi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #{OD_unit}
* group.element[=].display = "{OD_unit}"
* group.element[=].target.code = #{OD_unit}
* group.element[=].target.display = "optik birlik"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/uL
* group.element[=].display = "ug/uL"
* group.element[=].target.code = #ug/uL
* group.element[=].target.display = "mikrolitrda mikrogramm"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #10*6.{cell}
* group.element[=].display = "10*6.{cell}"
* group.element[=].target.code = #10*6.{cell}
* group.element[=].target.display = "mln hujayra"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #10*9.{cell}
* group.element[=].display = "10*9.{cell}"
* group.element[=].target.code = #10*9.{cell}
* group.element[=].target.display = "mlrd hujayra"
* group.element[=].target.relationship = #equivalent
