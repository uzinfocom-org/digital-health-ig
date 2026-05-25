Instance: dmed-measure-unit-to-dhp-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED measure unit codes To DHP measure unit codes"
Description: "ConceptMap for mapping DMED  measure unit codes to DHP  measure unit codes from unitsofmeasure.org"
* name = "DMEDMeasureUnitCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-measure-unit-to-dhp-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDMeasureUnitVS)
* targetScopeCanonical = $ucum-vs

* group.source = Canonical(DMEDMeasureUnitCS)
* group.target = $ucum

// 11 мкмоль -> umol
* group[=].element[+].code = #11
* group[=].element[=].display = "мкмоль"
* group[=].element[=].target[+].code = #umol
* group[=].element[=].target[=].display = "micromole"
* group[=].element[=].target[=].relationship = #equivalent

// 4 мкл -> uL
* group[=].element[+].code = #4
* group[=].element[=].display = "мкл"
* group[=].element[=].target[+].code = #uL
* group[=].element[=].target[=].display = "microliter"
* group[=].element[=].target[=].relationship = #equivalent

// 27 мкг/мкл -> ug/uL
* group[=].element[+].code = #27
* group[=].element[=].display = "мкг/мкл"
* group[=].element[=].target[+].code = #ug/uL
* group[=].element[=].target[=].display = "microgram per microliter"
* group[=].element[=].target[=].relationship = #equivalent

// 26 мкг/мл -> ug/mL
* group[=].element[+].code = #26
* group[=].element[=].display = "мкг/мл"
* group[=].element[=].target[+].code = #ug/mL
* group[=].element[=].target[=].display = "microgram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 28 мкг/г -> ug/g
* group[=].element[+].code = #28
* group[=].element[=].display = "мкг/г"
* group[=].element[=].target[+].code = #ug/g
* group[=].element[=].target[=].display = "microgram per gram"
* group[=].element[=].target[=].relationship = #equivalent

// 491 мкг/доза -> ug/{dose}
* group[=].element[+].code = #491
* group[=].element[=].display = "мкг/доза"
* group[=].element[=].target[+].code = #ug/{dose}
* group[=].element[=].target[=].display = "microgram per dose"
* group[=].element[=].target[=].relationship = #equivalent

// 1 микрограмм -> ug
* group[=].element[+].code = #1
* group[=].element[=].display = "микрограмм"
* group[=].element[=].target[+].code = #ug
* group[=].element[=].target[=].display = "microgram"
* group[=].element[=].target[=].relationship = #equivalent

// 78 микрограмм на дозу -> ug/{dose}
* group[=].element[+].code = #78
* group[=].element[=].display = "микрограмм на дозу"
* group[=].element[=].target[+].code = #ug/{dose}
* group[=].element[=].target[=].display = "microgram per dose"
* group[=].element[=].target[=].relationship = #equivalent

// 77 ЕД на мл -> U/mL
* group[=].element[+].code = #77
* group[=].element[=].display = "ЕД на мл"
* group[=].element[=].target[+].code = #U/mL
* group[=].element[=].target[=].display = "unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 115 ЕД/г -> U/g
* group[=].element[+].code = #115
* group[=].element[=].display = "ЕД/г"
* group[=].element[=].target[+].code = #U/g
* group[=].element[=].target[=].display = "unit per gram"
* group[=].element[=].target[=].relationship = #equivalent

// 31 ОЕ -> U
* group[=].element[+].code = #31
* group[=].element[=].display = "ОЕ"
* group[=].element[=].target[+].code = #U
* group[=].element[=].target[=].display = "unit"
* group[=].element[=].target[=].relationship = #related-to

// 48 миллион единиц действия -> 10*6.U
* group[=].element[+].code = #48
* group[=].element[=].display = "миллион единиц действия"
* group[=].element[=].target[+].code = #10*6.U
* group[=].element[=].target[=].display = "million units"
* group[=].element[=].target[=].relationship = #equivalent

// 604 ЕД -> U
* group[=].element[+].code = #604
* group[=].element[=].display = "ЕД"
* group[=].element[=].target[+].code = #U
* group[=].element[=].target[=].display = "unit"
* group[=].element[=].target[=].relationship = #equivalent
/*
// 6 Рд -> RD
* group[=].element[+].code = #6
* group[=].element[=].display = "Рд"
* group[=].element[=].target[+].code = #RD
* group[=].element[=].target[=].display = "rod"
* group[=].element[=].target[=].relationship = #equivalent
*/
// 8 рад -> RAD
* group[=].element[+].code = #8
* group[=].element[=].display = "рад"
* group[=].element[=].target[+].code = #RAD
* group[=].element[=].target[=].display = "radiation absorbed dose"
* group[=].element[=].target[=].relationship = #equivalent

// 13 Осм -> osm
* group[=].element[+].code = #13
* group[=].element[=].display = "Осм"
* group[=].element[=].target[+].code = #osm
* group[=].element[=].target[=].display = "osmole"
* group[=].element[=].target[=].relationship = #equivalent

// 12 нмоль -> nmol
* group[=].element[+].code = #12
* group[=].element[=].display = "нмоль"
* group[=].element[=].target[+].code = #nmol
* group[=].element[=].target[=].display = "nanomole"
* group[=].element[=].target[=].relationship = #equivalent

// 5 нл -> nL
* group[=].element[+].code = #5
* group[=].element[=].display = "нл"
* group[=].element[=].target[+].code = #nL
* group[=].element[=].target[=].display = "nanoliter"
* group[=].element[=].target[=].relationship = #equivalent

// 3 нг -> ng
* group[=].element[+].code = #3
* group[=].element[=].display = "нг"
* group[=].element[=].target[+].code = #ng
* group[=].element[=].target[=].display = "nanogram"
* group[=].element[=].target[=].relationship = #equivalent

// 14 мОсм -> mosm
* group[=].element[+].code = #14
* group[=].element[=].display = "мОсм"
* group[=].element[=].target[+].code = #mosm
* group[=].element[=].target[=].display = "milliosmole"
* group[=].element[=].target[=].relationship = #equivalent

// 43 моль -> mol
* group[=].element[+].code = #43
* group[=].element[=].display = "моль"
* group[=].element[=].target[+].code = #mol
* group[=].element[=].target[=].display = "mole"
* group[=].element[=].target[=].relationship = #equivalent

// 30 ммоль/л -> mmol/L
* group[=].element[+].code = #30
* group[=].element[=].display = "ммоль/л"
* group[=].element[=].target[+].code = #mmol/L
* group[=].element[=].target[=].display = "millimole per liter"
* group[=].element[=].target[=].relationship = #equivalent

// 10 ммоль -> mmol
* group[=].element[+].code = #10
* group[=].element[=].display = "ммоль"
* group[=].element[=].target[+].code = #mmol
* group[=].element[=].target[=].display = "millimole"
* group[=].element[=].target[=].relationship = #equivalent

// 494 миллилитр -> mL
* group[=].element[+].code = #494
* group[=].element[=].display = "миллилитр"
* group[=].element[=].target[+].code = #mL
* group[=].element[=].target[=].display = "milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 566 мл -> mL
* group[=].element[+].code = #566
* group[=].element[=].display = "мл"
* group[=].element[=].target[+].code = #mL
* group[=].element[=].target[=].display = "milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 81 миллиграмм на миллилитр -> mg/mL
* group[=].element[+].code = #81
* group[=].element[=].display = "миллиграмм на миллилитр"
* group[=].element[=].target[+].code = #mg/mL
* group[=].element[=].target[=].display = "milligram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 418 мг/мл -> mg/mL
* group[=].element[+].code = #418
* group[=].element[=].display = "мг/мл"
* group[=].element[=].target[+].code = #mg/mL
* group[=].element[=].target[=].display = "milligram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 82 миллиграмм на грамм -> mg/g
* group[=].element[+].code = #82
* group[=].element[=].display = "миллиграмм на грамм"
* group[=].element[=].target[+].code = #mg/g
* group[=].element[=].target[=].display = "milligram per gram"
* group[=].element[=].target[=].relationship = #equivalent

// 153 мг/ 100 мл -> mg/dL
* group[=].element[+].code = #153
* group[=].element[=].display = "мг/ 100 мл"
* group[=].element[=].target[+].code = #mg/dL
* group[=].element[=].target[=].display = "milligram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

// 2 миллиграмм -> mg
* group[=].element[+].code = #2
* group[=].element[=].display = "миллиграмм"
* group[=].element[=].target[+].code = #mg
* group[=].element[=].target[=].display = "milligram"
* group[=].element[=].target[=].relationship = #equivalent

// 486 миллиграмм на дозу -> mg/{dose}
* group[=].element[+].code = #486
* group[=].element[=].display = "миллиграмм на дозу"
* group[=].element[=].target[+].code = #mg/{dose}
* group[=].element[=].target[=].display = "milligram per dose"
* group[=].element[=].target[=].relationship = #equivalent

// 42 МБк -> MBq
* group[=].element[+].code = #42
* group[=].element[=].display = "МБк"
* group[=].element[=].target[+].code = #MBq
* group[=].element[=].target[=].display = "megabecquerel"
* group[=].element[=].target[=].relationship = #equivalent

// 34 м -> m
* group[=].element[+].code = #34
* group[=].element[=].display = "м"
* group[=].element[=].target[+].code = #m
* group[=].element[=].target[=].display = "meter"
* group[=].element[=].target[=].relationship = #equivalent

// 33 литр -> L
* group[=].element[+].code = #33
* group[=].element[=].display = "литр"
* group[=].element[=].target[+].code = #L
* group[=].element[=].target[=].display = "liter"
* group[=].element[=].target[=].relationship = #equivalent

// 39 кДж -> kJ
* group[=].element[+].code = #39
* group[=].element[=].display = "кДж"
* group[=].element[=].target[+].code = #kJ
* group[=].element[=].target[=].display = "kilojoule"
* group[=].element[=].target[=].relationship = #equivalent

// 9 ккал -> kcal
* group[=].element[+].code = #9
* group[=].element[=].display = "ккал"
* group[=].element[=].target[+].code = #kcal
* group[=].element[=].target[=].display = "kilocalorie"
* group[=].element[=].target[=].relationship = #equivalent

// 41 кБк -> kBq
* group[=].element[+].code = #41
* group[=].element[=].display = "кБк"
* group[=].element[=].target[+].code = #kBq
* group[=].element[=].target[=].display = "kilobecquerel"
* group[=].element[=].target[=].relationship = #equivalent

// 38 Дж -> J
* group[=].element[+].code = #38
* group[=].element[=].display = "Дж"
* group[=].element[=].target[+].code = #J
* group[=].element[=].target[=].display = "joule"
* group[=].element[=].target[=].relationship = #equivalent

// 7 Гр -> Gy
* group[=].element[+].code = #7
* group[=].element[=].display = "Гр"
* group[=].element[=].target[+].code = #Gy
* group[=].element[=].target[=].display = "gray"
* group[=].element[=].target[=].relationship = #equivalent

// 46 доза излучения -> Gy
* group[=].element[+].code = #46
* group[=].element[=].display = "доза излучения"
* group[=].element[=].target[+].code = #Gy
* group[=].element[=].target[=].display = "gray"
* group[=].element[=].target[=].relationship = #related-to

// 40 ГБк -> GBq
* group[=].element[+].code = #40
* group[=].element[=].display = "ГБк"
* group[=].element[=].target[+].code = #GBq
* group[=].element[=].target[=].display = "gigabecquerel"
* group[=].element[=].target[=].relationship = #equivalent

// 25 грамм на миллилитр -> g/mL
* group[=].element[+].code = #25
* group[=].element[=].display = "грамм на миллилитр"
* group[=].element[=].target[+].code = #g/mL
* group[=].element[=].target[=].display = "gram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 419 г/л -> g/L
* group[=].element[+].code = #419
* group[=].element[=].display = "г/л"
* group[=].element[=].target[+].code = #g/L
* group[=].element[=].target[=].display = "gram per liter"
* group[=].element[=].target[=].relationship = #equivalent

// 79 грамм -> g
* group[=].element[+].code = #79
* group[=].element[=].display = "грамм"
* group[=].element[=].target[+].code = #g
* group[=].element[=].target[=].display = "gram"
* group[=].element[=].target[=].relationship = #equivalent

// 32 кв.см -> cm2
* group[=].element[+].code = #32
* group[=].element[=].display = "кв.см"
* group[=].element[=].target[+].code = #cm2
* group[=].element[=].target[=].display = "square centimeter"
* group[=].element[=].target[=].relationship = #equivalent

// 35 см -> cm
* group[=].element[+].code = #35
* group[=].element[=].display = "см"
* group[=].element[=].target[+].code = #cm
* group[=].element[=].target[=].display = "centimeter"
* group[=].element[=].target[=].relationship = #equivalent

// 44 Бк -> Bq
* group[=].element[+].code = #44
* group[=].element[=].display = "Бк"
* group[=].element[=].target[+].code = #Bq
* group[=].element[=].target[=].display = "becquerel"
* group[=].element[=].target[=].relationship = #equivalent

// 22 млрд клеток -> 10*9/L
* group[=].element[+].code = #22
* group[=].element[=].display = "млрд клеток"
* group[=].element[=].target[+].code = #10*9/L
* group[=].element[=].target[=].display = "billion per liter"
* group[=].element[=].target[=].relationship = #related-to

// 24 млрд спор -> 10*9{spore}
* group[=].element[+].code = #24
* group[=].element[=].display = "млрд спор"
* group[=].element[=].target[+].code = #10*9{spore}
* group[=].element[=].target[=].display = "billion spores"
* group[=].element[=].target[=].relationship = #equivalent

// 21 млн клеток -> 10*6/L
* group[=].element[+].code = #21
* group[=].element[=].display = "млн клеток"
* group[=].element[=].target[+].code = #10*6/L
* group[=].element[=].target[=].display = "million per liter"
* group[=].element[=].target[=].relationship = #related-to

// 15 %, m -> %
* group[=].element[+].code = #15
* group[=].element[=].display = "%, m"
* group[=].element[=].target[+].code = #%
* group[=].element[=].target[=].display = "percent"
* group[=].element[=].target[=].relationship = #related-to

// 16 %, vol -> %
* group[=].element[+].code = #16
* group[=].element[=].display = "%, vol"
* group[=].element[=].target[+].code = #%
* group[=].element[=].target[=].display = "percent"
* group[=].element[=].target[=].relationship = #related-to

// 80 процент -> %
* group[=].element[+].code = #80
* group[=].element[=].display = "процент"
* group[=].element[=].target[+].code = #%
* group[=].element[=].target[=].display = "percent"
* group[=].element[=].target[=].relationship = #equivalent

// 23 спора -> {spore}
* group[=].element[+].code = #23
* group[=].element[=].display = "спора"
* group[=].element[=].target[+].code = #{spore}
* group[=].element[=].target[=].display = "spore"
* group[=].element[=].target[=].relationship = #equivalent

// 610 титр фага -> {phage_titer}
* group[=].element[+].code = #610
* group[=].element[=].display = "титр фага"
* group[=].element[=].target[+].code = #{phage_titer}
* group[=].element[=].target[=].display = "phage titer"
* group[=].element[=].target[=].relationship = #equivalent

// 65 ТЦД 50 -> [TCID_50]
* group[=].element[+].code = #65
* group[=].element[=].display = "ТЦД 50"
* group[=].element[=].target[+].code = #[TCID_50]
* group[=].element[=].target[=].display = "50% tissue culture infectious dose"
* group[=].element[=].target[=].relationship = #equivalent

// 609 50 процентная тканевая цитопатическая доза -> [TCID_50]
* group[=].element[+].code = #609
* group[=].element[=].display = "50 процентная тканевая цитопатическая доза"
* group[=].element[=].target[+].code = #[TCID_50]
* group[=].element[=].target[=].display = "50% tissue culture infectious dose"
* group[=].element[=].target[=].relationship = #equivalent

// 53 PNU -> [PNU]
* group[=].element[+].code = #53
* group[=].element[=].display = "PNU"
* group[=].element[=].target[+].code = #[PNU]
* group[=].element[=].target[=].display = "protein nitrogen unit"
* group[=].element[=].target[=].relationship = #equivalent

// 484 PH -> [pH]
* group[=].element[+].code = #484
* group[=].element[=].display = "PH"
* group[=].element[=].target[+].code = #[pH]
* group[=].element[=].target[=].display = "pH"
* group[=].element[=].target[=].relationship = #equivalent

// 49 PFU -> [PFU]
* group[=].element[+].code = #49
* group[=].element[=].display = "PFU"
* group[=].element[=].target[+].code = #[PFU]
* group[=].element[=].target[=].display = "plaque forming unit"
* group[=].element[=].target[=].relationship = #equivalent

// 47 единица мутности -> [NTU]
* group[=].element[+].code = #47
* group[=].element[=].display = "единица мутности"
* group[=].element[=].target[+].code = #[NTU]
* group[=].element[=].target[=].display = "Nephelometric Turbidity Unit"
* group[=].element[=].target[=].relationship = #equivalent

// 50 Lf -> [Lf]
* group[=].element[+].code = #50
* group[=].element[=].display = "Lf"
* group[=].element[=].target[+].code = #[Lf]
* group[=].element[=].target[=].display = "Limit of flocculation"
* group[=].element[=].target[=].relationship = #equivalent

// 489 флокулирующая единица -> [Lf]
* group[=].element[+].code = #489
* group[=].element[=].display = "флокулирующая единица"
* group[=].element[=].target[+].code = #[Lf]
* group[=].element[=].target[=].display = "Limit of flocculation"
* group[=].element[=].target[=].relationship = #equivalent

// 487 МЕ/мл -> [iU]/mL
* group[=].element[+].code = #487
* group[=].element[=].display = "МЕ/мл"
* group[=].element[=].target[+].code = #[iU]/mL
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// 607 МЕ/мг -> [iU]/mg
* group[=].element[+].code = #607
* group[=].element[=].display = "МЕ/мг"
* group[=].element[=].target[+].code = #[iU]/mg
* group[=].element[=].target[=].display = "IU per milligram"
* group[=].element[=].target[=].relationship = #equivalent

// 212 МЕ/г -> [iU]/g
* group[=].element[+].code = #212
* group[=].element[=].display = "МЕ/г"
* group[=].element[=].target[+].code = #[iU]/g
* group[=].element[=].target[=].display = "IU per gram"
* group[=].element[=].target[=].relationship = #equivalent

// 52 единица действия биологической активности -> [iU]
* group[=].element[+].code = #52
* group[=].element[=].display = "единица действия биологической активности"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #equivalent

// 56 КИЕ -> [iU]
* group[=].element[+].code = #56
* group[=].element[=].display = "КИЕ"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #related-to

// 57 ЛЕ -> [iU]
* group[=].element[+].code = #57
* group[=].element[=].display = "ЛЕ"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #related-to

// 60 ИЕ -> [iU]
* group[=].element[+].code = #60
* group[=].element[=].display = "ИЕ"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #related-to

// 490 млн ЕД -> [iU]
* group[=].element[+].code = #490
* group[=].element[=].display = "млн ЕД"
* group[=].element[=].target[+].code = #10*6.[iU]
* group[=].element[=].target[=].display = "million international units"
* group[=].element[=].target[=].relationship = #equivalent

// 493 международная единица биологической активности -> [iU]
* group[=].element[+].code = #493
* group[=].element[=].display = "международная единица биологической активности"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #equivalent

// 529 миллиард единиц действия -> [iU]
* group[=].element[+].code = #529
* group[=].element[=].display = "миллиард единиц действия"
* group[=].element[=].target[+].code = #10*9.[iU]
* group[=].element[=].target[=].display = "billion IU"
* group[=].element[=].target[=].relationship = #equivalent

// 531 МЕД -> [iU]
* group[=].element[+].code = #531
* group[=].element[=].display = "МЕД"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #equivalent

// 73 ИР -> [IR]
* group[=].element[+].code = #73
* group[=].element[=].display = "ИР"
* group[=].element[=].target[+].code = #[IR]
* group[=].element[=].target[=].display = "index of reactivity"
* group[=].element[=].target[=].relationship = #equivalent

// 496 ФНЕ -> [FFU]
* group[=].element[+].code = #496
* group[=].element[=].display = "ФНЕ"
* group[=].element[=].target[+].code = #[FFU]
* group[=].element[=].target[=].display = "focus forming units"
* group[=].element[=].target[=].relationship = #equivalent

// 608 единица формирования фокуса (FFU) -> [FFU]
* group[=].element[+].code = #608
* group[=].element[=].display = "единица формирования фокуса (FFU)"
* group[=].element[=].target[+].code = #[FFU]
* group[=].element[=].target[=].display = "focus forming units"
* group[=].element[=].target[=].relationship = #equivalent

// 72 ЕС -> [EU]
* group[=].element[+].code = #72
* group[=].element[=].display = "ЕС"
* group[=].element[=].target[+].code = #[EU]
* group[=].element[=].target[=].display = "Ehrlich unit"
* group[=].element[=].target[=].relationship = #related-to

// 63 ИФА ед -> [ELU]
* group[=].element[+].code = #63
* group[=].element[=].display = "ИФА ед"
* group[=].element[=].target[+].code = #[ELU]
* group[=].element[=].target[=].display = "ELISA unit"
* group[=].element[=].target[=].relationship = #equivalent

// 67 ELU -> [ELU]
* group[=].element[+].code = #67
* group[=].element[=].display = "ELU"
* group[=].element[=].target[+].code = #[ELU]
* group[=].element[=].target[=].display = "ELISA unit"
* group[=].element[=].target[=].relationship = #equivalent

// 68 ИД 50 -> [EID_50]
* group[=].element[+].code = #68
* group[=].element[=].display = "ИД 50"
* group[=].element[=].target[+].code = #[EID_50]
* group[=].element[=].target[=].display = "50% embryo infectious dose"
* group[=].element[=].target[=].relationship = #equivalent

// 69 ЭИД 50 -> [EID_50]
* group[=].element[+].code = #69
* group[=].element[=].display = "ЭИД 50"
* group[=].element[=].target[+].code = #[EID_50]
* group[=].element[=].target[=].display = "50% embryo infectious dose"
* group[=].element[=].target[=].relationship = #equivalent

// 17 капля -> [drp]
* group[=].element[+].code = #17
* group[=].element[=].display = "капля"
* group[=].element[=].target[+].code = #[drp]
* group[=].element[=].target[=].display = "drop"
* group[=].element[=].target[=].relationship = #equivalent
/*
// 492 DU -> [D'ag'U]
* group[=].element[+].code = #492
* group[=].element[=].display = "DU"
* group[=].element[=].target[+].code = #[D'ag'U]
* group[=].element[=].target[=].display = "D-antigen unit"
* group[=].element[=].target[=].relationship = #equivalent

// 58 антигенная единица -> [D'ag'U]
* group[=].element[+].code = #58
* group[=].element[=].display = "антигенная единица"
* group[=].element[+].code = #[D'ag'U]
* group[=].element[=].target[+].code = #[D'ag'U]
* group[=].element[=].target[=].display = "D-antigen unit"
* group[=].element[=].target[=].relationship = #equivalent

// 74 единица антигена -> [D'ag'U]
* group[=].element[+].code = #74
* group[=].element[=].display = "единица антигена"
* group[=].element[=].target[+].code = #[D'ag'U]
* group[=].element[=].target[=].display = "D-antigen unit"
* group[=].element[=].target[=].relationship = #equivalent
*/
// 530 колониеобразующие единицы -> [CFU]
* group[=].element[+].code = #530
* group[=].element[=].display = "колониеобразующие единицы"
* group[=].element[=].target[+].code = #[CFU]
* group[=].element[=].target[=].display = "colony forming units"
* group[=].element[=].target[=].relationship = #equivalent

// 532 млрд КЕ -> [CFU]
* group[=].element[+].code = #532
* group[=].element[=].display = "млрд КЕ"
* group[=].element[=].target[+].code = #10*9.[CFU]
* group[=].element[=].target[=].display = "colony forming units"
* group[=].element[=].target[=].relationship = #equivalent

// 70 ЦПД 50 -> [CCID_50]
* group[=].element[+].code = #70
* group[=].element[=].display = "ЦПД 50"
* group[=].element[=].target[+].code = #[CCID_50]
* group[=].element[=].target[=].display = "50% cell culture infectious dose"
* group[=].element[=].target[=].relationship = #equivalent

// 71 МИДэ -> [CCID_50]
* group[=].element[+].code = #71
* group[=].element[=].display = "МИДэ"
* group[=].element[=].target[+].code = #[CCID_50]
* group[=].element[=].target[=].display = "50% cell culture infectious dose"
* group[=].element[=].target[=].relationship = #related-to

// 75 единица Аллергена -> [AU]
* group[=].element[+].code = #75
* group[=].element[=].display = "единица Аллергена"
* group[=].element[=].target[+].code = #[AU]
* group[=].element[=].target[=].display = "allergen unit"
* group[=].element[=].target[=].relationship = #equivalent

// 55 условная единица -> [arb'U]
* group[=].element[+].code = #55
* group[=].element[=].display = "условная единица"
* group[=].element[=].target[+].code = #[arb'U]
* group[=].element[=].target[=].display = "arbitrary unit"
* group[=].element[=].target[=].relationship = #equivalent

// 61 АТрЕ -> [arb'U]
* group[=].element[+].code = #61
* group[=].element[=].display = "АТрЕ"
* group[=].element[=].target[+].code = #[arb'U]
* group[=].element[=].target[=].display = "arbitrary unit"
* group[=].element[=].target[=].relationship = #related-to

// 64 анти-Xa МЕ -> [anti'Xa'U]
* group[=].element[+].code = #64
* group[=].element[=].display = "анти-Xa МЕ"
* group[=].element[=].target[+].code = #[anti'Xa'U]
* group[=].element[=].target[=].display = "biologic activity of factor Xa inhibitor"
* group[=].element[=].target[=].relationship = #equivalent

// 606 мегабеккерель -> MBq
* group[=].element[+].code = #606
* group[=].element[=].display = "мегабеккерель"
* group[=].element[=].target[+].code = #MBq
* group[=].element[=].target[=].display = "megabecquerel"
* group[=].element[=].target[=].relationship = #equivalent

// 37 килограмм -> kg
* group[=].element[+].code = #37
* group[=].element[=].display = "килограмм"
* group[=].element[=].target[+].code = #kg
* group[=].element[=].target[=].display = "kilogram"
* group[=].element[=].target[=].relationship = #equivalent

// 59 титрационная единицa -> {titer}
* group[=].element[+].code = #59
* group[=].element[=].display = "титрационная единицa"
* group[=].element[=].target[+].code = #{titer}
* group[=].element[=].target[=].display = "titer unit"
* group[=].element[=].target[=].relationship = #equivalent

// 76 ЛЕД -> [iU]
* group[=].element[+].code = #76
* group[=].element[=].display = "ЛЕД"
* group[=].element[=].target[+].code = #[iU]
* group[=].element[=].target[=].display = "international unit"
* group[=].element[=].target[=].relationship = #related-to
