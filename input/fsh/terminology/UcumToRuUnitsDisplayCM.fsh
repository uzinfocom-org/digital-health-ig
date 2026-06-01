Instance: medication-total-volume-units-to-ru-display-cm
InstanceOf: ConceptMap
Usage: #definition
* id = "medication-total-volume-units-to-ru-display-cm"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/medication-total-volume-units-to-ru-display-cm"
* status = #draft
* experimental = true
* title = "Medication total volume units → Russian display"
* name = "MedicationTotalVolumeUnitsToRuDisplayCM"
* description = "Russian display translations for units in MedicationTotalVolumeUnitsVS (UCUM + local)."

// связь с ValueSet

* sourceScopeCanonical = Canonical(MedicationTotalVolumeUnitsVS)
* group.source = $ucum
* group.target = $ucum
* targetScopeCanonical = $ucum-vs

* group.element[+].code = #%
* group.element[=].display = "%"
* group.element[=].target.code = #%
* group.element[=].target.display = "процент"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ng
* group.element[=].display = "ng"
* group.element[=].target.code = #ng
* group.element[=].target.display = "нанограмм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #uL
* group.element[=].display = "uL"
* group.element[=].target.code = #uL
* group.element[=].target.display = "микролитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #nL
* group.element[=].display = "nL"
* group.element[=].target.code = #nL
* group.element[=].target.display = "нанолитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kcal
* group.element[=].display = "kcal"
* group.element[=].target.code = #kcal
* group.element[=].target.display = "килокалория"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mmol
* group.element[=].display = "mmol"
* group.element[=].target.code = #mmol
* group.element[=].target.display = "миллимоль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #umol
* group.element[=].display = "umol"
* group.element[=].target.code = #umol
* group.element[=].target.display = "микромоль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #nmol
* group.element[=].display = "nmol"
* group.element[=].target.code = #nmol
* group.element[=].target.display = "наномоль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #osm
* group.element[=].display = "osm"
* group.element[=].target.code = #osm
* group.element[=].target.display = "осмоль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mosm
* group.element[=].display = "mosm"
* group.element[=].target.code = #mosm
* group.element[=].target.display = "миллиосмоль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[drp]
* group.element[=].display = "[drp]"
* group.element[=].target.code = #[drp]
* group.element[=].target.display = "капля"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #g/mL
* group.element[=].display = "g/mL"
* group.element[=].target.code = #g/mL
* group.element[=].target.display = "грамм на миллилитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg/mL
* group.element[=].display = "mg/mL"
* group.element[=].target.code = #mg/mL
* group.element[=].target.display = "миллиграмм на миллилитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/mL
* group.element[=].display = "ug/mL"
* group.element[=].target.code = #ug/mL
* group.element[=].target.display = "микрограмм на миллилитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg/g
* group.element[=].display = "mg/g"
* group.element[=].target.code = #mg/g
* group.element[=].target.display = "миллиграмм на грамм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/g
* group.element[=].display = "ug/g"
* group.element[=].target.code = #ug/g
* group.element[=].target.display = "микрограмм на грамм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/mg
* group.element[=].display = "ug/mg"
* group.element[=].target.code = #ug/mg
* group.element[=].target.display = "микрограмм на миллиграмм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mmol/L
* group.element[=].display = "mmol/L"
* group.element[=].target.code = #mmol/L
* group.element[=].target.display = "миллимоль на литр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #cm2
* group.element[=].display = "cm2"
* group.element[=].target.code = #cm2
* group.element[=].target.display = "квадратный сантиметр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mL
* group.element[=].display = "mL"
* group.element[=].target.code = #mL
* group.element[=].target.display = "миллилитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #L
* group.element[=].display = "L"
* group.element[=].target.code = #L
* group.element[=].target.display = "литр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mg
* group.element[=].display = "mg"
* group.element[=].target.code = #mg
* group.element[=].target.display = "миллиграмм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #g
* group.element[=].display = "g"
* group.element[=].target.code = #g
* group.element[=].target.display = "грамм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug
* group.element[=].display = "ug"
* group.element[=].target.code = #ug
* group.element[=].target.display = "микрограмм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kg
* group.element[=].display = "kg"
* group.element[=].target.code = #kg
* group.element[=].target.display = "килограмм"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #J
* group.element[=].display = "J"
* group.element[=].target.code = #J
* group.element[=].target.display = "джоуль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #GBq
* group.element[=].display = "GBq"
* group.element[=].target.code = #GBq
* group.element[=].target.display = "гигабеккерель"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #kBq
* group.element[=].display = "kBq"
* group.element[=].target.code = #kBq
* group.element[=].target.display = "килобеккерель"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #MBq
* group.element[=].display = "MBq"
* group.element[=].target.code = #MBq
* group.element[=].target.display = "мегабеккерель"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #mol
* group.element[=].display = "mol"
* group.element[=].target.code = #mol
* group.element[=].target.display = "моль"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #Bq
* group.element[=].display = "Bq"
* group.element[=].target.code = #Bq
* group.element[=].target.display = "беккерель"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #RAD
* group.element[=].display = "RAD"
* group.element[=].target.code = #RAD
* group.element[=].target.display = "количество среднеэффективных иммунизирующих доз"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[IU]
* group.element[=].display = "[IU]"
* group.element[=].target.code = #[IU]
* group.element[=].target.display = "международная единица"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[PFU]
* group.element[=].display = "[PFU]"
* group.element[=].target.code = #[PFU]
* group.element[=].target.display = "оспообразующая единица (бляшкообразующее число)"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[Lf]
* group.element[=].display = "[Lf]"
* group.element[=].target.code = #[Lf]
* group.element[=].target.display = "флокулирующая единица"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[PNU]
* group.element[=].display = "[PNU]"
* group.element[=].target.code = #[PNU]
* group.element[=].target.display = "единица белкового азота"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[CFU]
* group.element[=].display = "[CFU]"
* group.element[=].target.code = #[CFU]
* group.element[=].target.display = "колониеобразующая единица"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[tb'U]
* group.element[=].display = "[tb'U]"
* group.element[=].target.code = #[tb'U]
* group.element[=].target.display = "туберкулиновая единица"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[AU]
* group.element[=].display = "[AU]"
* group.element[=].target.code = #[AU]
* group.element[=].target.display = "единица аллергена"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #[D'ag'U]
* group.element[=].display = "[D'ag'U]"
* group.element[=].target.code = #[D'ag'U]
* group.element[=].target.display = "единица D-антигена"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #{OD_unit}
* group.element[=].display = "{OD_unit}"
* group.element[=].target.code = #{OD_unit}
* group.element[=].target.display = "оптическая единица"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #ug/uL
* group.element[=].display = "ug/uL"
* group.element[=].target.code = #ug/uL
* group.element[=].target.display = "микрограмм на микролитр"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #10*6.{cell}
* group.element[=].display = "10*6.{cell}"
* group.element[=].target.code = #10*6.{cell}
* group.element[=].target.display = "млн клеток"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #10*9.{cell}
* group.element[=].display = "10*9.{cell}"
* group.element[=].target.code = #10*9.{cell}
* group.element[=].target.display = "млрд клеток"
* group.element[=].target.relationship = #equivalent
