CodeSystem: ServiceRequesLabCodesCS
Id: service-request-labresearch-code-cs
Title: "Laboratory Service Request Panels and Individual Analytes"
Description: "Defines a set of codes representing laboratory test panels and individual analytes used for laboratory service requests within the DHP ecosystem of Uzbekistan."
* insert OriginalCodeSystemDraft(service-request-labresearch-code-cs)

* #test-0001-00001 "Umumiy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий анализ крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"
* #test-0001-00002 "WBC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "WBC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"
* #test-0001-00003 "Neu#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Neu#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"
* #test-0001-00004 "Lym#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Lym#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"
* #test-0001-00005 "Mon#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mon#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes [#/volume] in Blood by Automated count"
* #test-0001-00006 "Eos#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Eos#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"
* #test-0001-00007 "Bas#"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Bas#"
  * ^designation[+].language = #en
  * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"
* #test-0001-00008 "Neu%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Neu%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils/100 leukocytes in Blood by Automated count"
* #test-0001-00009 "Lym%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Lym%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes/100 leukocytes in Blood by Automated count"
* #test-0001-00010 "Mon%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mon%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"
* #test-0001-00011 "Eos%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Eos%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils/100 leukocytes in Blood by Automated count"
* #test-0001-00012 "Bas%"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Bas%"
  * ^designation[+].language = #en
  * ^designation[=].value = "Basophils/100 leukocytes in Blood by Automated count"
* #test-0001-00013 "RBC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RBC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"
* #test-0001-00014 "HGB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "HGB"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"
* #test-0001-00015 "HCT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "HCT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"
* #test-0001-00016 "MCV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCV"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCV [Entitic volume] by Automated count"
* #test-0001-00017 "MCH"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCH"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCH [Entitic mass] by Automated count"
* #test-0001-00018 "MCHC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MCHC"
  * ^designation[+].language = #en
  * ^designation[=].value = "MCHC [Mass/volume] by Automated count"
* #test-0001-00019 "RDW-CV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RDW-CV"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
* #test-0001-00020 "RDW-SD"
  * ^designation[0].language = #ru
  * ^designation[=].value = "RDW-SD"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"
* #test-0001-00021 "PLT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PLT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"
* #test-0001-00022 "MPV"
  * ^designation[0].language = #ru
  * ^designation[=].value = "MPV"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"
* #test-0001-00023 "PDW"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PDW"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"
* #test-0001-00024 "PCT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "PCT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"
* #test-0001-00025 "P-LCC"
  * ^designation[0].language = #ru
  * ^designation[=].value = "P-LCC"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet large cell count [#/volume] in Blood by Automated count"
* #test-0001-00026 "P-LCR"
  * ^designation[0].language = #ru
  * ^designation[=].value = "P-LCR"
  * ^designation[+].language = #en
  * ^designation[=].value = "Platelet large cell ratio [#] in Blood by Automated count"
* #test-0001-00027 "ECHT (eritrotsitlarning cho'kish tezligi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "СОЭ(скорость оседания эритроцитов)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"
* #test-0002-00001 "Qon koagulogrammasi (qon ivish ko'rsatkichlari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коагулограммы крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Coagulation panel"

* #test-0002-00002 "Kvik bo'yicha protrombin indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протромбиновый индекс по Квику"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prothrombin activity (Quick) [Ratio] in Platelet poor plasma by Coagulation assay"

* #test-0002-00003 "Protrombin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протромбиновое время"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prothrombin time (PT) [Time] in Platelet poor plasma by Coagulation assay"

* #test-0002-00004 "Xalqaro normallashtirilgan nisbat (INR)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "МНО"
  * ^designation[+].language = #en
  * ^designation[=].value = "INR (International normalized ratio) in Platelet poor plasma by Coagulation assay"

* #test-0002-00005 "Trombotest"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромботест"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thrombotest [Interpretation] in Platelet poor plasma"

* #test-0002-00006 "Fibrinogen"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фибриноген"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"

* #test-0002-00007 "Faollashtirilgan qisman tromboplastin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "АЧТВ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Activated partial thromboplastin time (APTT) [Time] in Platelet poor plasma by Coagulation assay"

* #test-0002-00008 "Trombin vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромбиновое время"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thrombin time (TT) [Time] in Platelet poor plasma by Coagulation assay"
* #test-0003-00001 "Sitologik tekshiruv (surtma)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитологическое исследование(мазок)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"

* #test-0003-00002 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"

* #test-0003-00003 "Epitelial hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителиалные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Genital specimen by Light microscopy"

* #test-0003-00004 "Mikroflora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микрофлора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Light microscopy"

* #test-0003-00005 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"

* #test-0003-00006 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"

* #test-0003-00007 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Genital specimen by Light microscopy"

* #test-0004-00001 "Najasning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"

* #test-0004-00002 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"

* #test-0004-00003 "Epitelial hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителиалные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Genital specimen by Light microscopy"

* #test-0004-00004 "Mikroflora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микрофлора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Light microscopy"

* #test-0004-00005 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"

* #test-0004-00006 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"

* #test-0004-00007 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Genital specimen by Light microscopy"

* #test-0005-00001 "Najasning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic examination of feces"

* #test-0005-00002 "Mushak tolalari: chiziqli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мышечные волокна:С исчерченностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Muscle fibers striated [Presence] in Stool by Light microscopy"

* #test-0005-00003 "Mushak tolalari: chiziqsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мышечные волокна:Без исчерченности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Muscle fibers non-striated [Presence] in Stool by Light microscopy"

* #test-0005-00004 "Biriktiruvchi to'qima"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Соединительная ткань"
  * ^designation[+].language = #en
  * ^designation[=].value = "Connective tissue [Presence] in Stool by Light microscopy"

* #test-0005-00005 "Neytral yog'"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жир нейтральный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutral fat [Presence] in Stool by Light microscopy"

* #test-0005-00006 "Yog' kislotalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жирные кислоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fatty acids [Presence] in Stool by Light microscopy"

* #test-0005-00007 "Sovunlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мыла"
  * ^designation[+].language = #en
  * ^designation[=].value = "Soaps [Presence] in Stool by Light microscopy"

* #test-0005-00008 "Hazm bo'ladigan o'simlik tolasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Растительная клетчатка перевариваемая"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plant fibers digested [Presence] in Stool by Light microscopy"

* #test-0005-00009 "Kraxmal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Крахмал"
  * ^designation[+].language = #en
  * ^designation[=].value = "Starch granules [Presence] in Stool by Light microscopy"

* #test-0005-00010 "Yodofil flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Йодофильная флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Iodophilic bacteria [Presence] in Stool by Light microscopy"

* #test-0005-00011 "Kristallar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кристаллы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Crystals [Presence] in Stool by Light microscopy"

* #test-0005-00012 "Shilliq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слизь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mucus [Presence] in Stool by Light microscopy"

* #test-0005-00013 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Stool by Light microscopy"

* #test-0005-00014 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [Presence] in Stool by Light microscopy"

* #test-0005-00015 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Stool by Light microscopy"

* #test-0005-00016 "Eng sodda organizmlar (protozoylar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Простейшие"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protozoa [Presence] in Stool by Light microscopy"

* #test-0005-00017 "Gijja tuxumlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Яйца глистов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ova (helminth) [Presence] in Stool by Light microscopy"

* #test-0005-00018 "Xamirturush zamburug'lari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дрожжевые грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yeast [Presence] in Stool by Light microscopy"

* #test-0005-00019 "Najasning mikroskopik kuzatuvi (nam preparat)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое наблюдение кала (влажная препарация)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Wet preparation"

* #test-0005-00020 "Najasning Gram bo'yicha bo'yalgan holda mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала с грам-окраской"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Gram stain"

* #test-0005-00021 "Najasning trixrom bo'yicha bo'yalgan holda mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала с трихром-окраской"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Trichrome stain"

* #test-0005-00022 "Najasning qorong'i maydon usuli bilan mikroskopiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия кала методом тёмного поля"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Stool by Dark field examination"

* #test-0005-00023 "Yorug'lik mikroskopiyasi orqali najasda aniqlangan gijja tuxumlari va parazitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Яйца и паразиты, выявленные в кале при светлой микроскопии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ova and parasites identified in Stool by Light microscopy"

* #test-0006-00001 "Siydikning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urinalysis macro (dipstick) panel"

* #test-0006-00002 "Siydik hajmi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine volume [Volume]"

* #test-0006-00003 "Siydik rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Color of Urine"

* #test-0006-00004 "Siydikning tashqi ko'rinishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Appearance of Urine"

* #test-0006-00005 "Refraktometriya orqali siydikning solishtirma zichligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Относительная плотность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specific gravity of Urine by Refractometry"

* #test-0006-00006 "Siydik pH darajasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine pH"

* #test-0006-00007 "Test-tasma orqali siydikdagi oqsil miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Urine by Test strip"

* #test-0006-00008 "Test-tasma orqali siydikdagi glyukoza miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Глюкоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glucose [Mass/volume] in Urine by Test strip"

* #test-0006-00009 "Test-tasma orqali siydikdagi ketonlar miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кетоновые тела"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ketones [Mass/volume] in Urine by Test strip"

* #test-0006-00010 "Test-tasma orqali siydikda gemoglobinning mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция на наличие крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemoglobin [Presence] in Urine by Test strip"

* #test-0006-00011 "Test-tasma orqali siydikda bilirubinning mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin [Presence] in Urine by Test strip"

* #test-0006-00012 "Test-tasma orqali siydikda urobilinogening mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уробилиноген"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urobilinogen [Presence] in Urine by Test strip"

* #test-0006-00013 "Siydikda o't kislotalarining mavjudligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Желчные кислоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bile acids [Presence] in Urine"

* #test-0007-00001 "Siydikning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic observation [Identifier] in Urine sediment by Light microscopy"

* #test-0007-00002 "Epiteliy: yassi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: плоский"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00003 "Epiteliy: o'tuvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: переходный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.transitional [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00004 "Epiteliy: buyrak epiteliyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий: почечный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells.renal [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00005 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00006 "O'zgargan eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты изменённые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes dysmorphic [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00007 "O'zgarmagan eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты неизменённые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/area] in Urine sediment by Microscopy HPF"

* #test-0007-00008 "Silindrlar: gialinli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: гиалиновые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.hyaline [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00009 "Silindrlar: mumsimon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: восковидные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.waxy [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00010 "Silindrlar: donador"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: зернистые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.granular [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00011 "Silindrlar: eritrotsitar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: эритроцитарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.red blood cells [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00012 "Silindrlar: leykotsitar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: лейкоцитарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.white blood cells [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00013 "Silindrlar: epitelial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цилиндры: эпителиальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casts.epithelial cells [#/area] in Urine sediment by Microscopy LPF"

* #test-0007-00014 "Shilliq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слизь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mucus [Presence] in Urine sediment by Light microscopy"

* #test-0007-00015 "Tuzlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Соли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Crystals [Presence] in Urine sediment by Light microscopy"

* #test-0007-00016 "Bakteriyalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бактерии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Urine sediment by Light microscopy"

* #test-0008-00001 "Biokimyoviy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биохимическое исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Comprehensive metabolic 2000 panel – Serum or Plasma"

* #test-0008-00002 "Umumiy oqsil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Serum or Plasma"

* #test-0008-00003 "Albumin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альбумин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Albumin [Mass/volume] in Serum or Plasma"

* #test-0008-00004 "Xolesterin (umumiy)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холестерин (общий)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

* #test-0008-00005 "Triglitseridlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Триглицериды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"

* #test-0008-00006 "Glyukoza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Глюкоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glucose [Mass/volume] in Serum or Plasma"

* #test-0008-00007 "Mochevina"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мочевина"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urea nitrogen [Mass/volume] in Serum or Plasma"

* #test-0008-00008 "Kreatinin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Креатинин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Creatinine [Mass/volume] in Serum or Plasma"

* #test-0008-00009 "Umumiy bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин общий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.total [Mass/volume] in Serum or Plasma"

* #test-0008-00010 "To'g'ri (bog'langan) bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин прямой (связанный)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.direct [Mass/volume] in Serum or Plasma"

* #test-0008-00011 "Bilvosita (erkin) bilirubin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Билирубин непрямой (свободный)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bilirubin.indirect [Mass/volume] in Serum or Plasma"

* #test-0008-00012 "Alaninaminotransferaza (ALT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аланинаминотрансфераза (АЛТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00013 "Aspartataminotransferaza (AST)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспартатаминотрансфераза (АСТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00014 "Laktatdegidrogenaza (LDH)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лактатдегидрогеназа (ЛДГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00015 "Gammaglutamiltransferaza (GGT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гаммаглутамилтрансфераза (ГГТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00016 "Alfa-amilaza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альфа-амилаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Amylase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00017 "Ishqoriy fosfataza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Щелочная фосфатаза (ИФ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"

* #test-0008-00018 "Kaliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Калий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Potassium [Moles/volume] in Serum or Plasma"

* #test-0008-00019 "Natriy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Натрий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sodium [Moles/volume] in Serum or Plasma"

* #test-0008-00020 "Kalsiy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кальций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Calcium [Mass/volume] in Serum or Plasma"

* #test-0008-00021 "Temir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Железо"
  * ^designation[+].language = #en
  * ^designation[=].value = "Iron [Mass/volume] in Serum or Plasma"

* #test-0008-00022 "Fosfor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фосфор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phosphate [Mass/volume] in Serum or Plasma"

* #test-0008-00023 "Xlor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хлор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chloride [Moles/volume] in Serum or Plasma"

* #test-0009-00001 "Gormonal qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гормональное исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hormone studies (panel) – Serum or Plasma"

* #test-0009-00002 "T3 (triiodtironin)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Т3"
  * ^designation[+].language = #en
  * ^designation[=].value = "Triiodothyronine (T3) [Mass/volume] in Serum or Plasma"

* #test-0009-00003 "T4 (tiroksin)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Т4"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thyroxine (T4) [Mass/volume] in Serum or Plasma"

* #test-0009-00004 "TTG (tireotrop gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТТГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thyrotropin (TSH) [Units/volume] in Serum or Plasma"

* #test-0009-00005 "Estradiol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эстрадиол"
  * ^designation[+].language = #en
  * ^designation[=].value = "Estradiol (E2) [Mass/volume] in Serum or Plasma"

* #test-0009-00006 "Testosteron"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тестостерон"
  * ^designation[+].language = #en
  * ^designation[=].value = "Testosterone [Mass/volume] in Serum or Plasma"

* #test-0009-00007 "Kortizol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кортизол"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"

* #test-0009-00008 "Prolaktin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пролактин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prolactin [Mass/volume] in Serum or Plasma"

* #test-0009-00009 "LG (luteinlashtiruvchi gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЛГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Luteinizing hormone (LH) [Units/volume] in Serum or Plasma"

* #test-0009-00010 "FSG (follikulni rag'batlantiruvchi gormon)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ФСГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Follicle stimulating hormone (FSH) [Units/volume] in Serum or Plasma"

* #test-0009-00011 "Progesteron"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прогестерон"
  * ^designation[+].language = #en
  * ^designation[=].value = "Progesterone [Mass/volume] in Serum or Plasma"

* #test-0009-00012 "PSA (prostata-spetsifik antigen)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ПСА"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostate specific Ag (PSA) [Mass/volume] in Serum or Plasma"

* #test-0010-00001 "Spermogramma tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование спермограммы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen analysis (panel) – Semen"

* #test-0010-00002 "Hajmi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Объём"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen volume [Volume]"

* #test-0010-00003 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen color [Type]"

* #test-0010-00004 "Hidi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen odor [Type]"

* #test-0010-00005 "Suyulish vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время разжижения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen liquefaction time"

* #test-0010-00006 "Kislotaliligi (pH)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кислотность (pH)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen pH"

* #test-0010-00007 "Qovushqoqligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вязкость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semen viscosity [Presence]"

* #test-0010-00008 "1 ml dagi spermatozoidlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество сперматозоидов в 1 мл"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa [#/volume] in Semen"

* #test-0010-00009 "Umumiy hajmdagi spermatozoidlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество сперматозоидов в общем объёме"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa total count [#] in Ejaculate"

* #test-0010-00010 "Harakatchanlik — faol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — активные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa progressive motility [#/volume] in Semen"

* #test-0010-00011 "Harakatchanlik — sust"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — вялые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa non-progressive motility [#/volume] in Semen"

* #test-0010-00012 "Harakatchanlik — harakatsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подвижность — неподвижные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa immotile [#/volume] in Semen"

* #test-0010-00013 "Tirik spermatozoidlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Живые сперматозоиды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa viability [#/volume] in Semen by Stain"

* #test-0010-00014 "Spermatozoidlarning patologik shakllari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Патологические формы сперматозоидов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa abnormal forms [#/volume] in Semen"

* #test-0010-00015 "Spermatogenez epiteliyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий сперматогенеза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Semen"

* #test-0010-00016 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/volume] in Semen"

* #test-0010-00017 "Letsitin donachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лецитиновые зёрна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lecithin bodies [Presence] in Semen by Microscopy"

* #test-0010-00018 "Agglyutinatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Агглютинация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa agglutination [Presence] in Semen"

* #test-0010-00019 "Fruktoza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фруктоза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fructose [Moles/volume] in Semen"

* #test-0010-00020 "Limon kislotasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимонная кислота"
  * ^designation[+].language = #en
  * ^designation[=].value = "Citric acid [Moles/volume] in Semen"

* #test-0011-00001 "Balg'am tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ мокроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum studies (panel) – Sputum"

* #test-0011-00002 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum volume [Volume]"

* #test-0011-00003 "Hidi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum odor [Type]"

* #test-0011-00004 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum color [Type]"

* #test-0011-00005 "Xususiyati (tavsifi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Характер (описание)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum gross description"

* #test-0011-00006 "Aralashmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Примеси"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum inclusions [Type]"

* #test-0011-00007 "Konsistensiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консистенция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum consistency [Type]"

* #test-0011-00008 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Sputum by Light microscopy"

* #test-0011-00009 "Alveolyar makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альвеолярные макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Sputum by Light microscopy"

* #test-0011-00010 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Sputum by Light microscopy"

* #test-0011-00011 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Sputum by Light microscopy"

* #test-0011-00012 "Tolalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Волокна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibers [Presence] in Sputum by Light microscopy"

* #test-0011-00013 "Elastik tolalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эластические волокна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Elastic fibers [Presence] in Sputum by Light microscopy"

* #test-0011-00014 "Ohaklangan (toshga o'xshash) zarrachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обызвествлённые (окаменевшие частицы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Calcified bodies [Presence] in Sputum by Light microscopy"

* #test-0011-00015 "Sil mikobakteriyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микобактерии туберкулёза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mycobacterium tuberculosis [Presence] in Sputum by Microscopy (Ziehl–Neelsen stain)"

* #test-0011-00016 "Eozinofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эозинофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/area] in Sputum by Light microscopy"

* #test-0011-00017 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fungi [Presence] in Sputum by Light microscopy"

* #test-0011-00018 "Boshqa flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другая флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Sputum by Light microscopy"

* #test-0011-00019 "Kurshman spirallari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спирали Куршмана"
  * ^designation[+].language = #en
  * ^designation[=].value = "Curschmann's spirals [Presence] in Sputum by Light microscopy"

* #test-0011-00020 "Sharko–Leyden kristallari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кристаллы Шарко–Лейдена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Charcot–Leyden crystals [Presence] in Sputum by Light microscopy"

* #test-0011-00021 "Atipik belgilarga ega hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки с атипичными признаками"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells atypical [Presence] in Sputum by Cytology"

* #test-0012-00001 "Prostata bezi sekretining tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ секрета предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic secretion study (panel) – Prostatic fluid"

* #test-0012-00002 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid volume [Volume]"

* #test-0012-00003 "Rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid color [Type]"

* #test-0012-00004 "Shaffofligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid clarity [Type]"

* #test-0012-00005 "Konsistensiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консистенция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostatic fluid consistency [Type]"

* #test-0012-00006 "Leykotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukocytes [#/area] in Prostatic fluid by Microscopy HPF"

* #test-0012-00007 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00008 "Epiteliy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00009 "Makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00010 "Letsitin donachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лецитиновые зёрна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lecithin bodies [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00011 "Amiloid tanachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амилоидные тельца"
  * ^designation[+].language = #en
  * ^designation[=].value = "Amyloid bodies [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00012 "Spermatozoidlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сперматозоиды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermatozoa [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00013 "Trichomonadalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трихомонады"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00014 "Gonokokklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонококки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00015 "Boshqa flora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другая флора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteria [Presence] in Prostatic fluid by Light microscopy"

* #test-0012-00016 "Atipik belgilarga ega hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки с атипичными признаками"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial cells atypical [Presence] in Prostatic fluid by Cytology"

* #test-0013-00001 "TORCH-infeksiyalar bo'yicha tahlil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ на TORCH-инфекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH IgG panel – Serum"

* #test-0013-00002 "Xlamidiya (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хламидия (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chlamydia trachomatis IgG Ab [Presence] in Serum by Immunoassay"

* #test-0013-00003 "Toksoplazmoz (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Токсоплазмоз (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoassay"

* #test-0013-00004 "Sitomegalovirus (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum by Immunoassay"

* #test-0013-00005 "Oddiy gerpes virusi (IgG antitanalari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирус простого герпеса (антитела IgG)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Presence] in Serum by Immunoassay"

* #test-0013-00006 "Ureaplazma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уреаплазма"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ureaplasma urealyticum DNA [Presence] in Specimen by NAA with probe detection"

* #test-0014-00001 "Serebrospinal suyuqlik (likvor) tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование цереброспинальной жидкости (ликвора)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid studies (panel)"

* #test-0014-00002 "Miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid volume [Volume]"

* #test-0014-00003 "Sentrifugatsiyadan keyingi rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет после центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF color [Type]"

* #test-0014-00004 "Sentrifugatsiyadan oldingi ksantoxromiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ксантохромия до центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF xanthochromia [Presence]"

* #test-0014-00005 "Sentrifugatsiyadan keyingi shaffofligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прозрачность после центрифугирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CSF clarity [Type]"

* #test-0014-00006 "Oqsil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Белок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein [Mass/volume] in Cerebrospinal fluid"

* #test-0014-00007 "Pandi reaksiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реакция Панди"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pandy test [Interpretation] in Cerebrospinal fluid"

* #test-0014-00008 "Limfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes [#/volume] in Cerebrospinal fluid by Manual count"

* #test-0014-00009 "Eozinofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эозинофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eosinophils [#/volume] in Cerebrospinal fluid by Manual count"

* #test-0014-00010 "Neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils [#/volume] in Cerebrospinal fluid by Manual count"

* #test-0014-00011 "Makrofaglar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макрофаги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrophages [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00012 "O'zgargan hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменённые клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cells abnormal [Presence] in Cerebrospinal fluid by Cytology"

* #test-0014-00013 "Poliblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полибласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Polynuclear cells [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00014 "Plazmatik hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазматические клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma cells [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00015 "Araxnoidal endoteliy hujayralari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки арахноидального эндотелия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00016 "Ependima hujayralari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клетки эпендимы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ependymal cells [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00017 "Donador sharlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зернистые шары"
  * ^designation[+].language = #en
  * ^designation[=].value = "Granular corpuscles [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00018 "Zamburug'lar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грибы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fungi [Presence] in Cerebrospinal fluid by Light microscopy"

* #test-0014-00019 "Eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythrocytes [#/volume] in Cerebrospinal fluid by Manual count"

* #test-0015-00001 "Suyak iligi punktati tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ пунктата костного мозга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bone marrow differential panel – Bone marrow smear or aspirate"

* #test-0015-00002 "Miyelokariotsitlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество миелокариоцитов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelokaryocytes [#/volume] in Bone marrow by Manual count"

* #test-0015-00003 "Megakariotsitlar soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество мегакариоцитов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryocytes [Presence] in Bone marrow by Light microscopy"

* #test-0015-00004 "Yetilmagan blastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Незрелые бласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blast cells immature [#/100 cells] in Bone marrow by Manual count"

* #test-0015-00005 "Miyeloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миелобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myeloblasts/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00006 "Promiyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промиелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promyelocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00007 "Miyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00008 "Metamiyelotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Метамиелоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Metamyelocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00009 "Tayoqchasimon yadroli neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Палочкоядерные нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils.band form/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00010 "Segmentyadroli neytrofillar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сегментоядерные нейтрофилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophils.segmented/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00011 "Limfoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphoblasts/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00012 "Prolimfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пролимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prolymphocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00013 "Limfotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00014 "Monoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Монобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monoblasts/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00015 "Promonotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промоноциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promonocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00016 "Monotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Моноциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Monocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00017 "Leyko-eritroblastik nisbat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейко-эритробластическое соотношение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myeloid/erythroid ratio in Bone marrow"

* #test-0015-00018 "Neytrofillar yetilish indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индекс созревания нейтрофилов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neutrophil maturation index in Bone marrow"

* #test-0015-00019 "Proeritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проэритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Proerythroblasts/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00020 "Bazofil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Базофильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00021 "Polixromatofil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00022 "Oksifil eritroblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные эритробласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythroblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00023 "Polixromatofil normoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные нормобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Normoblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00024 "Oksifil normoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные нормобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Normoblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00025 "Promegaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.pro/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00026 "Bazofil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Базофильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00027 "Polixromatofil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полихроматофильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00028 "Oksifil megaloblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксифильные мегалобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megaloblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

* #test-0015-00029 "Megakarioblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мегакариобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryoblasts/100 cells in Bone marrow by Manual count"

* #test-0015-00030 "Promegakariotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Промегакариоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Promegakaryocytes/100 cells in Bone marrow by Manual count"

* #test-0015-00031 "Megakariotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мегакариоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Megakaryocytes/100 cells in Bone marrow by Manual count"

* #test-0015-00032 "Retikulyar hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ретикулярные клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reticular cells [#/100 cells] in Bone marrow by Manual count"

* #test-0015-00033 "Plazmoblastlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазмобласты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasmablasts/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00034 "Proplazmotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проплазмоциты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Proplasmocytes/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00035 "Plazmatik hujayralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазматические клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma cells/100 leukocytes in Bone marrow by Manual count"

* #test-0015-00036 "Granulopoez hujayralarining mitozi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Митоз клеток гранулопоэза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelopoiesis cells mitosis [Presence] in Bone marrow"

* #test-0015-00037 "Eritropoez hujayralarining mitozi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Митоз клеток эритропоэза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Erythropoiesis cells mitosis [Presence] in Bone marrow"

* #test-0015-00038 "Eritroblastlar va normoblastlar sitoplazmasining yetilish indeksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индекс зрелости цитоплазмы эритробластов и нормобластов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytoplasmic maturation index of erythroid cells in Bone marrow"







