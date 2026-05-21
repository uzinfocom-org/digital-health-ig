Instance: dmed-vaccine-to-dhp-vaccine-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Vaccine codes To DHP Vaccine codes"
Description: "ConceptMap for mapping DMED Vaccine codes to DHP Vaccine codes"
* name = "DMEDVaccineCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-vaccine-to-dhp-vaccine-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
//Mapping DMED Vaccine codes to DHP Vaccine codes. DMED codes are used in the DMED system for recording immunizations, while DHP Vaccine codes are used in the DHP system. This ConceptMap enables interoperability between the two systems.
* group[+].source = Canonical(DMEDVaccineCS)
* sourceScopeCanonical = Canonical(DMEDVaccineVS)
* group[=].target = Canonical(VaccineCodeCS)
* targetScopeCanonical = Canonical(VaccineCodeVS)

* group[=].element[+].code = #271
* group[=].element[=].display = "Инфлювак"
* group[=].element[=].target[+].code = #immun-253
* group[=].element[=].target[=].display = "Influvac (inaktivlangan grippga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #11
* group[=].element[=].display = "ОПВ-1"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #13
* group[=].element[=].display = "Пента-1"
* group[=].element[=].target[+].code = #immun-250
* group[=].element[=].target[=].display = "Infanrix Penta (beshlik: difteriya, ko'kyo'tal, qoqshol, poliomielit, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #18
* group[=].element[=].display = "ОПВ-2"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #20
* group[=].element[=].display = "Пента-2"
* group[=].element[=].target[+].code = #immun-250
* group[=].element[=].target[=].display = "Infanrix Penta (beshlik: difteriya, ko'kyo'tal, qoqshol, poliomielit, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #25
* group[=].element[=].display = "ОПВ-3"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #26
* group[=].element[=].display = "Рота-3"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #27
* group[=].element[=].display = "Пента-3"
* group[=].element[=].target[+].code = #immun-250
* group[=].element[=].target[=].display = "Infanrix Penta (beshlik: difteriya, ko'kyo'tal, qoqshol, poliomielit, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #35
* group[=].element[=].display = "ОПВ-4"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #38
* group[=].element[=].display = "ОПВ-5"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #50
* group[=].element[=].display = "ROT2"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #57
* group[=].element[=].display = "ОПВ R"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #63
* group[=].element[=].display = "КПК R"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #61
* group[=].element[=].display = "ВГ B"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #58
* group[=].element[=].display = "Пнемокок 2"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #56
* group[=].element[=].display = "СОВИ ГРИПП"
* group[=].element[=].target[+].code = #immun-222
* group[=].element[=].target[=].display = "Inaktivatsiyalangan grippga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #54
* group[=].element[=].display = "Гриппол плюс"
* group[=].element[=].target[+].code = #immun-222
* group[=].element[=].target[=].display = "Inaktivatsiyalangan grippga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #52
* group[=].element[=].display = "КПК"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #49
* group[=].element[=].display = "ОПВ2"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #48
* group[=].element[=].display = "ВГ A"
* group[=].element[=].target[+].code = #immun-230
* group[=].element[=].target[=].display = "Gepatit A ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #47
* group[=].element[=].display = "ПНЕВМО 1"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #45
* group[=].element[=].display = "РОТА 1"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #44
* group[=].element[=].display = "ОПВ1"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #42
* group[=].element[=].display = "ЭПКК"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #37
* group[=].element[=].display = "КПК-2"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #34
* group[=].element[=].display = "ПНЕВМО 3"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #33
* group[=].element[=].display = "КПК-1"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #30
* group[=].element[=].display = "ХИБ-3"
* group[=].element[=].target[+].code = #immun-229
* group[=].element[=].target[=].display = "Haemophilus influenzae b turi ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #24
* group[=].element[=].display = "Пневмакокк-2"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #23
* group[=].element[=].display = "ХИБ-2"
* group[=].element[=].target[+].code = #immun-229
* group[=].element[=].target[=].display = "Haemophilus influenzae b turi ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #9
* group[=].element[=].display = "ВГВ-1"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #17
* group[=].element[=].display = "Пневмакокк-1"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #16
* group[=].element[=].display = "ХИБ-1"
* group[=].element[=].target[+].code = #immun-229
* group[=].element[=].target[=].display = "Haemophilus influenzae b turi ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #12
* group[=].element[=].display = "РОТА-1"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #19
* group[=].element[=].display = "РОТА-2"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #15
* group[=].element[=].display = "ВГВ-2"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #22
* group[=].element[=].display = "ВГВ-3"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #70
* group[=].element[=].display = "PNEVMO - 3"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #79
* group[=].element[=].display = "В1 РОТА"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #80
* group[=].element[=].display = "В2 РОТА"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #81
* group[=].element[=].display = "В3 РОТА"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #84
* group[=].element[=].display = "V1 ОПВ"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #85
* group[=].element[=].display = "V2 ОПВ"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #86
* group[=].element[=].display = "V3 ОПВ"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #87
* group[=].element[=].display = "V4 ОПВ"
* group[=].element[=].target[+].code = #immun-236
* group[=].element[=].target[=].display = "Poliomiyelit"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #88
* group[=].element[=].display = "V2 РОТА"
* group[=].element[=].target[+].code = #immun-237
* group[=].element[=].target[=].display = "Rotavirus"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #128
* group[=].element[=].display = "Гепатита А"
* group[=].element[=].target[+].code = #immun-230
* group[=].element[=].target[=].display = "Gepatit A ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #29
* group[=].element[=].display = "ВГВ-4"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #74
* group[=].element[=].display = "ПНЕВМО-3"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #73
* group[=].element[=].display = "ПНЕВМО-2"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #72
* group[=].element[=].display = "ПНЕВМО-1"
* group[=].element[=].target[+].code = #immun-235
* group[=].element[=].target[=].display = "Pnevmokokkga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #131
* group[=].element[=].display = "Гепатит Б"
* group[=].element[=].target[+].code = #immun-221
* group[=].element[=].target[=].display = "Gepatit B ga qarshi vaksina"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #62
* group[=].element[=].display = "КПК-1 для младенцев"
* group[=].element[=].target[+].code = #immun-260
* group[=].element[=].target[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
* group[=].element[=].target[=].relationship = #related-to
