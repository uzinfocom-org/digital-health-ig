Instance: dmed-vaccine-to-cvx-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Vaccine codes To CVX"
Description: "ConceptMap for mapping DMED Vaccine codes to CVX vaccine codes"
* name = "DMEDVaccineToCVXCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-vaccine-to-cvx-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
//Mapping DMED Vaccine codes to standard CVX vaccine codes. Enables interoperability between the DMED system and CVX-based systems.
* group[+].source = Canonical(DMEDVaccineCS)
* sourceScopeCanonical = Canonical(DMEDVaccineVS)
* group[=].target = $cvx
* targetScopeCanonical = $cvx-vs

* group[=].element[+].code = #59
* group[=].element[=].display = "АКДС R"
* group[=].element[=].target[+].code = #01
* group[=].element[=].target[=].display = "Difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #39
* group[=].element[=].display = "АДС-М-5"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #7
* group[=].element[=].display = "Спутник 1 компонент"
* group[=].element[=].target[+].code = #212
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoq oqsili-Ad26, konservantsiz, 0,5 ml"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #2
* group[=].element[=].display = "Гам Ковид вак Комбинированная векторная вакцина против коронавирусной инф. вызываемой вирусом САР 1-860421"
* group[=].element[=].target[+].code = #212
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoq oqsili-Ad26, konservantsiz, 0,5 ml"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #270
* group[=].element[=].display = "ГАРДАСИЛ"
* group[=].element[=].target[+].code = #62
* group[=].element[=].target[=].display = "inson papillomavirusiga qarshi emlash, to'rt valentli"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #31
* group[=].element[=].display = "ИПВ-1"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "poliovirusga qarshi emlash, faolsizlangan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #32
* group[=].element[=].display = "ИПВ-2"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "poliovirusga qarshi emlash, faolsizlangan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #46
* group[=].element[=].display = "PENTA1"
* group[=].element[=].target[+].code = #198
* group[=].element[=].target[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #304
* group[=].element[=].display = "ККВ - Краснушно-коревая вакцина"
* group[=].element[=].target[+].code = #94
* group[=].element[=].target[=].display = "Qizamiq, qizilcha, qizilcha va qizilchaga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #60
* group[=].element[=].display = "АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #55
* group[=].element[=].display = "ВПЧ 2"
* group[=].element[=].target[+].code = #137
* group[=].element[=].target[=].display = "HPV, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #53
* group[=].element[=].display = "ПФАЙЗЕР"
* group[=].element[=].target[+].code = #208
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 30 mkg/0,3 ml doza"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #51
* group[=].element[=].display = "ПЕНТА 2"
* group[=].element[=].target[+].code = #198
* group[=].element[=].target[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #43
* group[=].element[=].display = "КОРЬ"
* group[=].element[=].target[+].code = #05
* group[=].element[=].target[=].display = "Qizamiq virusiga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #41
* group[=].element[=].display = "АДСМ-6"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #40
* group[=].element[=].display = "ВПЧ 1"
* group[=].element[=].target[+].code = #137
* group[=].element[=].target[=].display = "HPV, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #36
* group[=].element[=].display = "АКДС-4"
* group[=].element[=].target[+].code = #189
* group[=].element[=].target[=].display = "Difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #28
* group[=].element[=].display = "АКДС-3"
* group[=].element[=].target[+].code = #189
* group[=].element[=].target[=].display = "Difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #21
* group[=].element[=].display = "АКДС-2"
* group[=].element[=].target[+].code = #189
* group[=].element[=].target[=].display = "Difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #14
* group[=].element[=].display = "АКДС-1"
* group[=].element[=].target[+].code = #189
* group[=].element[=].target[=].display = "Difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #10
* group[=].element[=].display = "БЦЖ-1"
* group[=].element[=].target[+].code = #19
* group[=].element[=].target[=].display = "Bacillus Calmette-Guerin vaktsinasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #8
* group[=].element[=].display = "Johnson & Johnson"
* group[=].element[=].target[+].code = #212
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoq oqsili-Ad26, konservantsiz, 0,5 ml"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #6
* group[=].element[=].display = "Астра Зенека"
* group[=].element[=].target[+].code = #210
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoqli oqsil-ChAdOx1, konservantsiz, 0,5 ml"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #5
* group[=].element[=].display = "Модерна"
* group[=].element[=].target[+].code = #207
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 100 mkg/0,5 ml yoki 50 mkg/0,25 ml doza"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #3
* group[=].element[=].display = "Гам Ковид вак Компонент 1-0,5 мл - 1 доза в ампуле в упаковке (Спутник -V) вакцина 1-470321"
* group[=].element[=].target[+].code = #212
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoq oqsili-Ad26, konservantsiz, 0,5 ml"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #1
* group[=].element[=].display = "Pfizer вакцина против COVID"
* group[=].element[=].target[+].code = #208
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 30 mkg/0,3 ml doza"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #75
* group[=].element[=].display = "В1 ПЕНТА"
* group[=].element[=].target[+].code = #198
* group[=].element[=].target[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #77
* group[=].element[=].display = "В2 ПЕНТА"
* group[=].element[=].target[+].code = #198
* group[=].element[=].target[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #68
* group[=].element[=].display = "R3 АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #90
* group[=].element[=].display = "V1 ИПВ"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "poliovirusga qarshi emlash, faolsizlangan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #91
* group[=].element[=].display = "V2 ИПВ"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "poliovirusga qarshi emlash, faolsizlangan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #92
* group[=].element[=].display = "V3 ПЕНТА"
* group[=].element[=].target[+].code = #198
* group[=].element[=].target[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #95
* group[=].element[=].display = "Rv Корь"
* group[=].element[=].target[+].code = #05
* group[=].element[=].target[=].display = "Qizamiq virusiga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #237
* group[=].element[=].display = "Корь IgM"
* group[=].element[=].target[+].code = #05
* group[=].element[=].target[=].display = "Qizamiq virusiga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #67
* group[=].element[=].display = "R2 АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #338
* group[=].element[=].display = "ВЕРОЦЕЛЛ"
* group[=].element[=].target[+].code = #207
* group[=].element[=].target[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 100 mkg/0,5 ml yoki 50 mkg/0,25 ml doza"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #197
* group[=].element[=].display = "Адсорбированный столбнячный анатоксин (АС)"
* group[=].element[=].target[+].code = #35
* group[=].element[=].target[=].display = "tetanus toksoidi, adsorbsiyalangan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #164
* group[=].element[=].display = "ACYW - менингит"
* group[=].element[=].target[+].code = #108
* group[=].element[=].target[=].display = "meningokokk ACWY vaktsinasi, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #130
* group[=].element[=].display = "Проба Манту"
* group[=].element[=].target[+].code = #96
* group[=].element[=].target[=].display = "Tuberkulin teri testi; tozalangan protein lotin eritmasi, intradermal"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #129
* group[=].element[=].display = "Диаскин тест"
* group[=].element[=].target[+].code = #98
* group[=].element[=].target[=].display = "tuberkulin teri testi; aniqlanmagan formula"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #94
* group[=].element[=].display = "V2 ВПЧ"
* group[=].element[=].target[+].code = #137
* group[=].element[=].target[=].display = "HPV, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #93
* group[=].element[=].display = "V1 ВПЧ"
* group[=].element[=].target[+].code = #137
* group[=].element[=].target[=].display = "HPV, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #89
* group[=].element[=].display = "V4 АКДС"
* group[=].element[=].target[+].code = #01
* group[=].element[=].target[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #83
* group[=].element[=].display = "АДСМ-5"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #82
* group[=].element[=].display = "R АКДС"
* group[=].element[=].target[+].code = #01
* group[=].element[=].target[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #78
* group[=].element[=].display = "В КПК"
* group[=].element[=].target[+].code = #03
* group[=].element[=].target[=].display = "Qizamiq, parotit, qizilcha virusiga qarshi emlash"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #71
* group[=].element[=].display = "ВПЧ"
* group[=].element[=].target[+].code = #137
* group[=].element[=].target[=].display = "HPV, aniqlanmagan formulasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #69
* group[=].element[=].display = "БЦЖ"
* group[=].element[=].target[+].code = #19
* group[=].element[=].target[=].display = "Bacillus Calmette-Guerin vaktsinasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #198
* group[=].element[=].display = "Антирабическая вакцина высушенная на морозе"
* group[=].element[=].target[+].code = #90
* group[=].element[=].target[=].display = "Quturishga qarshi emlash, aniqlanmagan"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #66
* group[=].element[=].display = "R1 АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #65
* group[=].element[=].display = "V2 АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #64
* group[=].element[=].display = "V1 АДСМ"
* group[=].element[=].target[+].code = #113
* group[=].element[=].target[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
* group[=].element[=].target[=].relationship = #related-to


//Group 2 dmed vaccine codes to VaccineURNCodeCS
* group[+].source = Canonical(DMEDVaccineCS)
* sourceScopeCanonical = Canonical(DMEDVaccineVS)

* group[=].target = $aire-vaccine
* group[=].element[+].code = #61
* group[=].element[=].display = "ВГ B"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #9
* group[=].element[=].display = "ВГВ-1"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #15
* group[=].element[=].display = "ВГВ-2"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #22
* group[=].element[=].display = "ВГВ-3"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #29
* group[=].element[=].display = "ВГВ-4"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #131
* group[=].element[=].display = "Гепатит Б"
* group[=].element[=].target[+].code = #ENGP
* group[=].element[=].target[=].display = "Вакцина против гепатита B"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #56
* group[=].element[=].display = "СОВИ ГРИПП"
* group[=].element[=].target[+].code = #FLRIX
* group[=].element[=].target[=].display = "Инактивированная вакцина против гриппа"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #54
* group[=].element[=].display = "Гриппол плюс"
* group[=].element[=].target[+].code = #FLRIX
* group[=].element[=].target[=].display = "Инактивированная вакцина против гриппа"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #30
* group[=].element[=].display = "ХИБ-3"
* group[=].element[=].target[+].code = #GNHIB
* group[=].element[=].target[=].display = "Вакцина против Haemophilus influenzae типа b"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #23
* group[=].element[=].display = "ХИБ-2"
* group[=].element[=].target[+].code = #GNHIB
* group[=].element[=].target[=].display = "Вакцина против Haemophilus influenzae типа b"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #16
* group[=].element[=].display = "ХИБ-1"
* group[=].element[=].target[+].code = #GNHIB
* group[=].element[=].target[=].display = "Вакцина против Haemophilus influenzae типа b"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #48
* group[=].element[=].display = "ВГ \"A\""
* group[=].element[=].target[+].code = #GNHPA
* group[=].element[=].target[=].display = "Вакцина против гепатита A"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #128
* group[=].element[=].display = "Гепатита А"
* group[=].element[=].target[+].code = #GNHPA
* group[=].element[=].target[=].display = "Вакцина против гепатита A"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #58
* group[=].element[=].display = "Пнемокок 2"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #47
* group[=].element[=].display = "ПНЕВМО 1"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #34
* group[=].element[=].display = "ПНЕВМО 3"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #24
* group[=].element[=].display = "Пневмакокк-2"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #17
* group[=].element[=].display = "Пневмакокк-1"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #70
* group[=].element[=].display = "PNEVMO - 3"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #74
* group[=].element[=].display = "ПНЕВМО-3"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #73
* group[=].element[=].display = "ПНЕВМО-2"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #72
* group[=].element[=].display = "ПНЕВМО-1"
* group[=].element[=].target[+].code = #GNPNE
* group[=].element[=].target[=].display = "Пневмококковая вакцина"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #11
* group[=].element[=].display = "ОПВ-1"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #18
* group[=].element[=].display = "ОПВ-2"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #25
* group[=].element[=].display = "ОПВ-3"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #35
* group[=].element[=].display = "ОПВ-4"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #38
* group[=].element[=].display = "ОПВ-5"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #57
* group[=].element[=].display = "ОПВ R"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #49
* group[=].element[=].display = "ОПВ2"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #44
* group[=].element[=].display = "ОПВ1"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #84
* group[=].element[=].display = "V1 ОПВ"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #85
* group[=].element[=].display = "V2 ОПВ"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #86
* group[=].element[=].display = "V3 ОПВ"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #87
* group[=].element[=].display = "V4 ОПВ"
* group[=].element[=].target[+].code = #GNPOL
* group[=].element[=].target[=].display = "Полиомиелит"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #26
* group[=].element[=].display = "Рота-3"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #50
* group[=].element[=].display = "ROT2"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #45
* group[=].element[=].display = "РОТА 1"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #12
* group[=].element[=].display = "РОТА-1"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #19
* group[=].element[=].display = "РОТА-2"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #79
* group[=].element[=].display = "В1 РОТА"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #80
* group[=].element[=].display = "В2 РОТА"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #81
* group[=].element[=].display = "В3 РОТА"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #88
* group[=].element[=].display = "V2 РОТА"
* group[=].element[=].target[+].code = #GNROX
* group[=].element[=].target[=].display = "Ротавирус"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #13
* group[=].element[=].display = "Пента-1"
* group[=].element[=].target[+].code = #IFPA
* group[=].element[=].target[=].display = "Инфанрикс Пента (пятикомпонентная: дифтерия, коклюш, столбняк, полиомиелит, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #20
* group[=].element[=].display = "Пента-2"
* group[=].element[=].target[+].code = #IFPA
* group[=].element[=].target[=].display = "Инфанрикс Пента (пятикомпонентная: дифтерия, коклюш, столбняк, полиомиелит, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #27
* group[=].element[=].display = "Пента-3"
* group[=].element[=].target[+].code = #IFPA
* group[=].element[=].target[=].display = "Инфанрикс Пента (пятикомпонентная: дифтерия, коклюш, столбняк, полиомиелит, Hib)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #271
* group[=].element[=].display = "Инфлювак"
* group[=].element[=].target[+].code = #INFLUV
* group[=].element[=].target[=].display = "Инфлювак (вакцина против гриппа, инактивированная)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #63
* group[=].element[=].display = "КПК R"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #52
* group[=].element[=].display = "КПК"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #42
* group[=].element[=].display = "ЭПКК"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #37
* group[=].element[=].display = "КПК-2"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #33
* group[=].element[=].display = "КПК-1"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #62
* group[=].element[=].display = "КПК-1 для младенцев"
* group[=].element[=].target[+].code = #MMR
* group[=].element[=].target[=].display = "КПК (комбинированная вакцина против кори, паротита и краснухи)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #76
* group[=].element[=].display = "В2"
* group[=].element[=].noMap = true

* group[=].element[+].code = #4
* group[=].element[=].display = "ZF -UZ-VAC (2001 вакцина 202012026)"
* group[=].element[=].noMap = true
