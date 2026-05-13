Instance: lab-pan-codes-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Laboratory analytes codes to LOINC"
Description: "Maps local UZ laboratory analytes codes to LOINC."
* url = "https://dhp.uz/fhir/core/ConceptMap/lab-pan-codes-to-loinc"
* name = "LaboratoryAnalytesCodesToLOINC"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(LabPanelCS)
* sourceScopeCanonical = Canonical(ObservationCodesVS)
* group.target = $loinc

* group.element[+].code = #lab-pan-1
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #3167-4
* group.element[=].target[=].display = "Количество"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-2
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #5778-6
* group.element[=].target[=].display = "Цвет"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-3
* group.element[=].display = "Shaffofligi"
* group.element[=].target[+].code = #5767-9
* group.element[=].target[=].display = "Прозрачность"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-4
* group.element[=].display = "Nisbiy zichligi"
* group.element[=].target[+].code = #5811-5
* group.element[=].target[=].display = "Относительная плотность"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-5
* group.element[=].display = "Reaksiya"
* group.element[=].target[+].code = #2756-5
* group.element[=].target[=].display = "Реакция"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-6
* group.element[=].display = "Oqsil"
* group.element[=].target[+].code = #5804-0
* group.element[=].target[=].display = "Белок"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-7
* group.element[=].display = "Glyukoza"
* group.element[=].target[+].code = #5792-7
* group.element[=].target[=].display = "Глюкоза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-8
* group.element[=].display = "Keton tanachalari"
* group.element[=].target[+].code = #5797-6
* group.element[=].target[=].display = "Кетоновые тела"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-9
* group.element[=].display = "Qon borligini aniqlash ryeaksiyasi"
* group.element[=].target[+].code = #57751-0
* group.element[=].target[=].display = "Реакция на наличие крови"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-10
* group.element[=].display = "Bilirubin"
* group.element[=].target[+].code = #5770-3
* group.element[=].target[=].display = "Билирубин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-11
* group.element[=].display = "Urobilinoidlar"
* group.element[=].target[+].code = #20405-7
* group.element[=].target[=].display = "Уробилиноген"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-12
* group.element[=].display = "O't kislotasi"
* group.element[=].target[+].code = #43889-5
* group.element[=].target[=].display = "Желчные кислоты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-13
* group.element[=].display = "Epiteliy: yassi"
* group.element[=].target[+].code = #12258-0
* group.element[=].target[=].display = "Эпителий: плоский"
* group.element[=].target[=].relationship = #equivalent

//changing code
* group.element[+].code = #lab-pan-14
* group.element[=].display = "Epiteliy: o‘tuvchi"
* group.element[=].target[+].code = #30089-7 
* group.element[=].target[=].display = "Эпителий: переходный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-15
* group.element[=].display = "Epiteliy: buyrak epiteliyasi"
* group.element[=].target[+].code = #105116-8 	
* group.element[=].target[=].display = "Эпителий: почечный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-16
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #20408-1
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-17
* group.element[=].display = "Eritrotsitlar o‘zgargan"
* group.element[=].target[+].code = #99862-5
* group.element[=].target[=].display = "Эритроциты изменённые"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-18
* group.element[=].display = "Eritrotsitlar o‘zgarmagan"
* group.element[=].target[+].code = #20409-9
* group.element[=].target[=].display = "Эритроциты неизменённые"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-19
* group.element[=].display = "Silindrlar: gialinli"
* group.element[=].target[+].code = #5796-8
* group.element[=].target[=].display = "Цилиндры: гиалиновые"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-20
* group.element[=].display = "Silindrlar: mumsimon"
* group.element[=].target[+].code = #5819-8
* group.element[=].target[=].display = "Цилиндры: восковидные"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-21
* group.element[=].display = "Silindrlar: donador"
* group.element[=].target[+].code = #5793-5
* group.element[=].target[=].display = "Цилиндры: зернистые"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-22
* group.element[=].display = "Silindrlar: eritrotsitar"
* group.element[=].target[+].code = #5807-3
* group.element[=].target[=].display = "Цилиндры: эритроцитарные"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-23
* group.element[=].display = "Silindrlar: leykotsitar"
* group.element[=].target[+].code = #5820-6
* group.element[=].target[=].display = "Цилиндры: лейкоцитарные"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-24
* group.element[=].display = "Silindrlar: epitelial"
* group.element[=].target[+].code = #5786-9
* group.element[=].target[=].display = "Цилиндры: эпителиальные"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-25
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #28545-2
* group.element[=].target[=].display = "Слизь"
* group.element[=].target[=].relationship = #equivalent

//changing relationship
* group.element[+].code = #lab-pan-26
* group.element[=].display = "Tuzlar"
* group.element[=].target[+].code = #49755-2
* group.element[=].target[=].display = "Соли"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-pan-27
* group.element[=].display = "Bakteriyalar"
* group.element[=].target[+].code = #5769-5
* group.element[=].target[=].display = "Бактерии"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-28
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #17606-5
* group.element[=].target[=].display = "Количество"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-29
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #11029-6
* group.element[=].target[=].display = "Консистенция"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-30
* group.element[=].display = "Shakli"
* group.element[=].target[+].code = #29636-8
* group.element[=].target[=].display = "Форма"
* group.element[=].target[=].relationship = #equivalent

//changing code and relationship
* group.element[+].code = #lab-pan-31
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #29636-8
* group.element[=].target[=].display = "Запах"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-32
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #9397-1
* group.element[=].target[=].display = "Цвет"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-33
* group.element[=].display = "Muhit (pH reaksiyasi)"
* group.element[=].target[+].code = #2755-7
* group.element[=].target[=].display = "Среда (реакция pH)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-34
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #42524-9
* group.element[=].target[=].display = "Слизь"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-35
* group.element[=].display = "Qon"
* group.element[=].target[+].code = #2335-8
* group.element[=].target[=].display = "Кровь"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-36
* group.element[=].display = "Hazm bo‘lmagan ovqat qoldiqlari"
* group.element[=].target[+].code = #5786-9
* group.element[=].target[=].display = "Непереваренные остатки пищи"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-37
* group.element[=].display = "Yashirin qonga reaksiya"
* group.element[=].target[+].code = #57905-2
* group.element[=].target[=].display = "Реакция на скрытую кровь"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-38
* group.element[=].display = "Sterkobilinga reaksiya"
* group.element[=].target[+].code = #2969-4
* group.element[=].target[=].display = "Реакция на стеркобилин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-39
* group.element[=].display = "Bilirubinga reaksiya"
* group.element[=].target[+].code = #1976-0
* group.element[=].target[=].display = "Реакция на билирубин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-40
* group.element[=].display = "Mushak tolalari: ko‘ndalang chiziqli"
* group.element[=].target[+].code = #2605-4
* group.element[=].target[=].display = "Мышечные волокна:С исчерченностью"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-pan-41
* group.element[=].display = "Mushak tolalari: ko‘ndalang chiziqsiz"
* group.element[=].target[+].code = #2605-4
* group.element[=].target[=].display = "Мышечные волокна:Без исчерченности"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-pan-42
* group.element[=].display = "Biriktiruvchi to‘qima"
* group.element[=].target[+].code = #96733-1
* group.element[=].target[=].display = "Соединительная ткань"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-43
* group.element[=].display = "Neytral yog‘"
* group.element[=].target[+].code = #12598-9
* group.element[=].target[=].display = "Жир нейтральный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-44
* group.element[=].display = "Yog‘ kislotalari"
* group.element[=].target[+].code = #42668-4
* group.element[=].target[=].display = "Жирные кислоты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-45
* group.element[=].display = "Sovunlar"
* group.element[=].target[+].code = #96734-9
* group.element[=].target[=].display = "Мыла"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-46
* group.element[=].display = "O‘simlik kletchatkasi (hazm bo‘ladigan)"
* group.element[=].target[+].code = #55835-3
* group.element[=].target[=].display = "Растительная клетчатка перевариваемая"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-pan-47
* group.element[=].display = "Kraxmal"
* group.element[=].target[+].code = #2967-8
* group.element[=].target[=].display = "Крахмал"
* group.element[=].target[=].relationship = #equivalent
/*
* group.element[+].code = #lab-pan-48
* group.element[=].display = "Yodofil flora"
* group.element[=].target[+].code = #19124-5
* group.element[=].target[=].display = "Йодофильная флора"
* group.element[=].target[=].relationship = #not-related-to
*/
* group.element[+].code = #lab-pan-49
* group.element[=].display = "Kristallar"
* group.element[=].target[+].code = #98029-2
* group.element[=].target[=].display = "Кристаллы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-50
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #42524-9
* group.element[=].target[=].display = "Слизь"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-51
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #14103-6
* group.element[=].target[=].display = "Эпителий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-52
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #13655-6
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-53
* group.element[=].display = "Eritrotsitlar"
* group.element[=].target[+].code = #33668-5
* group.element[=].target[=].display = "Эритроциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-54
* group.element[=].display = "Sodda parazitlar (protozoylar)"
* group.element[=].target[+].code = #38401-6
* group.element[=].target[=].display = "Простейшие"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-55
* group.element[=].display = "Gelmint tuxumlari"
* group.element[=].target[+].code = #10704-5
* group.element[=].target[=].display = "Яйца глистов"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-56
* group.element[=].display = "Achitqi zamburug‘lar"
* group.element[=].target[+].code = #17773-3
* group.element[=].target[=].display = "Дрожжевые грибы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-57
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #20408-1
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-58
* group.element[=].display = "Epitelial hujayralar"
* group.element[=].target[+].code = #32762-7
* group.element[=].target[=].display = "Эпителиалные клетки"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-59
* group.element[=].display = "Mikroflora"
* group.element[=].target[+].code = #12178-0
* group.element[=].target[=].display = "Микрофлора"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-60
* group.element[=].display = "Gonokokklar"
* group.element[=].target[+].code = #697-3
* group.element[=].target[=].display = "Гонококки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-61
* group.element[=].display = "Trichomonadalar"
* group.element[=].target[+].code = #91845-8
* group.element[=].target[=].display = "Трихомонады"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-62
* group.element[=].display = "Zamburug‘lar"
* group.element[=].target[+].code = #12275-4
* group.element[=].target[=].display = "Грибы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-63
* group.element[=].display = "Protrombin indeks"
* group.element[=].target[+].code = #5901-4
* group.element[=].target[=].display = "Протромбиновый индекс"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-64
* group.element[=].display = "Protrombin vaqti"
* group.element[=].target[+].code = #5902-2
* group.element[=].target[=].display = "Протромбиновое время"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-65
* group.element[=].display = "Tromin vaqti (TB)"
* group.element[=].target[+].code = #3243-3
* group.element[=].target[=].display = "Тромбиновое время (ТВ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-66
* group.element[=].display = "Fibrinogen"
* group.element[=].target[+].code = #3255-7
* group.element[=].target[=].display = "Фибриноген"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-67
* group.element[=].display = "Fibrin-monomer eruvchi komplekslari (FMEK)"
* group.element[=].target[+].code = #40702-3
* group.element[=].target[=].display = "Растворимые фибрин-мономерные комплексы (РФМК)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-68
* group.element[=].display = "Plazmaning geparinga tolerantligi"
* group.element[=].target[+].code = #66747-7
* group.element[=].target[=].display = "Толерантность плазмы к гепарину"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-69
* group.element[=].display = "Rekalsifikatsiya vaqti"
* group.element[=].target[+].code = #3242-5
* group.element[=].target[=].display = "Время рекальцификации"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-70
* group.element[=].display = "МНО"
* group.element[=].target[+].code = #6301-6
* group.element[=].target[=].display = "МНО (Международное нормализованное отношение)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-71
* group.element[=].display = "Trombotest"
* group.element[=].target[+].code = #3289-6
* group.element[=].target[=].display = "Протромбин.активность актуальный/нормальный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-72
* group.element[=].display = "Qisman faollashtirilgan tromboplastin vaqti (ҚФТВ)"
* group.element[=].target[+].code = #14979-9
* group.element[=].target[=].display = "Частично активированное тромбопластиновое время (ЧАСТВ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-73
* group.element[=].display = "Etanol"
* group.element[=].target[+].code = #5639-0
* group.element[=].target[=].display = "Этанол"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-74
* group.element[=].display = "Gemoglobin (HB)"
* group.element[=].target[+].code = #718-7
* group.element[=].target[=].display = "Гемоглобин (HB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-75
* group.element[=].display = "Eritrotsitlar (RBC)"
* group.element[=].target[+].code = #789-8
* group.element[=].target[=].display = "Эритроциты (RBC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-77
* group.element[=].display = "Eritrotsitlarning o‘rtacha hajmi (MCV)"
* group.element[=].target[+].code = #787-2
* group.element[=].target[=].display = "Средний объём эритроцитов (MCV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-78
* group.element[=].display = "1 dona eritrotsitdagi gemoglobin miqdori (MCH)"
* group.element[=].target[+].code = #785-6
* group.element[=].target[=].display = "Среднее содержание гемоглобина в одном эритроците (MCH)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-79
* group.element[=].display = "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
* group.element[=].target[+].code = #786-4
* group.element[=].target[=].display = "Средняя концентрация гемоглобина в эритроците (MCHC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-80
* group.element[=].display = "Eritrotsitlar anizotsitozi (RDW-CV)"
* group.element[=].target[+].code = #788-0
* group.element[=].target[=].display = "Анизоцитоз эритроцитов (RDW-CV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-81
* group.element[=].display = "Gematokrit (HCT)"
* group.element[=].target[+].code = #4544-3
* group.element[=].target[=].display = "Гематокрит (HCT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-82
* group.element[=].display = "Trombotsitlar (PLT)"
* group.element[=].target[+].code = #777-3
* group.element[=].target[=].display = "Тромбоциты (PLT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-83
* group.element[=].display = "Trombotsitlarning o‘rtacha hajmi (MPV)"
* group.element[=].target[+].code = #32623-1
* group.element[=].target[=].display = "Средний объём тромбоцитов (MPV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-84
* group.element[=].display = "Trombotsitlar anizotsitozi (PDW)"
* group.element[=].target[+].code = #32207-3
* group.element[=].target[=].display = "Анизоцитоз тромбоцитов (PDW)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-85
* group.element[=].display = "Trombokrit (PCT)"
* group.element[=].target[+].code = #28542-9
* group.element[=].target[=].display = "Тромбокрит (PCT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-86
* group.element[=].display = "Leykotsitlar (WBC)"
* group.element[=].target[+].code = #6690-2
* group.element[=].target[=].display = "Лейкоциты (WBC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-87
* group.element[=].display = "Miyelotsitlar"
* group.element[=].target[+].code = #30446-9
* group.element[=].target[=].display = "Миелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-88
* group.element[=].display = "Metamiyelotsitlar"
* group.element[=].target[+].code = #28541-1
* group.element[=].target[=].display = "Метамиелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-89
* group.element[=].display = "Tayoqchasimon yadroli neytrofillar"
* group.element[=].target[+].code = #764-1
* group.element[=].target[=].display = "Палочкоядерные нейтрофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-90
* group.element[=].display = "Segment yadroli neytrofillar"
* group.element[=].target[+].code = #751-8
* group.element[=].target[=].display = "Сегментоядерные нейтрофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-91
* group.element[=].display = "Eozinofillar"
* group.element[=].target[+].code = #711-2
* group.element[=].target[=].display = "Эозинофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-92
* group.element[=].display = "Bazofillar"
* group.element[=].target[+].code = #704-7
* group.element[=].target[=].display = "Базофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-93
* group.element[=].display = "Monotsitlar"
* group.element[=].target[+].code = #5905-5
* group.element[=].target[=].display = "Моноциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-94
* group.element[=].display = "Limfotsitlar"
* group.element[=].target[+].code = #731-0
* group.element[=].target[=].display = "Лимфоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-95
* group.element[=].display = "Plazmatik hujayralar"
* group.element[=].target[+].code = #93362-2 
* group.element[=].target[=].display = "Плазматические клетки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-96
* group.element[=].display = "Eritrotsitlarning cho‘kish tezligi (ECHT)"
* group.element[=].target[+].code = #4537-7
* group.element[=].target[=].display = "Скорость оседания эритроцитов (СОЭ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-97
* group.element[=].display = "Anizotsitoz (mikrotsitlar, makrotsitlar, megalotsitlar)"
* group.element[=].target[+].code = #51640-1
* group.element[=].target[=].display = "Анизоцитоз (микроциты, макроциты, мегалоциты)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-98
* group.element[=].display = "Poykilotsitoz"
* group.element[=].target[+].code = #779-9
* group.element[=].target[=].display = "Пойкилоцитоз"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-99
* group.element[=].display = "Eritrotsitlarning bazofil donadorligi"
* group.element[=].target[+].code = #703-9
* group.element[=].target[=].display = "Базофильная зернистость эритроцитов"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-100
* group.element[=].display = "Polixromatofiliya"
* group.element[=].target[+].code = #10378-8
* group.element[=].target[=].display = "Полихроматофилия"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-101
* group.element[=].display = "Jolli tanachalari"
* group.element[=].target[+].code = #7793-3
* group.element[=].target[=].display = "Тельца Жолли"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-102
* group.element[=].display = "Kebot halqalari"
* group.element[=].target[+].code = #11280-5
* group.element[=].target[=].display = "Кольца Кебота"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-103
* group.element[=].display = "Eritronormoblastlar (100 ta leykotsitga nisbatan)"
* group.element[=].target[+].code = #18309-5
* group.element[=].target[=].display = "Эритронормобласты (на 100 лейкоцитов)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-104
* group.element[=].display = "Megaloblastlar"
* group.element[=].target[+].code = #52127-8
* group.element[=].target[=].display = "Мегалобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-105
* group.element[=].display = "Yadro gipersegmentatsiyasi"
* group.element[=].target[+].code = #765-8
* group.element[=].target[=].display = "Гиперсегментация ядер"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-106
* group.element[=].display = "Toksogen donadorlik"
* group.element[=].target[+].code = #803-7
* group.element[=].target[=].display = "Токсическая зернистость"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-107
* group.element[=].display = "Leykositlar (WBC)"
* group.element[=].target[+].code = #6690-2
* group.element[=].target[=].display = "Лейкоциты (WBC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-108
* group.element[=].display = "Barcha neurofil elementlar (Neu#)"
* group.element[=].target[+].code = #751-8
* group.element[=].target[=].display = "Абсолютное количество нейтрофилов (Neu#)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-109
* group.element[=].display = "Limfotsitlar soni (Lym#)"
* group.element[=].target[+].code = #731-0
* group.element[=].target[=].display = "Абсолютное количество лимфоцитов (Lym#)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-110
* group.element[=].display = "Monotsitlar soni (Mon#)"
* group.element[=].target[+].code = #742-7
* group.element[=].target[=].display = "Абсолютное количество моноцитов (Mon#)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-111
* group.element[=].display = "Eozinofillar soni (Eos#)"
* group.element[=].target[+].code = #711-2
* group.element[=].target[=].display = "Абсолютное количество эозинофилов (Eos#)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-112
* group.element[=].display = "Bazofillar soni (Bas#)"
* group.element[=].target[+].code = #704-7
* group.element[=].target[=].display = "Абсолютное количество базофилов (Bas#)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-113
* group.element[=].display = "Neytrofillar yetilish indeksi (Neu%)"
* group.element[=].target[+].code = #770-8
* group.element[=].target[=].display = "Нейтрофилы (Neu%)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-114
* group.element[=].display = "Limfotsitlar (Lym%)"
* group.element[=].target[+].code = #736-9
* group.element[=].target[=].display = "Лимфоциты (Lym%)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-115
* group.element[=].display = "Monositlar (Mon%)"
* group.element[=].target[+].code = #5905-5
* group.element[=].target[=].display = "Моноциты (Mon%)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-116
* group.element[=].display = "Eozinofillar (Eos%)"
* group.element[=].target[+].code = #713-8
* group.element[=].target[=].display = "Эозинофилы (Eos%)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-117
* group.element[=].display = "Bazofillar (Bas%)"
* group.element[=].target[+].code = #706-2
* group.element[=].target[=].display = "Базофилы (Bas%)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-118
* group.element[=].display = "Eritrotsitlar (RBC)"
* group.element[=].target[+].code = #789-8
* group.element[=].target[=].display = "Эритроциты (RBC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-119
* group.element[=].display = "Gemoglobin (HGB)"
* group.element[=].target[+].code = #718-7
* group.element[=].target[=].display = "Гемоглобин (HGB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-120
* group.element[=].display = "Gematokrit (HCT)"
* group.element[=].target[+].code = #4544-3
* group.element[=].target[=].display = "Гематокрит (HCT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-121
* group.element[=].display = "Eritrotsit o'rtacha hajmi (MCV)"
* group.element[=].target[+].code = #787-2
* group.element[=].target[=].display = "Средний объем эритроцита (MCV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-122
* group.element[=].display = "1 dona eritrotsitdagi gemoglobinning miqdori (MCH)"
* group.element[=].target[+].code = #785-6
* group.element[=].target[=].display = "Среднее содержание гемоглобина в эритроците (MCH)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-123
* group.element[=].display = "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
* group.element[=].target[+].code = #786-4
* group.element[=].target[=].display = "Средняя концентрация гемоглобина в эритроците (MCHC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-124
* group.element[=].display = "Eritrotsitlar anizotsitozi (RDW-CV)"
* group.element[=].target[+].code = #788-0
* group.element[=].target[=].display = "Ширина распределения эритроцитов по объему (RDW-CV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-125
* group.element[=].display = "Eritrotsit hajmi standart og‘ishi (RDW-SD)"
* group.element[=].target[+].code = #21000-5
* group.element[=].target[=].display = "Стандартное отклонение распределения эритроцитов по объему (RDW-SD)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-126
* group.element[=].display = "Trombotsitlar (PLT)"
* group.element[=].target[+].code = #777-3
* group.element[=].target[=].display = "Тромбоциты (PLT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-127
* group.element[=].display = "Trombotsitlar o'rtacha hajmi (MPV)"
* group.element[=].target[+].code = #32623-1
* group.element[=].target[=].display = "Средний объем тромбоцитов (MPV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-128
* group.element[=].display = "Trombotsitlar anizotsitozi (PDW)"
* group.element[=].target[+].code = #32207-3
* group.element[=].target[=].display = "Ширина распределения тромбоцитов (PDW)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-129
* group.element[=].display = "Trombokrit (PCT)"
* group.element[=].target[+].code = #28542-9
* group.element[=].target[=].display = "Тромбокрит (PCT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-130
* group.element[=].display = "Yirik trombotsitlar soni (P-LCC)"
* group.element[=].target[+].code = #49498-9
* group.element[=].target[=].display = "Количество крупных тромбоцитов (P-LCC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-131
* group.element[=].display = "Yirik trombotsitlar ulushi (P-LCR)"
* group.element[=].target[+].code = #48386-7
* group.element[=].target[=].display = "Доля крупных тромбоцитов (P-LCR)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-132
* group.element[=].display = "Eritrotsitning cho'kish tezligi (ЭЧТ)"
* group.element[=].target[+].code = #4537-7
* group.element[=].target[=].display = "Скорость оседания эритроцитов (СОЭ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-133
* group.element[=].display = "IMG#"
* group.element[=].target[+].code = #53115-2
* group.element[=].target[=].display = "IMG#"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-134
* group.element[=].display = "NRBC#"
* group.element[=].target[+].code = #771-6
* group.element[=].target[=].display = "NRBC#"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-135
* group.element[=].display = "NRBC%"
* group.element[=].target[+].code = #19048-8
* group.element[=].target[=].display = "NRBC%"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-136
* group.element[=].display = "Miyelositlar"
* group.element[=].target[+].code = #30446-9
* group.element[=].target[=].display = "Миелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-137
* group.element[=].display = "Metamiyelositlar"
* group.element[=].target[+].code = #40651-2
* group.element[=].target[=].display = "Метамиелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-138
* group.element[=].display = "Tayoqcha yadroli neytrofil"
* group.element[=].target[+].code = #26508-2
* group.element[=].target[=].display = "Tayoqcha yadroli neytrofil"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-139
* group.element[=].display = "Plazmatik hujayralar"
* group.element[=].target[+].code = #13047-6
* group.element[=].target[=].display = "Плазматические клетки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-140
* group.element[=].display = "Umumiy oqsil"
* group.element[=].target[+].code = #2885-2
* group.element[=].target[=].display = "Общий белок"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-141
* group.element[=].display = "Albumin"
* group.element[=].target[+].code = #1751-7
* group.element[=].target[=].display = "Альбумин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-142
* group.element[=].display = "Xolesterin (umumiy)"
* group.element[=].target[+].code = #2093-3
* group.element[=].target[=].display = "Холестерин (общий)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-143
* group.element[=].display = "Triglitseridlar"
* group.element[=].target[+].code = #2571-8
* group.element[=].target[=].display = "Триглицериды"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-144
* group.element[=].display = "Glyukoza"
* group.element[=].target[+].code = #2345-7
* group.element[=].target[=].display = "Глюкоза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-145
* group.element[=].display = "Mochevina"
* group.element[=].target[+].code = #3094-0
* group.element[=].target[=].display = "Мочевина"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-146
* group.element[=].display = "Kreatinin"
* group.element[=].target[+].code = #2160-0
* group.element[=].target[=].display = "Креатинин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-147
* group.element[=].display = "Umumiy bilirubin"
* group.element[=].target[+].code = #1975-2
* group.element[=].target[=].display = "Билирубин общий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-148
* group.element[=].display = "To‘g‘ri (bog‘langan) bilirubin"
* group.element[=].target[+].code = #1968-7
* group.element[=].target[=].display = "Билирубин прямой (связанный)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-149
* group.element[=].display = "Noto‘g‘ri (erkin) bilirubin"
* group.element[=].target[+].code = #1971-1
* group.element[=].target[=].display = "Билирубин непрямой (свободный)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-150
* group.element[=].display = "Alaninaminotransferaza (ALT)"
* group.element[=].target[+].code = #1742-6
* group.element[=].target[=].display = "Аланинаминотрансфераза (АЛТ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-151
* group.element[=].display = "Aspartataminotransferaza (AST)"
* group.element[=].target[+].code = #1920-8
* group.element[=].target[=].display = "Аспартатаминотрансфераза (АСТ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-152
* group.element[=].display = "Laktatdegidrogenaza (LDG)"
* group.element[=].target[+].code = #14804-9
* group.element[=].target[=].display = "Лактатдегидрогеназа (ЛДГ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-153
* group.element[=].display = "Gammaglutamiltransferaza (GGT)"
* group.element[=].target[+].code = #2324-2
* group.element[=].target[=].display = "Гаммаглутамилтрансфераза (ГГТ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-154
* group.element[=].display = "Alfa-amilaza"
* group.element[=].target[+].code = #1798-8
* group.element[=].target[=].display = "Альфа-амилаза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-155
* group.element[=].display = "Ishqoriy fosfataza (IF)"
* group.element[=].target[+].code = #6768-6
* group.element[=].target[=].display = "Щелочная фосфатаза (ИФ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-156
* group.element[=].display = "Kaliy"
* group.element[=].target[+].code = #2823-3
* group.element[=].target[=].display = "Калий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-157
* group.element[=].display = "Natriy"
* group.element[=].target[+].code = #2951-2
* group.element[=].target[=].display = "Натрий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-158
* group.element[=].display = "Kalsiy"
* group.element[=].target[+].code = #17861-6
* group.element[=].target[=].display = "Кальций"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-159
* group.element[=].display = "Temir"
* group.element[=].target[+].code = #2498-4
* group.element[=].target[=].display = "Железо"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-160
* group.element[=].display = "Fosfor"
* group.element[=].target[+].code = #2777-1
* group.element[=].target[=].display = "Фосфор"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-161
* group.element[=].display = "Xlor"
* group.element[=].target[+].code = #2075-0
* group.element[=].target[=].display = "Хлор"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-162
* group.element[=].display = "Magniy"
* group.element[=].target[+].code = #19123-9
* group.element[=].target[=].display = "Магний"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-163
* group.element[=].display = "Eritrotsitlardagi magniy"
* group.element[=].target[+].code = #2597-3
* group.element[=].target[=].display = "Магний в эритроцитах"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-164
* group.element[=].display = "T3"
* group.element[=].target[+].code = #3053-6
* group.element[=].target[=].display = "Т3"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-165
* group.element[=].display = "T4"
* group.element[=].target[+].code = #3026-2
* group.element[=].target[=].display = "Т4"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-166
* group.element[=].display = "TTG"
* group.element[=].target[+].code = #3016-3
* group.element[=].target[=].display = "ТТГ"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-167
* group.element[=].display = "Estradiol"
* group.element[=].target[+].code = #2243-4
* group.element[=].target[=].display = "Эстрадиол"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-168
* group.element[=].display = "Testosteron"
* group.element[=].target[+].code = #2986-8
* group.element[=].target[=].display = "Тестостерон"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-169
* group.element[=].display = "Kortizol"
* group.element[=].target[+].code = #2143-6
* group.element[=].target[=].display = "Кортизол"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-170
* group.element[=].display = "Prolaktin"
* group.element[=].target[+].code = #2842-3
* group.element[=].target[=].display = "Пролактин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-171
* group.element[=].display = "LG"
* group.element[=].target[+].code = #10501-5
* group.element[=].target[=].display = "ЛГ"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-172
* group.element[=].display = "FSG"
* group.element[=].target[+].code = #15067-2
* group.element[=].target[=].display = "ФСГ"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-173
* group.element[=].display = "Progesteron"
* group.element[=].target[+].code = #2839-9
* group.element[=].target[=].display = "Прогестерон"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-174
* group.element[=].display = "PSA"
* group.element[=].target[+].code = #2857-1
* group.element[=].target[=].display = "ПСА"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-175
* group.element[=].display = "Hajm"
* group.element[=].target[+].code = #3160-9
* group.element[=].target[=].display = "Объём"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-176
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #10587-4
* group.element[=].target[=].display = "Цвет"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-177
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #10588-2
* group.element[=].target[=].display = "Запах"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-178
* group.element[=].display = "Suyulish vaqti"
* group.element[=].target[+].code = #10590-8
* group.element[=].target[=].display = "Время разжижения"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-179
* group.element[=].display = "Kislotalilik (pH"
* group.element[=].target[+].code = #10589-0
* group.element[=].target[=].display = "Кислотность (pH)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-180
* group.element[=].display = "Qovushqoqlik"
* group.element[=].target[+].code = #10591-6
* group.element[=].target[=].display = "Вязкость"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-181
* group.element[=].display = "1 ml dagi spermatozoidlar soni"
* group.element[=].target[+].code = #9780-8
* group.element[=].target[=].display = "Количество сперматозоидов в 1 мл"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-182
* group.element[=].display = "Umumiy hajmdagi spermatozoidlar soni"
* group.element[=].target[+].code = #72514-3
* group.element[=].target[=].display = "Количество сперматозоидов в общем объёме"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-183
* group.element[=].display = "Harakatchanlik - faol"
* group.element[=].target[+].code = #10610-4
* group.element[=].target[=].display = "Подвижность — активные"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-184
* group.element[=].display = "Harakatchanlik - sust"
* group.element[=].target[+].code = #10611-2
* group.element[=].target[=].display = "Подвижность — вялые"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-185
* group.element[=].display = "Harakatchanlik - harakatsiz"
* group.element[=].target[+].code = #10612-0
* group.element[=].target[=].display = "Подвижность — неподвижные"
* group.element[=].target[=].relationship = #equivalent

//changed relationship
* group.element[+].code = #lab-pan-186
* group.element[=].display = "Tirik spermatozoidlar"
* group.element[=].target[+].code = #10613-8
* group.element[=].target[=].display = "Живые сперматозоиды"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-187
* group.element[=].display = "Patologik shakldagi sermatozoidlar"
* group.element[=].target[+].code = #10613-8
* group.element[=].target[=].display = "Патологические формы сперматозоидов"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-188
* group.element[=].display = "Spermatogenez epiteliysi"
* group.element[=].target[+].code = #12452-9
* group.element[=].target[=].display = "Эпителий сперматогенеза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-189
* group.element[=].display = "Leykositlar"
* group.element[=].target[+].code = #10592-4
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-190
* group.element[=].display = "Letsitin donachalari"
* group.element[=].target[+].code = #98027-6
* group.element[=].target[=].display = "Лецитиновые зёрна"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-191
* group.element[=].display = "Agglyutinatsiya"
* group.element[=].target[+].code = #10615-3
* group.element[=].target[=].display = "Агглютинация"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-192
* group.element[=].display = "Fruktoza"
* group.element[=].target[+].code = #10593-2
* group.element[=].target[=].display = "Фруктоза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-193
* group.element[=].display = "Limon kislotasi"
* group.element[=].target[+].code = #10594-0
* group.element[=].target[=].display = "Лимонная кислота"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-194
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #38200-2
* group.element[=].target[=].display = "Количество"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-195
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #96723-2
* group.element[=].target[=].display = "Запах"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-196
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #11526-1
* group.element[=].target[=].display = "Цвет"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-197
* group.element[=].display = "Xususiyati (ta'rifi)"
* group.element[=].target[+].code = #11525-3
* group.element[=].target[=].display = "Характер (описание)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-198
* group.element[=].display = "Aralashmalar"
* group.element[=].target[+].code = #11527-9
* group.element[=].target[=].display = "Примеси"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-199
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #33455-7
* group.element[=].target[=].display = "Консистенция"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-200
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #12248-1
* group.element[=].target[=].display = "Эпителий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-201
* group.element[=].display = "Alveolyar makrofaglar"
* group.element[=].target[+].code = #96724-0
* group.element[=].target[=].display = "Альвеолярные макрофаги"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-202
* group.element[=].display = "Leykositlar"
* group.element[=].target[+].code = #12225-9
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-203
* group.element[=].display = "Eritrositalr"
* group.element[=].target[+].code = #12251-5
* group.element[=].target[=].display = "Эритроциты"
* group.element[=].target[=].relationship = #equivalent

// changed code
* group.element[+].code = #lab-pan-204
* group.element[=].display = "Tolalar"
* group.element[=].target[+].code = #96728-1
* group.element[=].target[=].display = "Волокна"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-205
* group.element[=].display = "Elastik tolalar"
* group.element[=].target[+].code = #96728-1
* group.element[=].target[=].display = "Эластические волокна"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-206
* group.element[=].display = "Kalsiylangan (toshga aylangan zarrachalar)"
* group.element[=].target[+].code = #98028-4
* group.element[=].target[=].display = "Обызвествлённые (окаменевшие частицы)"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-207
* group.element[=].display = "Tuberkulyoz mikrobakteriyalari"
* group.element[=].target[+].code = #11545-1
* group.element[=].target[=].display = "Микобактерии туберкулёза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-208
* group.element[=].display = "Eozinofillar"
* group.element[=].target[+].code = #30381-8
* group.element[=].target[=].display = "Эозинофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-209
* group.element[=].display = "Zamburug'lar"
* group.element[=].target[+].code = #55304-0
* group.element[=].target[=].display = "Грибы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-210
* group.element[=].display = "Boshqa flora"
* group.element[=].target[+].code = #6460-0
* group.element[=].target[=].display = "Другая флора"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-211
* group.element[=].display = "Kurshman spirallari"
* group.element[=].target[+].code = #96731-5
* group.element[=].target[=].display = "Спирали Куршмана"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-212
* group.element[=].display = "Sharko-Leyden kristallari"
* group.element[=].target[+].code = #11102-1
* group.element[=].target[=].display = "Шарко-Лейден кристаллы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-213
* group.element[=].display = "Atipik belgili hujayralar"
* group.element[=].target[+].code = #15376-7
* group.element[=].target[=].display = "Клетки с атипичными признаками"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-214
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #72278-5
* group.element[=].target[=].display = "Количество"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-215
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #96715-8
* group.element[=].target[=].display = "Цвет"
* group.element[=].target[=].relationship = #equivalent

//changed code
* group.element[+].code = #lab-pan-216
* group.element[=].display = "Shaffofligi"
* group.element[=].target[+].code = #9335-1
* group.element[=].target[=].display = "Прозрачность"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-217
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #9335-1
* group.element[=].target[=].display = "Консистенция"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-218
* group.element[=].display = "Leykositlar"
* group.element[=].target[+].code = #96718-2
* group.element[=].target[=].display = "Лейкоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-219
* group.element[=].display = "Eritrositlar"
* group.element[=].target[+].code = #72338-7
* group.element[=].target[=].display = "Эритроциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-220
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #96720-8
* group.element[=].target[=].display = "Эпителий"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-221
* group.element[=].display = "Makrofaglar"
* group.element[=].target[+].code = #96721-6
* group.element[=].target[=].display = "Макрофаги"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-222
* group.element[=].display = "Letsitin donachalari"
* group.element[=].target[+].code = #72339-5
* group.element[=].target[=].display = "Лецитиновые зёрна"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-223
* group.element[=].display = "Amiloid tanachalar"
* group.element[=].target[+].code = #72341-1
* group.element[=].target[=].display = "Амилоидные тельца"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-224
* group.element[=].display = "Spermatozoidlar"
* group.element[=].target[+].code = #9780-8
* group.element[=].target[=].display = "Сперматозоиды"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-225
* group.element[=].display = "Trixomonadalar"
* group.element[=].target[+].code = #72277-7
* group.element[=].target[=].display = "Трихомонады"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-226
* group.element[=].display = "Gonokokklar"
* group.element[=].target[+].code = #691-6
* group.element[=].target[=].display = "Гонококки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-227
* group.element[=].display = "Boshqa flora"
* group.element[=].target[+].code = #72340-3
* group.element[=].target[=].display = "Другая флора"
* group.element[=].target[=].relationship = #equivalent
/*
* group.element[+].code = #lab-pan-228
* group.element[=].display = "Atipik belgili hujayralar"
* group.element[=].target[+].code = #19147-6
* group.element[=].target[=].display = "Клетки с атипичными признаками"
* group.element[=].target[=].relationship = #not-related-to
*/
* group.element[+].code = #lab-pan-229
* group.element[=].display = "Xlamidiya (IgG antitanachalar)"
* group.element[=].target[+].code = #45135-1
* group.element[=].target[=].display = "Хламидия (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-230
* group.element[=].display = "Toksopazmoz (IgG antitanachalar)"
* group.element[=].target[+].code = #40677-7
* group.element[=].target[=].display = "Токсоплазмоз (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-231
* group.element[=].display = "Sitomegalovirus (IgG antitanachalar)"
* group.element[=].target[+].code = #13949-3
* group.element[=].target[=].display = "Цитомегаловирус (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-232
* group.element[=].display = "Oddiy gerpes virusi (IgG antitanachalar)"
* group.element[=].target[+].code = #48346-1
* group.element[=].target[=].display = "Вирус простого герпеса (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-233
* group.element[=].display = "Ureaplazma"
* group.element[=].target[+].code = #51988-4
* group.element[=].target[=].display = "Уреаплазма"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-253
* group.element[=].display = "C porsiya - mikroskopiya"
* group.element[=].target[+].code = #96713-3
* group.element[=].target[=].display = "Порция C – микроскопия"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-254
* group.element[=].display = "Billurbin"
* group.element[=].target[+].code = #1974-5
* group.element[=].target[=].display = "Билирубин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-255
* group.element[=].display = "O't kislotalari"
* group.element[=].target[+].code = #14628-2
* group.element[=].target[=].display = "Желчные кислоты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-256
* group.element[=].display = "Xolesterin"
* group.element[=].target[+].code = #2093-3
* group.element[=].target[=].display = "Холестерин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-259
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #17607-3
* group.element[=].target[=].display = "Количество"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-260
* group.element[=].display = "Sentrefugadan keyingi rangi"
* group.element[=].target[+].code = #10335-8
* group.element[=].target[=].display = "Цвет после центрифугирования"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-261
* group.element[=].display = "Sentrefugagacha ksantoxromiya"
* group.element[=].target[+].code = #13532-7
* group.element[=].target[=].display = "Ксантохромия до центрифугирования"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-262
* group.element[=].display = "Sentrefugadan keyingi shaffofligi"
* group.element[=].target[+].code = #49736-2
* group.element[=].target[=].display = "Прозрачность после центрифугирования"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-263
* group.element[=].display = "Oqsil"
* group.element[=].target[+].code = #2880-3
* group.element[=].target[=].display = "Белок"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-264
* group.element[=].display = "Pandi reaksiyasi"
* group.element[=].target[+].code = #2879-5
* group.element[=].target[=].display = "Реакция Панди"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-265
* group.element[=].display = "Limfositlar"
* group.element[=].target[+].code = #10328-3
* group.element[=].target[=].display = "Лимфоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-266
* group.element[=].display = "Eozinoffillar"
* group.element[=].target[+].code = #34957-1
* group.element[=].target[=].display = "Эозинофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-267
* group.element[=].display = "Neytrofillar"
* group.element[=].target[+].code = #755-9
* group.element[=].target[=].display = "Нейтрофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-268
* group.element[=].display = "Makrofaglar"
* group.element[=].target[+].code = #32191-9
* group.element[=].target[=].display = "Макрофаги"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-269
* group.element[=].display = "O'zgargan hujayralar"
* group.element[=].target[+].code = #30414-7
* group.element[=].target[=].display = "Изменённые клетки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-270
* group.element[=].display = "Poliblastlar"
* group.element[=].target[+].code = #55792-6
* group.element[=].target[=].display = "Полибласты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-271
* group.element[=].display = "Plazmatik hujayralar"
* group.element[=].target[+].code = #40541-5
* group.element[=].target[=].display = "Плазматические клетки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-272
* group.element[=].display = "Araxnoidal endoteliy hujayralari"
* group.element[=].target[+].code = #26470-5 
* group.element[=].target[=].display = "Клетки арахноидального эндотелия"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-273
* group.element[=].display = "Ependima hujayralari"
* group.element[=].target[+].code = #99060-6
* group.element[=].target[=].display = "Клетки эпендимы"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-274
* group.element[=].display = "Donador sharlar"
* group.element[=].target[+].code = #70034-4
* group.element[=].target[=].display = "Зернистые шары"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-275
* group.element[=].display = "Zamburug'lar"
* group.element[=].target[+].code = #569-4
* group.element[=].target[=].display = "Грибы"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-276
* group.element[=].display = "Eritrositlar"
* group.element[=].target[+].code = #792-2
* group.element[=].target[=].display = "Эритроциты"
* group.element[=].target[=].relationship = #equivalent

// changed code
* group.element[+].code = #lab-pan-277
* group.element[=].display = "Miyelokariotsitlar soni"
* group.element[=].target[+].code = #55792-6
* group.element[=].target[=].display = "Количество миелокариоцитов"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-278
* group.element[=].display = "Megakariotsitlar soni"
* group.element[=].target[+].code = #40688-4
* group.element[=].target[=].display = "Количество мегакариоцитов"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-279
* group.element[=].display = "Yetilmagan blastlar"
* group.element[=].target[+].code = #11150-0
* group.element[=].target[=].display = "Незрелые бласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-280
* group.element[=].display = "Miyeloblastlar"
* group.element[=].target[+].code = #11113-8
* group.element[=].target[=].display = "Миелобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-281
* group.element[=].display = "Promiyelotsitlar"
* group.element[=].target[+].code = #11120-3
* group.element[=].target[=].display = "Промиелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-282
* group.element[=].display = "Miyelotsitlar"
* group.element[=].target[+].code = #11114-6
* group.element[=].target[=].display = "Миелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-283
* group.element[=].display = "Metamiyelotsitlar"
* group.element[=].target[+].code = #11111-2
* group.element[=].target[=].display = "Метамиелоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-284
* group.element[=].display = "Tayoqchayadrolilar"
* group.element[=].target[+].code = #11103-9
* group.element[=].target[=].display = "Палочкоядерные нейтрофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-285
* group.element[=].display = "Segmentyadrolilar"
* group.element[=].target[+].code = #56960-8
* group.element[=].target[=].display = "Сегментоядерные нейтрофилы"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-294
* group.element[=].display = "Limfoblastlar"
* group.element[=].target[+].code = #50724-4
* group.element[=].target[=].display = "Лимфобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-295
* group.element[=].display = "Prolimfotsitlar"
* group.element[=].target[+].code = #11121-1
* group.element[=].target[=].display = "Пролимфоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-296
* group.element[=].display = "Limfotsitlar"
* group.element[=].target[+].code = #11108-8
* group.element[=].target[=].display = "Лимфоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-297
* group.element[=].display = "Monoblastlar"
* group.element[=].target[+].code = #50725-1
* group.element[=].target[=].display = "Монобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-298
* group.element[=].display = "Promonotsitlar"
* group.element[=].target[+].code = #11122-9
* group.element[=].target[=].display = "Промоноциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-299
* group.element[=].display = "Monotsitlar"
* group.element[=].target[+].code = #11112-0
* group.element[=].target[=].display = "Моноциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-300
* group.element[=].display = "Leyko-eritroblastik nisbat"
* group.element[=].target[+].code = #11138-5
* group.element[=].target[=].display = "Лейко-эритробластическое соотношение"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-301
* group.element[=].display = "Neytrofillar yetilish indeksi"
* group.element[=].target[+].code = #11128-6
* group.element[=].target[=].display = "Индекс созревания нейтрофилов"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #lab-pan-302
* group.element[=].display = "Proeritroblastlar"
* group.element[=].target[+].code = #11124-5
* group.element[=].target[=].display = "Проэритробласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-303
* group.element[=].display = "Bazofil eritroblastlar"
* group.element[=].target[+].code = #11105-4
* group.element[=].target[=].display = "Базофильные эритробласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-304
* group.element[=].display = "Polixromafil eritroblastlar"
* group.element[=].target[+].code = #11119-5
* group.element[=].target[=].display = "Полихроматофильные эритробласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-305
* group.element[=].display = "Oksifil eritroblastlar"
* group.element[=].target[+].code = #98127-4
* group.element[=].target[=].display = "Оксифильные эритробласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-306
* group.element[=].display = "Polixromatofil normoblastlar"
* group.element[=].target[+].code = #11119-5
* group.element[=].target[=].display = "Полихроматофильные нормобласты"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-pan-307
* group.element[=].display = "Oksifil normoblastlar"
* group.element[=].target[+].code = #11116-1
* group.element[=].target[=].display = "Оксифильные нормобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-308
* group.element[=].display = "Promegaloblastlar"
* group.element[=].target[+].code = #52127-8
* group.element[=].target[=].display = "Промегалобласты"
* group.element[=].target[=].relationship = #equivalent

// changed code and relationship
* group.element[+].code = #lab-pan-309
* group.element[=].display = "Bazofil megaloblastlar"
* group.element[=].target[+].code = #11104-7
* group.element[=].target[=].display = "Базофильные мегалобласты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-310
* group.element[=].display = "Polixromatofil megaloblastlar"
* group.element[=].target[+].code = #11119-5
* group.element[=].target[=].display = "Полихроматофильные мегалобласты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-311
* group.element[=].display = "Oksifil megaloblastlar"
* group.element[=].target[+].code = #11116-1
* group.element[=].target[=].display = "Оксифильные мегалобласты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-312
* group.element[=].display = "Megakarioblastlar"
* group.element[=].target[+].code = #98018-5
* group.element[=].target[=].display = "Мегакариобласты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-313
* group.element[=].display = "Promegakariotsitlar"
* group.element[=].target[+].code = #98019-3
* group.element[=].target[=].display = "Промегакариоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-314
* group.element[=].display = "Megokariotsitlar"
* group.element[=].target[+].code = #11110-4
* group.element[=].target[=].display = "Мегакариоциты"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-315
* group.element[=].display = "Retikulyar hujayralar"
* group.element[=].target[+].code = #50726-9
* group.element[=].target[=].display = "Ретикулярные клетки"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-316
* group.element[=].display = "Plazmoblastlar"
* group.element[=].target[+].code = #11117-9
* group.element[=].target[=].display = "Плазмобласты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-317
* group.element[=].display = "Proplazmotsitlar"
* group.element[=].target[+].code = #11117-9
* group.element[=].target[=].display = "Проплазмоциты"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-318
* group.element[=].display = "Plazmotik xujayralar"
* group.element[=].target[+].code = #11118-7
* group.element[=].target[=].display = "Плазматические клетки"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-319
* group.element[=].display = "Xujayralar mitozi granulopoez"
* group.element[=].target[+].code = #11114-6
* group.element[=].target[=].display = "Митоз клеток гранулопоэза"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-320
* group.element[=].display = "Eritropoez hujayra mitozi"
* group.element[=].target[+].code = #74231-2
* group.element[=].target[=].display = "Митоз клеток эритропоэза"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-321
* group.element[=].display = "Eritroblast va normoblastlar sitoplazmasining yetilish indeksi"
* group.element[=].target[+].code = #47286-0
* group.element[=].target[=].display = "Индекс зрелости цитоплазмы эритробластов и нормобластов"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-pan-322
* group.element[=].display = "S-reyeaktiv oqsil"
* group.element[=].target[+].code = #11039-5
* group.element[=].target[=].display = "С-реактивный белок (CRP)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-323
* group.element[=].display = "Revmotoid omili"
* group.element[=].target[+].code = #33910-1
* group.element[=].target[=].display = "Ревматоидный фактор (RF)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-324
* group.element[=].display = "Antistriptolizin-O"
* group.element[=].target[+].code = #9788-1
* group.element[=].target[=].display = "Антистрептолизин-O (ASO)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-360
* group.element[=].display = "Umumiy xolesterin"
* group.element[=].target[+].code = #2093-3
* group.element[=].target[=].display = "Общий холестерин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-361
* group.element[=].display = "Triglitserid"
* group.element[=].target[+].code = #2571-8
* group.element[=].target[=].display = "Триглицериды"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-362
* group.element[=].display = "XS-LPVP"
* group.element[=].target[+].code = #13457-7
* group.element[=].target[=].display = "Холестерин ЛПВП (липопротеины высокой плотности)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-363
* group.element[=].display = "XS-LPNP"
* group.element[=].target[+].code = #2085-9
* group.element[=].target[=].display = "Холестерин ЛПНП (липопротеины низкой плотности)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-364
* group.element[=].display = "XS-LPONP"
* group.element[=].target[+].code = #13458-5
* group.element[=].target[=].display = "Холестерин ЛПОНП (липопротеины очень низкой плотности)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-365
* group.element[=].display = "Xolesterin koeffisenti"
* group.element[=].target[+].code = #9830-1
* group.element[=].target[=].display = "Коэффициент атерогенности (коэффициент холестерина)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-366
* group.element[=].display = "Leykositlar"
* group.element[=].target[+].code = #20408-1
* group.element[=].target[=].display = "Лейкоциты в моче (тест-полоска)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-367
* group.element[=].display = "Eritrositlar"
* group.element[=].target[+].code = #20409-9
* group.element[=].target[=].display = "Эритроциты в моче (тест-полоска)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-368
* group.element[=].display = "Silindrlar"
* group.element[=].target[+].code = #105894-0
* group.element[=].target[=].display = "Цилиндры в осадке мочи"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-369
* group.element[=].display = "Cytomegalovirus Ig G"
* group.element[=].target[+].code = #13949-3
* group.element[=].target[=].display = "Цитомегаловирус IgG"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-370
* group.element[=].display = "Gerpes simplex virus1/2 Ig G"
* group.element[=].target[+].code = #27948-9
* group.element[=].target[=].display = "Вирус простого герпеса 1/2 типа IgG"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-371
* group.element[=].display = "Toxoplasma gondii IgG"
* group.element[=].target[+].code = #22580-5
* group.element[=].target[=].display = "Toxoplasma gondil Ig G"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-372
* group.element[=].display = "Chlamydia pneumoniae IgG"
* group.element[=].target[+].code = #44981-9
* group.element[=].target[=].display = "Chlamedia pneumonia Ig G"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-373
* group.element[=].display = "Mycoplasma hominis IgG"
* group.element[=].target[+].code = #17301-3
* group.element[=].target[=].display = "Mycoplasma hominis Ig G"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-374
* group.element[=].display = "Ureaplasma urealyticum IgG"
* group.element[=].target[+].code = #17852-5
* group.element[=].target[=].display = "Ureaplasma urealyticum Ig G"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-375
* group.element[=].display = "Immunoreaktiv tripsin (IRT)"
* group.element[=].target[+].code = #48633-2
* group.element[=].target[=].display = "Иммунореактивный трипсин (IRT)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-376
* group.element[=].display = "Fenilalanin (PA)"
* group.element[=].target[+].code = #29573-3
* group.element[=].target[=].display = "Фенилаланин (PA)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-377
* group.element[=].display = "Tireotrop gormon (TSH)"
* group.element[=].target[+].code = #3016-3
* group.element[=].target[=].display = "Тиреотропный гормон (TSH)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-378
* group.element[=].display = "SA 125"
* group.element[=].target[+].code = #10334-1
* group.element[=].target[=].display = "CA 125"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-379
* group.element[=].display = "HВsAg quant"
* group.element[=].target[+].code = #5195-3
* group.element[=].target[=].display = "HBsAg количественный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-380
* group.element[=].display = "Anti-HCV"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Антитела к вирусу гепатита C (Anti-HCV)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-381
* group.element[=].display = "Insulin"
* group.element[=].target[+].code = #20448-7
* group.element[=].target[=].display = "Инсулин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-382
* group.element[=].display = "Insulinga o'xshash o'sish omili (IGF-1)"
* group.element[=].target[+].code = #2484-4
* group.element[=].target[=].display = "Инсулиноподобный фактор роста (IGF-1)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-383
* group.element[=].display = "Somatotrop gormon (CH)"
* group.element[=].target[+].code = #2963-7
* group.element[=].target[=].display = "Соматотропный гормон (СТГ)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-384
* group.element[=].display = "Foliyevaya kislota (FA)"
* group.element[=].target[+].code = #2284-8
* group.element[=].target[=].display = "Фолиевая кислота (FA)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-385
* group.element[=].display = "25-ON Vitamin D"
* group.element[=].target[+].code = #62292-8
* group.element[=].target[=].display = "25-ОН витамин D"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-386
* group.element[=].display = "Alfa-fetoprotein (CAFP)"
* group.element[=].target[+].code = #1834-1
* group.element[=].target[=].display = "Альфа-фетопротеин (AFP)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-387
* group.element[=].display = "Mioglobin"
* group.element[=].target[+].code = #2639-3
* group.element[=].target[=].display = "Миоглобин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-388
* group.element[=].display = "Vitamin V 12"
* group.element[=].target[+].code = #2132-9
* group.element[=].target[=].display = "Витамин B12"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-389
* group.element[=].display = "Gomoctictein"
* group.element[=].target[+].code = #13965-9
* group.element[=].target[=].display = "Гомоцистеин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-390
* group.element[=].display = "Ferritin"
* group.element[=].target[+].code = #2276-4
* group.element[=].target[=].display = "Ферритин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-391
* group.element[=].display = "Кreatinkinaza -МВ"
* group.element[=].target[+].code = #13969-1
* group.element[=].target[=].display = "Креатинкиназа-МВ (CK-MB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-392
* group.element[=].display = "Troponin I"
* group.element[=].target[+].code = #10839-9
* group.element[=].target[=].display = "Тропонин I"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-393
* group.element[=].display = "Prokalsitonin"
* group.element[=].target[+].code = #33959-8
* group.element[=].target[=].display = "Прокальцитонин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-394
* group.element[=].display = "Kortizol"
* group.element[=].target[+].code = #2143-6
* group.element[=].target[=].display = "Кортизол"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-395
* group.element[=].display = "HIV Ab/Ag Combi"
* group.element[=].target[+].code = #56888-1
* group.element[=].target[=].display = "Комбинированный тест на ВИЧ (HIV Ag/Ab Combo)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-396
* group.element[=].display = "ALA(alanine)"
* group.element[=].target[+].code = #20636-7
* group.element[=].target[=].display = "ALA (аланин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-397
* group.element[=].display = "ARG (arginine)"
* group.element[=].target[+].code = #20637-5
* group.element[=].target[=].display = "ARG (аргинин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-398
* group.element[=].display = "CIT (sitruliv)"
* group.element[=].target[+].code = #20640-9
* group.element[=].target[=].display = "CIT (цитруллин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-399
* group.element[=].display = "GLY (glisin)"
* group.element[=].target[+].code = #20644-1
* group.element[=].target[=].display = "GLY (глицин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-400
* group.element[=].display = "LEU (leysin)"
* group.element[=].target[+].code = #20649-0
* group.element[=].target[=].display = "LEU (лейцин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-401
* group.element[=].display = "MET(metionin)"
* group.element[=].target[+].code = #47700-0
* group.element[=].target[=].display = "MET (метионин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-402
* group.element[=].display = "ORN (оrnitin)"
* group.element[=].target[+].code = #20652-4
* group.element[=].target[=].display = "ORN (орнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-403
* group.element[=].display = "PHE (fenilalanin)"
* group.element[=].target[+].code = #14875-9
* group.element[=].target[=].display = "PHE (фенилаланин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-404
* group.element[=].display = "PRO (prolin)"
* group.element[=].target[+].code = #47732-3
* group.element[=].target[=].display = "PRO (пролин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-405
* group.element[=].display = "SA (suksinilasiton)"
* group.element[=].target[+].code = #53231-7
* group.element[=].target[=].display = "SA (сукцинилацетон)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-406
* group.element[=].display = "TYR (tirozin)"
* group.element[=].target[+].code = #35571-9
* group.element[=].target[=].display = "TYR (тирозин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-407
* group.element[=].display = "VAL (valin)"
* group.element[=].target[+].code = #47799-2
* group.element[=].target[=].display = "VAL (валин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-408
* group.element[=].display = "CO (erkin karnitin)"
* group.element[=].target[+].code = #38481-8
* group.element[=].target[=].display = "CO (свободный карнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-409
* group.element[=].display = "C2 (asetilkarnitil)"
* group.element[=].target[+].code = #50157-7
* group.element[=].target[=].display = "C2 (ацетилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-410
* group.element[=].display = "C3 (propionilkornitin)"
* group.element[=].target[+].code = #53160-8    
* group.element[=].target[=].display = "C3 (пропионилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-411
* group.element[=].display = "C4 (butirilkornitin)"
* group.element[=].target[+].code = #53065-9
* group.element[=].target[=].display = "C4 (бутирилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-412
* group.element[=].display = "С4ОН/C3DC"
* group.element[=].target[+].code = #67708-8
* group.element[=].target[=].display = "C4OH/C3DC (гидроксибутирилкарнитин/малонилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-413
* group.element[=].display = "С5 (izovalerilkornitin)"
* group.element[=].target[+].code = #42920-9
* group.element[=].target[=].display = "C5 (изовалерилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-414
* group.element[=].display = "С5:1(tiglilkornitin)"
* group.element[=].target[+].code = #53170-7
* group.element[=].target[=].display = "C5:1 (тиглилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-415
* group.element[=].display = "С5DC\\C6OH"
* group.element[=].target[+].code = #67710-4
* group.element[=].target[=].display = "C5DC/C6OH (глутарилкарнитин/гидроксигексаноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-416
* group.element[=].display = "C5OH\\C4DC"
* group.element[=].target[+].code = #53181-4
* group.element[=].target[=].display = "C5OH/C4DC (гидроксиизовалерилкарнитин/сукцинилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-417
* group.element[=].display = "C6 (teksanoilkornitin)"
* group.element[=].target[+].code = #45211-0
* group.element[=].target[=].display = "C6 (гексаноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-418
* group.element[=].display = "C6DC (teksanoilkornitin)"
* group.element[=].target[+].code = #74628-9
* group.element[=].target[=].display = "C6DC (адипоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-419
* group.element[=].display = "C8 (оktanoilkornitin)"
* group.element[=].target[+].code = #53175-6
* group.element[=].target[=].display = "C8 (октаноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-420
* group.element[=].display = "C8: 1(oktenoilkornitin)"
* group.element[=].target[+].code = #53174-9
* group.element[=].target[=].display = "C8:1 (октеноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-421
* group.element[=].display = "C10 (dikanoilkornitin)"
* group.element[=].target[+].code = #45197-1
* group.element[=].target[=].display = "C10 (деканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-422
* group.element[=].display = "C10:1 (desinoilkornitin)"
* group.element[=].target[+].code = #45198-9
* group.element[=].target[=].display = "C10:1 (деценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-423
* group.element[=].display = "C10:2 (dekadienoilkornitin)"
* group.element[=].target[+].code = #53180-6
* group.element[=].target[=].display = "C10:2 (декадиеноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-424
* group.element[=].display = "C12 (dodekanoilkornitin)"
* group.element[=].target[+].code = #45199-7
* group.element[=].target[=].display = "C12 (додеканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-425
* group.element[=].display = "C12:1 (deodesenoikornitin)"
* group.element[=].target[+].code = #45200-3
* group.element[=].target[=].display = "C12:1 (додеценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-427
* group.element[=].display = "C14:1 (tetradesenoilkornitin)"
* group.element[=].target[+].code = #53191-3
* group.element[=].target[=].display = "C14:1 (тетрадценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-428
* group.element[=].display = "C14:2 (tetradekadienoilkornitin)"
* group.element[=].target[+].code = #53190-5
* group.element[=].target[=].display = "C14:2 (тетрадцадиеноилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-429
* group.element[=].display = "C14OH (3-gidroksi- tetradekadienoilkornitin)"
* group.element[=].target[+].code = #50281-5
* group.element[=].target[=].display = "C14OH (3-гидрокситетрадеканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-430
* group.element[=].display = "С16 (Palmitoylcarnitine)"
* group.element[=].target[+].code = #41040-7
* group.element[=].target[=].display = "С16 (пальмитоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-432
* group.element[=].display = "C16:1OH (3-gidroksi-gексadetsenoil karnitin)"
* group.element[=].target[+].code = #50121-3
* group.element[=].target[=].display = "С16:1ОН (3-гидрокси-гексадеценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-433
* group.element[=].display = "C16OH (3-gidroksi-gексadekanoil karnitin)"
* group.element[=].target[+].code = #53173-1
* group.element[=].target[=].display = "C16OH (3-гидрокси-гекадеканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-434
* group.element[=].display = "C18 (stearoil karnitin)"
* group.element[=].target[+].code = #53241-6
* group.element[=].target[=].display = "C18 (октадеканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-435
* group.element[=].display = "C18:1 (oktadetsenoil karnitin)"
* group.element[=].target[+].code = #53202-8
* group.element[=].target[=].display = "C18:1 (октадеценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-436
* group.element[=].display = "C18:1OH (3-gidroksi-oktadetsenoil karnitin)"
* group.element[=].target[+].code = #50113-0
* group.element[=].target[=].display = "C18:1OH (3-гидрокси-октадеценоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-437
* group.element[=].display = "C18:2 (linoleil karnitin)"
* group.element[=].target[+].code = #45217-7
* group.element[=].target[=].display = "C18:2 (линолеилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-438
* group.element[=].display = "C18OH (3-gidroksi-oktadekanoil karnitin)"
* group.element[=].target[+].code = #50132-0
* group.element[=].target[=].display = "C18OH (3-гидрокси-октадеканоилкарнитин)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-W
* group.element[=].display = "Vasserman reaksiyasiga qon tahlili va boshqalar (Zaxm uchun serologik reaksiyalar paneli)"
* group.element[=].target[+].code = #24110-9
* group.element[=].target[=].display = "Анализ крови на реакцию Вассермана и другие (панель серологических реакций на сифилис)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-439
* group.element[=].display = "Vasserman bo'yicha natija"
* group.element[=].target[+].code = #5292-8
* group.element[=].target[=].display = "Результат по Вассерману"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-440
* group.element[=].display = "Kan natija"
* group.element[=].target[+].code = #5290-2
* group.element[=].target[=].display = "Результат по Кану"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-441
* group.element[=].display = "Zaks vitebskiy natija"
* group.element[=].target[+].code = #5290-2
* group.element[=].target[=].display = "Результат по Заксу-Витебскому"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-442
* group.element[=].display = "Zaks georgiy natija"
* group.element[=].target[+].code = #5290-2
* group.element[=].target[=].display = "Результат по Заксу-Георгию"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-443
* group.element[=].display = "Meynik natija"
* group.element[=].target[+].code = #5290-2
* group.element[=].target[=].display = "Результат по Мейнику"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-444
* group.element[=].display = "Cytomegalovirus Ig G"
* group.element[=].target[+].code = #10391-1
* group.element[=].target[=].display = "Цитомегаловирус (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-445
* group.element[=].display = "Gerpes simplex virus1/2 Ig G"
* group.element[=].target[+].code = #31411-2
* group.element[=].target[=].display = "Вирус простого герпеса 1/2 типа (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-446
* group.element[=].display = "Toxoplasma gondil Ig G"
* group.element[=].target[+].code = #22580-5
* group.element[=].target[=].display = "Токсоплазма (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-447
* group.element[=].display = "Chlamedia pneumonia Ig G"
* group.element[=].target[+].code = #31302-3
* group.element[=].target[=].display = "Хламидия пневмонии (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-448
* group.element[=].display = "Mycoplasma hominis Ig G"
* group.element[=].target[+].code = #46198-8
* group.element[=].target[=].display = "Микоплазма хоминис (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-449
* group.element[=].display = "Ureaplasma urealyticum Ig G"
* group.element[=].target[+].code = #17852-5
* group.element[=].target[=].display = "Уреаплазма уреалитикум (антитела IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-450
* group.element[=].display = "Anti -dsDNA Ig G"
* group.element[=].target[+].code = #63379-2
* group.element[=].target[=].display = "Антитела к двуспиральной ДНК (IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-451
* group.element[=].display = "Kollogen  C IV"
* group.element[=].target[+].code = #48586-2
* group.element[=].target[=].display = "Коллаген IV типа"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-452
* group.element[=].display = "Gialuronovaya kislota (NA)"
* group.element[=].target[+].code = #10474-5
* group.element[=].target[=].display = "Гиалуроновая кислота"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-453
* group.element[=].display = "Foliyevaya kislota (FA)"
* group.element[=].target[+].code = #2282-2
* group.element[=].target[=].display = "Фолиевая кислота"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-454
* group.element[=].display = "Immunoglobulin Ig A"
* group.element[=].target[+].code = #44389-5
* group.element[=].target[=].display = "Иммуноглобулин A (IgA)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-455
* group.element[=].display = "Immunoglobulin Ig M"
* group.element[=].target[+].code = #17009-2
* group.element[=].target[=].display = "Иммуноглобулин M (IgM)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-456
* group.element[=].display = "Immunoglobulin Ig G"
* group.element[=].target[+].code = #17007-6
* group.element[=].target[=].display = "Иммуноглобулин G (IgG)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-457
* group.element[=].display = "Anti-SSP (Anti-CCP)"
* group.element[=].target[+].code = #42898-7
* group.element[=].target[=].display = "Антитела к циклическому цитруллинированному пептиду (Anti-CCP)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-458
* group.element[=].display = "25-ON Vitamin D"
* group.element[=].target[+].code = #62292-8
* group.element[=].target[=].display = "25-ОН витамин D"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-459
* group.element[=].display = "Alfa-fetoprotein (CAFP)"
* group.element[=].target[+].code = #31993-9
* group.element[=].target[=].display = "Альфа-фетопротеин (АФП)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-460
* group.element[=].display = "Epshteyn-Barr (EBV VCA IgM)"
* group.element[=].target[+].code = #7886-5
* group.element[=].target[=].display = "Вирус Эпштейна–Барр (VCA IgM)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-461
* group.element[=].display = "Mioglobin"
* group.element[=].target[+].code = #32331-1
* group.element[=].target[=].display = "Миоглобин"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-462
* group.element[=].display = "FT3 (свободный)"
* group.element[=].target[+].code = #3051-0
* group.element[=].target[=].display = "FT3 (свободный)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-463
* group.element[=].display = "FT4 (свободный)"
* group.element[=].target[+].code = #3024-7
* group.element[=].target[=].display = "FT4 (свободный)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-464
* group.element[=].display = "Tireotrop gormon (TTG/TSH) [Birlik/hajm]"
* group.element[=].target[+].code = #3016-3
* group.element[=].target[=].display = "Tиреотропный гормон (ТТГ/TSH) [концентраци"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-465
* group.element[=].display = "Erkin triyodtironin (T3) [Zichlik]"
* group.element[=].target[+].code = #3051-0
* group.element[=].target[=].display = "Свободный трийодтиронин (T3) [концентрация]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-466
* group.element[=].display = "Erkin tiroksin (T4) [Zichlik]"
* group.element[=].target[+].code = #3024-7
* group.element[=].target[=].display = "Свободный тироксин (T4) [концентрация]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-467
* group.element[=].display = "Gepatit V DNK(HVV) (sifatli)"
* group.element[=].target[+].code = #29610-3
* group.element[=].target[=].display = "Гепатит B ДНК(HBV), качественный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-468
* group.element[=].display = "Gepatit S RNK (HCV) (miqdoriy)"
* group.element[=].target[+].code = #11011-4
* group.element[=].target[=].display = "РНК вируса гепатита C (HCV), количественный"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-pan-469
* group.element[=].display = "Laboratoriya diagnostika boʻlimi Vitamin -D"
* group.element[=].target[+].code = #35365-6
* group.element[=].target[=].display = "Витамин D (отдел лабораторной диагностики)"
* group.element[=].target[=].relationship = #equivalent
