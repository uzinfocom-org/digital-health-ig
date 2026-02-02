CodeSystem: ObservationLabResearchCodesCS
Id: observation-lab-research-codes-cs
Title: "Laboratory Observation Panels and Analytes"
Description: "Code system defining laboratory observation panels and individual analytes used in Uzbekistan."
* insert OriginalCodeSystemDraft(observation-lab-research-codes-cs)

* ^property[0].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

* #A "Umumiy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий анализ крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"
* #1 "WBC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "WBC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #2 "Neu#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Neu#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #3 "Lym#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Lym#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #4 "Mon#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mon#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #5 "Eos#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Eos#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #6 "Bas#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Bas#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #7 "Neu%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Neu%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils/100 leukocytes in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #8 "Lym%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Lym%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes/100 leukocytes in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #9 "Mon%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mon%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #10 "Eos%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Eos%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils/100 leukocytes in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #11 "Bas%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Bas%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Basophils/100 leukocytes in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #12 "RBC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RBC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #13 "HGB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "HGB"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #14 "HCT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "HCT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #15 "MCV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCV"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCV [Entitic volume] by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #16 "MCH"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCH"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCH [Entitic mass] by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #17 "MCHC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCHC"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCHC [Mass/volume] by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #18 "RDW-CV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RDW-CV"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #19 "RDW-SD"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RDW-SD"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #20 "PLT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PLT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #21 "MPV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MPV"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #22 "PDW"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PDW"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #23 "PCT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PCT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #24 "P-LCC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "P-LCC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet large cell count [#/volume] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #25 "P-LCR"
  * ^designation[0].language = #ru
  * ^designation[=].value = "P-LCR"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet large cell ratio [#] in Blood by Automated count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #26 "ECHT (eritrotsitlarning cho'kish tezligi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "СОЭ(скорость оседания эритроцитов)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #A
* #B "Qon koagulogrammasi (qon ivish ko'rsatkichlari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коагулограммы крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Coagulation panel"
* #27 "Kvik bo'yicha protrombin indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протромбиновый индекс по Квику"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prothrombin activity (Quick) [Ratio] in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #28 "Protrombin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протромбиновое время"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prothrombin time (PT) [Time] in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #29 "Xalqaro normallashtirilgan nisbat (INR)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "МНО"
  * ^designation[+].language = #en
  * ^designation[=].value = "INR (International normalized ratio) in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #30 "Trombotest"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромботест"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thrombotest [Interpretation] in Platelet poor plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #31 "Fibrinogen"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фибриноген"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #32 "Faollashtirilgan qisman tromboplastin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "АЧТВ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Activated partial thromboplastin time (APTT) [Time] in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #33 "Trombin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромбиновое время"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thrombin time (TT) [Time] in Platelet poor plasma by Coagulation assay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #B
* #C "Sitologik tekshiruv (surtma)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитологическое исследование(мазок)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"
* #34 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #35 "Epitelial hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителиалные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #36 "Mikroflora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микрофлора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #37 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #38 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #39 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #C
* #D "Najasning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"
* #40 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #41 "Epitelial hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителиалные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #42 "Mikroflora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микрофлора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #43 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #44 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #45 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Genital specimen by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #D
* #E "Najasning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic examination of feces"
* #46 "Mushak tolalari: chiziqli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мышечные волокна:С исчерченностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Muscle fibers striated [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #47 "Mushak tolalari: chiziqsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мышечные волокна:Без исчерченности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Muscle fibers non-striated [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #48 "Biriktiruvchi to'qima"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Соединительная ткань"
  * ^designation[+].language = #en
  * ^designation[=].value = "Connective tissue [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #49 "Neytral yog'"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жир нейтральный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutral fat [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #50 "Yog' kislotalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жирные кислоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fatty acids [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #51 "Sovunlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мыла"
  * ^designation[+].language = #en
  * ^designation[=].value = "Soaps [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #52 "Hazm bo'ladigan o'simlik tolasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Растительная клетчатка перевариваемая"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plant fibers digested [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #53 "Kraxmal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Крахмал"
  * ^designation[+].language = #en
  * ^designation[=].value = "Starch granules [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #54 "Yodofil flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Йодофильная флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Iodophilic bacteria [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #55 "Kristallar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кристаллы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Crystals [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #56 "Shilliq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слизь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mucus [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #57 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #58 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #59 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #60 "Eng sodda organizmlar (protozoylar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Простейшие"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protozoa [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #61 "Gijja tuxumlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Яйца глистов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ova (helminth) [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #62 "Xamirturush zamburug'lari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дрожжевые грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #63 "Najasning mikroskopik kuzatuvi (nam preparat)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое наблюдение кала (влажная препарация)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Wet preparation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #64 "Najasning Gram bo'yicha bo'yalgan holda mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала с грам-окраской"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Gram stain"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #65 "Najasning trixrom bo'yicha bo'yalgan holda mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала с трихром-окраской"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Trichrome stain"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #66 "Najasning qorong'i maydon usuli bilan mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала методом тёмного поля"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Dark field examination"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #67 "Yorug'lik mikroskopiyasi orqali najasda aniqlangan gijja tuxumlari va parazitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Яйца и паразиты, выявленные в кале при светлой микроскопии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ova and parasites identified in Stool by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #E
* #F "Siydikning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urinalysis macro (dipstick) panel"
* #68 "Siydik hajmi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine volume [Volume]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #69 "Siydik rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Color of Urine"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #70 "Siydikning tashqi ko'rinishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Appearance of Urine"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #71 "Refraktometriya orqali siydikning solishtirma zichligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Относительная плотность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specific gravity of Urine by Refractometry"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #72 "Siydik pH darajasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine pH"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #73 "Test-tasma orqali siydikdagi oqsil miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #74 "Test-tasma orqali siydikdagi glyukoza miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Глюкоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glucose [Mass/volume] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #75 "Test-tasma orqali siydikdagi ketonlar miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кетоновые тела"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ketones [Mass/volume] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #76 "Test-tasma orqali siydikda gemoglobinning mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция на наличие крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemoglobin [Presence] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #77 "Test-tasma orqali siydikda bilirubinning mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin [Presence] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #78 "Test-tasma orqali siydikda urobilinogening mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уробилиноген"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urobilinogen [Presence] in Urine by Test strip"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #79 "Siydikda o't kislotalarining mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Желчные кислоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bile acids [Presence] in Urine"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #F
* #G "Siydikning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Urine sediment by Light microscopy"
* #80 "Epiteliy: yassi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: плоский"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #81 "Epiteliy: o'tuvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: переходный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.transitional [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #82 "Epiteliy: buyrak epiteliyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: почечный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.renal [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #83 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #84 "O'zgargan eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты изменённые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes dysmorphic [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #85 "O'zgarmagan eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты неизменённые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/area] in Urine sediment by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #86 "Silindrlar: gialinli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: гиалиновые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.hyaline [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #87 "Silindrlar: mumsimon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: восковидные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.waxy [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #88 "Silindrlar: donador"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: зернистые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.granular [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #89 "Silindrlar: eritrotsitar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: эритроцитарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.red blood cells [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #90 "Silindrlar: leykotsitar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: лейкоцитарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.white blood cells [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #91 "Silindrlar: epitelial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: эпителиальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.epithelial cells [#/area] in Urine sediment by Microscopy LPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #92 "Shilliq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слизь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mucus [Presence] in Urine sediment by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #93 "Tuzlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Соли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Crystals [Presence] in Urine sediment by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #94 "Bakteriyalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бактерии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Urine sediment by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #G
* #H "Biokimyoviy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биохимическое исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Comprehensive metabolic 2000 panel – Serum or Plasma"
* #95 "Umumiy oqsil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #96 "Albumin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альбумин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Albumin [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #97 "Xolesterin (umumiy)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холестерин (общий)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #98 "Triglitseridlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Триглицериды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #99 "Glyukoza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Глюкоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glucose [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #100 "Mochevina"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мочевина"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urea nitrogen [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #101 "Kreatinin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Креатинин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Creatinine [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #102 "Umumiy bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин общий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.total [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #103 "To'g'ri (bog'langan) bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин прямой (связанный)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.direct [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #104 "Bilvosita (erkin) bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин непрямой (свободный)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.indirect [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #105 "Alaninaminotransferaza (ALT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аланинаминотрансфераза (АЛТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #106 "Aspartataminotransferaza (AST)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспартатаминотрансфераза (АСТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #107 "Laktatdegidrogenaza (LDH)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лактатдегидрогеназа (ЛДГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #108 "Gammaglutamiltransferaza (GGT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гаммаглутамилтрансфераза (ГГТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #109 "Alfa-amilaza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альфа-амилаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Amylase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #110 "Ishqoriy fosfataza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Щелочная фосфатаза (ИФ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #111 "Kaliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Калий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Potassium [Moles/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #112 "Natriy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Натрий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sodium [Moles/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #113 "Kalsiy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кальций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Calcium [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #114 "Temir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Железо"
  * ^designation[+].language = #en
  * ^designation[=].value = "Iron [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #115 "Fosfor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фосфор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phosphate [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #116 "Xlor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хлор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chloride [Moles/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #H
* #I "Gormonal qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гормональное исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hormone studies (panel) – Serum or Plasma"
* #117 "T3 (triiodtironin)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Т3"
  * ^designation[+].language = #en
  * ^designation[=].value = "Triiodothyronine (T3) [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #118 "T4 (tiroksin)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Т4"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thyroxine (T4) [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #119 "TTG (tireotrop gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТТГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thyrotropin (TSH) [Units/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #120 "Estradiol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эстрадиол"
  * ^designation[+].language = #en
  * ^designation[=].value = "Estradiol (E2) [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #121 "Testosteron"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тестостерон"
  * ^designation[+].language = #en
  * ^designation[=].value = "Testosterone [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #122 "Kortizol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кортизол"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #123 "Prolaktin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пролактин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prolactin [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #124 "LG (luteinlashtiruvchi gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЛГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Luteinizing hormone (LH) [Units/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #125 "FSG (follikulni rag'batlantiruvchi gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ФСГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Follicle stimulating hormone (FSH) [Units/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #126 "Progesteron"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прогестерон"
  * ^designation[+].language = #en
  * ^designation[=].value = "Progesterone [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #127 "PSA (prostata-spetsifik antigen)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ПСА"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostate specific Ag (PSA) [Mass/volume] in Serum or Plasma"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #I
* #J "Spermogramma tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование спермограммы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen analysis (panel) – Semen"
* #128 "Hajmi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Объём"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen volume [Volume]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #129 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen color [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #130 "Hidi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen odor [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #131 "Suyulish vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время разжижения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen liquefaction time"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #132 "Kislotaliligi (pH)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кислотность (pH)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen pH"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #133 "Qovushqoqligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вязкость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen viscosity [Presence]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #134 "1 ml dagi spermatozoidlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество сперматозоидов в 1 мл"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #135 "Umumiy hajmdagi spermatozoidlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество сперматозоидов в общем объёме"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa total count [#] in Ejaculate"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #136 "Harakatchanlik — faol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — активные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa progressive motility [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #137 "Harakatchanlik — sust"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — вялые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa non-progressive motility [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #138 "Harakatchanlik — harakatsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — неподвижные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa immotile [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #139 "Tirik spermatozoidlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Живые сперматозоиды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa viability [#/volume] in Semen by Stain"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #140 "Spermatozoidlarning patologik shakllari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Патологические формы сперматозоидов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa abnormal forms [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #141 "Spermatogenez epiteliyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий сперматогенеза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #142 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #143 "Letsitin donachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лецитиновые зёрна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lecithin bodies [Presence] in Semen by Microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #144 "Agglyutinatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Агглютинация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa agglutination [Presence] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #145 "Fruktoza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фруктоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fructose [Moles/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #146 "Limon kislotasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимонная кислота"
  * ^designation[+].language = #en
  * ^designation[=].value = "Citric acid [Moles/volume] in Semen"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #J
* #K "Balg'am tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ мокроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum studies (panel) – Sputum"
* #147 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum volume [Volume]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #148 "Hidi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum odor [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #149 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum color [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #150 "Xususiyati (tavsifi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Характер (описание)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum gross description"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #151 "Aralashmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Примеси"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum inclusions [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #152 "Konsistensiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консистенция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum consistency [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #153 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #154 "Alveolyar makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альвеолярные макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #155 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #156 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #157 "Tolalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Волокна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibers [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #158 "Elastik tolalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эластические волокна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Elastic fibers [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #159 "Ohaklangan (toshga o'xshash) zarrachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обызвествлённые (окаменевшие частицы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Calcified bodies [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #160 "Sil mikobakteriyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микобактерии туберкулёза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mycobacterium tuberculosis [Presence] in Sputum by Microscopy (Ziehl–Neelsen stain)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #161 "Eozinofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эозинофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/area] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #162 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fungi [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #163 "Boshqa flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другая флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #164 "Kurshman spirallari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спирали Куршмана"
  * ^designation[+].language = #en
  * ^designation[=].value = "Curschmann's spirals [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #165 "Sharko–Leyden kristallari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кристаллы Шарко–Лейдена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Charcot–Leyden crystals [Presence] in Sputum by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #166 "Atipik belgilarga ega hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки с атипичными признаками"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells atypical [Presence] in Sputum by Cytology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #K
* #L "Prostata bezi sekretining tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ секрета предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic secretion study (panel) – Prostatic fluid"
* #167 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid volume [Volume]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #168 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid color [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #169 "Shaffofligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid clarity [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #170 "Konsistensiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консистенция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid consistency [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #171 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Prostatic fluid by Microscopy HPF"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #172 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #173 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #174 "Makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #175 "Letsitin donachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лецитиновые зёрна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lecithin bodies [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #176 "Amiloid tanachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амилоидные тельца"
  * ^designation[+].language = #en
  * ^designation[=].value = "Amyloid bodies [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #177 "Spermatozoidlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сперматозоиды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #178 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #179 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #180 "Boshqa flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другая флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Prostatic fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #181 "Atipik belgilarga ega hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки с атипичными признаками"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells atypical [Presence] in Prostatic fluid by Cytology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #L
* #M "TORCH-infeksiyalar bo'yicha tahlil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ на TORCH-инфекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH IgG panel – Serum"
* #182 "Xlamidiya (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хламидия (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chlamydia trachomatis IgG Ab [Presence] in Serum by Immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #M
* #183 "Toksoplazmoz (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Токсоплазмоз (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #M
* #184 "Sitomegalovirus (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum by Immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #M
* #185 "Oddiy gerpes virusi (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус простого герпеса (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Presence] in Serum by Immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #M
* #186 "Ureaplazma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уреаплазма"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ureaplasma urealyticum DNA [Presence] in Specimen by NAA with probe detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #M
* #N "Serebrospinal suyuqlik (likvor) tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование цереброспинальной жидкости (ликвора)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid studies (panel)"
* #187 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid volume [Volume]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #188 "Sentrifugatsiyadan keyingi rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет после центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF color [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #189 "Sentrifugatsiyadan oldingi ksantoxromiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ксантохромия до центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF xanthochromia [Presence]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #190 "Sentrifugatsiyadan keyingi shaffofligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность после центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF clarity [Type]"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #191 "Oqsil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Cerebrospinal fluid"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #192 "Pandi reaksiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция Панди"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pandy test [Interpretation] in Cerebrospinal fluid"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #193 "Limfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes [#/volume] in Cerebrospinal fluid by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #194 "Eozinofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эозинофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/volume] in Cerebrospinal fluid by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #195 "Neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils [#/volume] in Cerebrospinal fluid by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #196 "Makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #197 "O'zgargan hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменённые клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cells abnormal [Presence] in Cerebrospinal fluid by Cytology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #198 "Poliblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полибласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Polynuclear cells [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #199 "Plazmatik hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазматические клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma cells [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #200 "Araxnoidal endoteliy hujayralari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки арахноидального эндотелия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #201 "Ependima hujayralari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки эпендимы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ependymal cells [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #202 "Donador sharlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зернистые шары"
  * ^designation[+].language = #en
  * ^designation[=].value = "Granular corpuscles [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #203 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fungi [Presence] in Cerebrospinal fluid by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #204 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/volume] in Cerebrospinal fluid by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #N
* #O "Suyak iligi punktati tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ пунктата костного мозга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bone marrow differential panel – Bone marrow smear or aspirate"
* #205 "Miyelokariotsitlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество миелокариоцитов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelokaryocytes [#/volume] in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #206 "Megakariotsitlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество мегакариоцитов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryocytes [Presence] in Bone marrow by Light microscopy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #207 "Yetilmagan blastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Незрелые бласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blast cells immature [#/100 cells] in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #208 "Miyeloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миелобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myeloblasts/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #209 "Promiyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промиелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promyelocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #210 "Miyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #211 "Metamiyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Метамиелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Metamyelocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #212 "Tayoqchasimon yadroli neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Палочкоядерные нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils.band form/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #213 "Segmentyadroli neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сегментоядерные нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils.segmented/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #214 "Limfoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphoblasts/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #215 "Prolimfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пролимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prolymphocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #216 "Limfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #217 "Monoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Монобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monoblasts/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #218 "Promonotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промоноциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promonocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #219 "Monotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Моноциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #220 "Leyko-eritroblastik nisbat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейко-эритробластическое соотношение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myeloid/erythroid ratio in Bone marrow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #221 "Neytrofillar yetilish indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индекс созревания нейтрофилов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophil maturation index in Bone marrow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #222 "Proeritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проэритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Proerythroblasts/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #223 "Bazofil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Базофильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #224 "Polixromatofil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #225 "Oksifil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #226 "Polixromatofil normoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные нормобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Normoblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #227 "Oksifil normoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные нормобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Normoblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #228 "Promegaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.pro/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #229 "Bazofil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Базофильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #230 "Polixromatofil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #231 "Oksifil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #232 "Megakarioblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мегакариобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryoblasts/100 cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #233 "Promegakariotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промегакариоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promegakaryocytes/100 cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #234 "Megakariotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мегакариоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryocytes/100 cells in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #235 "Retikulyar hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ретикулярные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reticular cells [#/100 cells] in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #236 "Plazmoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазмобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasmablasts/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #237 "Proplazmotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проплазмоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Proplasmocytes/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #238 "Plazmatik hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазматические клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma cells/100 leukocytes in Bone marrow by Manual count"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #239 "Granulopoez hujayralarining mitozi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Митоз клеток гранулопоэза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelopoiesis cells mitosis [Presence] in Bone marrow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #240 "Eritropoez hujayralarining mitozi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Митоз клеток эритропоэза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythropoiesis cells mitosis [Presence] in Bone marrow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
* #241 "Eritroblastlar va normoblastlar sitoplazmasining yetilish indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индекс зрелости цитоплазмы эритробластов и нормобластов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytoplasmic maturation index of erythroid cells in Bone marrow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #O
