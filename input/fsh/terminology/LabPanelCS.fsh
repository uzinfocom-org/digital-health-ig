CodeSystem: LabPanelCS
Id: lab-pan-cs
Title: "Laboratory Observation Panels and Analytes"
Description: "Code system defining laboratory observation panels and individual analytes used in Ministry of Health Uzbekistan (399)."
* insert OriginalCodeSystemDraft(lab-pan-cs)

* #lab-pan-A "Siydikning makrosopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine macroscopic analysis"

  * #lab-pan-1 "Miqdori"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urine volume [Volume]"

  * #lab-pan-2 "Rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color of Urine"

  * #lab-pan-3 "Shaffofligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Urine"

  * #lab-pan-4 "Nisbiy zichligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Относительная плотность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Specific gravity of Urine by Refractometry"

  * #lab-pan-5 "Reaksiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urine pH"

  * #lab-pan-6 "Oqsil"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Urine by Test strip"

  * #lab-pan-7 "Glyukoza"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Глюкоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glucose [Mass/volume] in Urine by Test strip"

  * #lab-pan-8 "Keton tanachalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кетоновые тела"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ketones [Mass/volume] in Urine by Test strip"

  * #lab-pan-9 "Qon borligini aniqlash ryeaksiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на наличие крови"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Presence] in Urine by Test strip"

  * #lab-pan-10 "Bilirubin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin [Presence] in Urine by Test strip"

  * #lab-pan-11 "Urobilinoidlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уробилиноген"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urobilinogen [Presence] in Urine by Test strip"

  * #lab-pan-12 "O't kislotasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Желчные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bile acids [Presence] in Urine"

* #lab-pan-AA "Siydikning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine microscopic analysis"

  * #lab-pan-13 "Epiteliy: yassi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: плоский"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy HPF"

  * #lab-pan-14 "Epiteliy: o‘tuvchi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: переходный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Transitional cells [#/area] in Urine sediment by Microscopy high power field"

  * #lab-pan-15 "Epiteliy: buyrak epiteliyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: почечный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells.renal [#/area] in Urine sediment by Microscopy HPF"

  * #lab-pan-16 "Leykotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Urine sediment by Microscopy HPF"

  * #lab-pan-17 "Eritrotsitlar o‘zgargan"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты изменённые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes dysmorphic [#/area] in Urine sediment by Microscopy HPF"

  * #lab-pan-18 "Eritrotsitlar o‘zgarmagan"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты неизменённые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/area] in Urine sediment by Microscopy HPF"

  * #lab-pan-19 "Silindrlar: gialinli"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: гиалиновые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hyaline casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-20 "Silindrlar: mumsimon"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: восковидные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Waxy casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-21 "Silindrlar: donador"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: зернистые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Granular casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-22 "Silindrlar: eritrotsitar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: эритроцитарные"
    * ^designation[+].language = #en
    * ^designation[=].value = "RBC casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-23 "Silindrlar: leykotsitar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: лейкоцитарные"
    * ^designation[+].language = #en
    * ^designation[=].value = "WBC casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-24 "Silindrlar: epitelial"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: эпителиальные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial casts [#/area] in Urine sediment by Microscopy LPF"

  * #lab-pan-25 "Shilliq"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Urine sediment by Light microscopy"

  * #lab-pan-26 "Tuzlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соли"
    * ^designation[+].language = #en
    * ^designation[=].value = "Crystals [Presence] in Urine sediment by Light microscopy"

  * #lab-pan-27 "Bakteriyalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Бактерии"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Urine sediment by Light microscopy"

* #lab-pan-B "Najasning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macroscopic stool analysis"

  * #lab-pan-28 "Miqdori"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Volume of Stool"

  * #lab-pan-29 "Konsistensiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Consistency of Stool"

  * #lab-pan-30 "Shakli"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Форма"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Stool"

  * #lab-pan-31 "Hidi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Stool"

  * #lab-pan-32 "Rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color of Stool"

  * #lab-pan-33 "Muhit (pH reaksiyasi)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среда (реакция pH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "pH of Stool"

  * #lab-pan-34 "Shilliq"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Stool by Light microscopy"

  * #lab-pan-35 "Qon"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кровь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Presence] in Stool from gastrointestinal"

  * #lab-pan-36 "Hazm bo‘lmagan ovqat qoldiqlari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Непереваренные остатки пищи"
    * ^designation[+].language = #en
    * ^designation[=].value = "Undigested food [Presence] in Stool"

  * #lab-pan-37 "Yashirin qonga reaksiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на скрытую кровь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Presence] in Stool from gastrointestinal lower by Immunoassay --1st specimen"

  * #lab-pan-38 "Sterkobilinga reaksiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на стеркобилин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stercobilin [Presence] in Stool"

  * #lab-pan-39 "Bilirubinga reaksiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.total [Presence] in Stool"

* #lab-pan-BB "Najasning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic stool analysis"

  * #lab-pan-40 "Mushak tolalari: ko‘ndalang chiziqli"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мышечные волокна:С исчерченностью"
    * ^designation[+].language = #en
    * ^designation[=].value = "Meat fibers [Presence] in Stool by Light microscopy"

  * #lab-pan-41 "Mushak tolalari: ko‘ndalang chiziqsiz"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мышечные волокна:Без исчерченности"
    * ^designation[+].language = #en
    * ^designation[=].value = "Meat fibers [Presence] in Stool by Light microscopy"

  * #lab-pan-42 "Biriktiruvchi to‘qima"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соединительная ткань"
    * ^designation[+].language = #en
    * ^designation[=].value = "Connective tissue [Presence] in Stool by Light microscopy"

  * #lab-pan-43 "Neytral yog‘"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Жир нейтральный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fat.neutral [Presence] in Stool"

  * #lab-pan-44 "Yog‘ kislotalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Жирные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fatty acids [Presence] in Stool"

  * #lab-pan-45 "Sovunlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мыла"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fatty acid salts [Presence] in Stool by Light microscopy"

  * #lab-pan-46 "O‘simlik kletchatkasi (hazm bo‘ladigan)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Растительная клетчатка перевариваемая"
    * ^designation[+].language = #en
    * ^designation[=].value = "Vegetable fibers [Presence] in Stool by Light microscopy"

  * #lab-pan-47 "Kraxmal"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Крахмал"
    * ^designation[+].language = #en
    * ^designation[=].value = "Starch granules [Presence] in Stool by Light microscopy"

  * #lab-pan-48 "Yodofil flora"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Йодофильная флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Iodophilic bacteria [Presence] in Stool by Light microscopy"

  * #lab-pan-49 "Kristallar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кристаллы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Crystals [type] in Stool by Light microscopy"

  * #lab-pan-50 "Shilliq"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Stool by Light microscopy"

  * #lab-pan-51 "Epiteliy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Stool by Light microscopy"

  * #lab-pan-52 "Leykotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [Presence] in Stool by Light microscopy"

  * #lab-pan-53 "Eritrotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Stool by Light microscopy"

  * #lab-pan-54 "Sodda parazitlar (protozoylar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Простейшие"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protozoa identified in Specimen"

  * #lab-pan-55 "Gelmint tuxumlari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Яйца глистов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ova and parasites identified in Stool by Light microscopy"

  * #lab-pan-56 "Achitqi zamburug‘lar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Дрожжевые грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Yeast [Presence] in Stool by Light microscopy"

* #lab-pan-C "Sitologik tahlil (mazok)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитологическое исследование(мазок)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"

  * #lab-pan-57 "Leykotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"

  * #lab-pan-58 "Epitelial hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителиалные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Specimen by Wet preparation"

  * #lab-pan-59 "Mikroflora"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микрофлора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Wet preparation"

  * #lab-pan-60 "Gonokokklar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гонококки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"

  * #lab-pan-61 "Trichomonadalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Трихомонады"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"

  * #lab-pan-62 "Zamburug‘lar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Yeast [Presence] in Genital specimen by Wet preparation"

* #lab-pan-D "Qon koagulogrammasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коагулограммы крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood Coagulation panel"

  * #lab-pan-63 "Protrombin indeks"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Протромбиновый индекс"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prothrombin activity (Quick) [Ratio] in Platelet poor plasma by Coagulation assay"

  * #lab-pan-64 "Protrombin vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Протромбиновое время"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prothrombin time (PT) [Time] in Platelet poor plasma by Coagulation assay"

  * #lab-pan-65 "Tromin vaqti (TB)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбиновое время (ТВ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thrombin time (TT) [Time] in Platelet poor plasma by Coagulation assay"

  * #lab-pan-66 "Fibrinogen"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фибриноген"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"

  * #lab-pan-67 "Fibrin-monomer eruvchi komplekslari (FMEK)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Растворимые фибрин-мономерные комплексы (РФМК)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fibrin monomer [Presence] in Platelet poor plasma by Hemagglutination"

  * #lab-pan-68 "Plazmaning geparinga tolerantligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Толерантность плазмы к гепарину"
    * ^designation[+].language = #en
    * ^designation[=].value = "Clotting time of Blood by Heparin protamine titration"

  * #lab-pan-69 "Rekalsifikatsiya vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время рекальцификации"
    * ^designation[+].language = #en
    * ^designation[=].value = "Recalcification time in Platelet poor plasma by Coagulation assay"

  * #lab-pan-70 "МНО"
    * ^designation[0].language = #ru
    * ^designation[=].value = "МНО (Международное нормализованное отношение)"
    * ^designation[+].language = #en
    * ^designation[=].value = "INR (International normalized ratio) in Platelet poor plasma by Coagulation assay"

  * #lab-pan-71 "Trombotest"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромботест"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thrombotest [Interpretation] in Platelet poor plasma"

  * #lab-pan-72 "Qisman faollashtirilgan tromboplastin vaqti (ҚФТВ)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Частично активированное тромбопластиновое время (ЧАСТВ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Activated partial thromboplastin time (APTT) [Time] in Platelet poor plasma by Coagulation assay"

  * #lab-pan-73 "Etanol"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Этанол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ethanol [Presence] in Blood"

* #lab-pan-E "Umumiy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий анализ крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"

  * #lab-pan-74 "Gemoglobin (HB)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гемоглобин (HB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"

  * #lab-pan-75 "Eritrotsitlar (RBC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты (RBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"

  * #lab-pan-76 "Rang ko‘rsatkichi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цветовой показатель"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color index"

  * #lab-pan-77 "Eritrotsitlarning o‘rtacha hajmi (MCV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объём эритроцитов (MCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCV [Entitic volume] by Automated count"

  * #lab-pan-78 "1 dona eritrotsitdagi gemoglobin miqdori (MCH)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среднее содержание гемоглобина в одном эритроците (MCH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCH [Entitic mass] by Automated count"

  * #lab-pan-79 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средняя концентрация гемоглобина в эритроците (MCHC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCHC [Mass/volume] by Automated count"

  * #lab-pan-80 "Eritrotsitlar anizotsitozi (RDW-CV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз эритроцитов (RDW-CV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"

  * #lab-pan-81 "Gematokrit (HCT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гематокрит (HCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"

  * #lab-pan-82 "Trombotsitlar (PLT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбоциты (PLT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"

  * #lab-pan-83 "Trombotsitlarning o‘rtacha hajmi (MPV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объём тромбоцитов (MPV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"

  * #lab-pan-84 "Trombotsitlar anizotsitozi (PDW)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз тромбоцитов (PDW)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"

  * #lab-pan-85 "Trombokrit (PCT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбокрит (PCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"

  * #lab-pan-86 "Leykotsitlar (WBC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты (WBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"

  * #lab-pan-87 "Miyelotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes [#/volume] in Blood by Manual count"

  * #lab-pan-88 "Metamiyelotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes/100 leukocytes in Blood by Manual count"

  * #lab-pan-89 "Tayoqchasimon yadroli neytrofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.band form/100 leukocytes in Blood by Manual count"

  * #lab-pan-90 "Segment yadroli neytrofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"

  * #lab-pan-91 "Eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"

  * #lab-pan-92 "Bazofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"

  * #lab-pan-93 "Monotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"

  * #lab-pan-94 "Limfotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"

  * #lab-pan-95 "Plazmatik hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells monotypic population [Identifier] in Bone marrow by Flow cytometry (FC)"

  * #lab-pan-96 "Eritrotsitlarning cho‘kish tezligi (ECHT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Скорость оседания эритроцитов (СОЭ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"

  * #lab-pan-97 "Anizotsitoz (mikrotsitlar, makrotsitlar, megalotsitlar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз (микроциты, макроциты, мегалоциты)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet anisocytosis [Presence] in Blood by Light microscopy"

  * #lab-pan-98 "Poykilotsitoz"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пойкилоцитоз"
    * ^designation[+].language = #en
    * ^designation[=].value = "Poikilocytosis [Presence] in Blood by Light microscopy"

  * #lab-pan-99 "Eritrotsitlarning bazofil donadorligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильная зернистость эритроцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophilic stippling [Presence] in Blood by Light microscopy"

  * #lab-pan-100 "Polixromatofiliya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофилия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polychromasia [Presence] in Blood by Light microscopy"

  * #lab-pan-101 "Jolli tanachalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тельца Жолли"
    * ^designation[+].language = #en
    * ^designation[=].value = "Howell-Jolly bodies [Presence] in Blood by Light microscopy"

  * #lab-pan-102 "Kebot halqalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кольца Кебота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cabot rings [Presence] in Blood by Light microscopy"

  * #lab-pan-103 "Eritronormoblastlar (100 ta leykotsitga nisbatan)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритронормобласты (на 100 лейкоцитов)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood by Manual count"

  * #lab-pan-104 "Megaloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts/cells in Bone marrow"

  * #lab-pan-105 "Yadro gipersegmentatsiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гиперсегментация ядер"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.hypersegmented [Presence] in Blood by Light microscopy"

  * #lab-pan-106 "Toksogen donadorlik"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсическая зернистость"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxic granules [Presence] in Blood by Light microscopy"

* #lab-pan-CC "Общий анализ крови"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Umumiy qon tahlili"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"

  * #lab-pan-107 "Leykositlar (WBC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты (WBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"

  * #lab-pan-108 "Barcha neurofil elementlar (Neu#)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество нейтрофилов (Neu#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"

  * #lab-pan-109 "Limfotsitlar soni (Lym#)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество лимфоцитов (Lym#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"

  * #lab-pan-110 "Monotsitlar soni (Mon#)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество моноцитов (Mon#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes [#/volume] in Blood by Automated count"

  * #lab-pan-111 "Eozinofillar soni (Eos#)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество эозинофилов (Eos#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"

  * #lab-pan-112 "Bazofillar soni (Bas#)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество базофилов (Bas#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"

  * #lab-pan-113 "Neytrofillar yetilish indeksi (Neu%)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Нейтрофилы (Neu%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils/100 leukocytes in Blood by Automated count"

  * #lab-pan-114 "Limfotsitlar (Lym%)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты (Lym%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes/100 leukocytes in Blood by Automated count"

  * #lab-pan-115 "Monositlar (Mon%)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты (Mon%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"

  * #lab-pan-116 "Eozinofillar (Eos%)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы (Eos%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils/100 leukocytes in Blood by Automated count"

  * #lab-pan-117 "Bazofillar (Bas%)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы (Bas%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils/100 leukocytes in Blood by Automated count"

  * #lab-pan-118 "Eritrotsitlar (RBC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты (RBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"

  * #lab-pan-119 "Gemoglobin (HGB)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гемоглобин (HGB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"

  * #lab-pan-120 "Gematokrit (HCT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гематокрит (HCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"

  * #lab-pan-121 "Eritrotsit o'rtacha hajmi (MCV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объем эритроцита (MCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCV [Entitic volume] by Automated count"

  * #lab-pan-122 "1 dona eritrotsitdagi gemoglobinning miqdori (MCH)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среднее содержание гемоглобина в эритроците (MCH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCH [Entitic mass] by Automated count"

  * #lab-pan-123 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средняя концентрация гемоглобина в эритроците (MCHC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCHC [Mass/volume] by Automated count"

  * #lab-pan-124 "Eritrotsitlar anizotsitozi (RDW-CV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ширина распределения эритроцитов по объему (RDW-CV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"

  * #lab-pan-125 "Eritrotsit hajmi standart og‘ishi (RDW-SD)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Стандартное отклонение распределения эритроцитов по объему (RDW-SD)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"

  * #lab-pan-126 "Trombotsitlar (PLT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбоциты (PLT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"

  * #lab-pan-127 "Trombotsitlar o'rtacha hajmi (MPV)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объем тромбоцитов (MPV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"

  * #lab-pan-128 "Trombotsitlar anizotsitozi (PDW)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ширина распределения тромбоцитов (PDW)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"

  * #lab-pan-129 "Trombokrit (PCT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбокрит (PCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"

// changed english display
  * #lab-pan-130 "Yirik trombotsitlar soni (P-LCC)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество крупных тромбоцитов (P-LCC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Blood by Estimate"

  * #lab-pan-131 "Yirik trombotsitlar ulushi (P-LCR)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Доля крупных тромбоцитов (P-LCR)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelets Large/Platelets in Blood by Automated count"

  * #lab-pan-132 "Eritrotsitning cho'kish tezligi (ЭЧТ)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Скорость оседания эритроцитов (СОЭ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"

  * #lab-pan-133 "IMG#"
    * ^designation[0].language = #ru
    * ^designation[=].value = "IMG#"
    * ^designation[+].language = #en
    * ^designation[=].value = "Immature granulocytes [#/volume] in Blood by Automated count (IMG#)"

  * #lab-pan-134 "NRBC#"
    * ^designation[0].language = #ru
    * ^designation[=].value = "NRBC#"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood (NRBC#)"

  * #lab-pan-135 "NRBC%"
    * ^designation[0].language = #ru
    * ^designation[=].value = "NRBC%"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood (NRBC%)"

  * #lab-pan-136 "Miyelositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes [#/volume] in Blood"

  * #lab-pan-137 "Metamiyelositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes [Presence] in Blood"

  * #lab-pan-138 "Tayoqcha yadroli neytrofil"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Tayoqcha yadroli neytrofil"
    * ^designation[+].language = #en
    * ^designation[=].value = "Band form neutrophils/Leukocytes in Blood"

  * #lab-pan-139 "Plazmatik hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells/Leukocytes in Blood"

* #lab-pan-F "Biokimyoviy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биохимическое исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Comprehensive metabolic 2000 panel – Serum or Plasma"

  * #lab-pan-140 "Umumiy oqsil"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общий белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Serum or Plasma"

  * #lab-pan-141 "Albumin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альбумин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Albumin [Mass/volume] in Serum or Plasma"

  * #lab-pan-142 "Xolesterin (umumiy)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин (общий)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

  * #lab-pan-143 "Triglitseridlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Триглицериды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"

  * #lab-pan-144 "Glyukoza"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Глюкоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glucose [Mass/volume] in Serum or Plasma"

  * #lab-pan-145 "Mochevina"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мочевина"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urea nitrogen [Mass/volume] in Serum or Plasma"

  * #lab-pan-146 "Kreatinin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Креатинин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Creatinine [Mass/volume] in Serum or Plasma"

  * #lab-pan-147 "Umumiy bilirubin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин общий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.total [Mass/volume] in Serum or Plasma"

  * #lab-pan-148 "To‘g‘ri (bog‘langan) bilirubin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин прямой (связанный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.direct [Mass/volume] in Serum or Plasma"

  * #lab-pan-149 "Noto‘g‘ri (erkin) bilirubin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин непрямой (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.indirect [Mass/volume] in Serum or Plasma"

  * #lab-pan-150 "Alaninaminotransferaza (ALT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Аланинаминотрансфераза (АЛТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-151 "Aspartataminotransferaza (AST)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Аспартатаминотрансфераза (АСТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-152 "Laktatdegidrogenaza (LDG)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лактатдегидрогеназа (ЛДГ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-153 "Gammaglutamiltransferaza (GGT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гаммаглутамилтрансфераза (ГГТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-154 "Alfa-amilaza"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-амилаза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Amylase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-155 "Ishqoriy fosfataza (IF)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Щелочная фосфатаза (ИФ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"

  * #lab-pan-156 "Kaliy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Калий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Potassium [Moles/volume] in Serum or Plasma"

  * #lab-pan-157 "Natriy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Натрий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sodium [Moles/volume] in Serum or Plasma"

  * #lab-pan-158 "Kalsiy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кальций"
    * ^designation[+].language = #en
    * ^designation[=].value = "Calcium [Mass/volume] in Serum or Plasma"

  * #lab-pan-159 "Temir"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Железо"
    * ^designation[+].language = #en
    * ^designation[=].value = "Iron [Mass/volume] in Serum or Plasma"

  * #lab-pan-160 "Fosfor"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фосфор"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phosphate [Mass/volume] in Serum or Plasma"

  * #lab-pan-161 "Xlor"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хлор"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chloride [Moles/volume] in Serum or Plasma"

  * #lab-pan-162 "Magniy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Магний"
    * ^designation[+].language = #en
    * ^designation[=].value = "Magnesium [Mass/volume] in Serum or Plasma"

  * #lab-pan-163 "Eritrotsitlardagi magniy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Магний в эритроцитах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Magnesium [Moles/volume] in Red Blood Cells"
    
* #lab-pan-G "Gormonal qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гормональное исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hormone studies (panel) – Serum or Plasma"

  * #lab-pan-164 "T3"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Т3"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) [Mass/volume] in Serum or Plasma"

  * #lab-pan-165 "T4"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Т4"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) [Mass/volume] in Serum or Plasma"

  * #lab-pan-166 "TTG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ТТГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin (TSH) [Units/volume] in Serum or Plasma"

  * #lab-pan-167 "Estradiol"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эстрадиол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Estradiol (E2) [Mass/volume] in Serum or Plasma"

  * #lab-pan-168 "Testosteron"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тестостерон"
    * ^designation[+].language = #en
    * ^designation[=].value = "Testosterone [Mass/volume] in Serum or Plasma"

  * #lab-pan-169 "Kortizol"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кортизол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"

  * #lab-pan-170 "Prolaktin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролактин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolactin [Mass/volume] in Serum or Plasma"

  * #lab-pan-171 "LG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ЛГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Luteinizing hormone (LH) [Units/volume] in Serum or Plasma"

  * #lab-pan-172 "FSG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ФСГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Follicle stimulating hormone (FSH) [Units/volume] in Serum or Plasma"

  * #lab-pan-173 "Progesteron"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прогестерон"
    * ^designation[+].language = #en
    * ^designation[=].value = "Progesterone [Mass/volume] in Serum or Plasma"

  * #lab-pan-174 "PSA"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ПСА"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostate specific Ag (PSA) [Mass/volume] in Serum or Plasma"

* #lab-pan-H "Spermogramma tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование спермограммы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermogram analysis"

  * #lab-pan-175 "Hajm"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Объём"
    * ^designation[+].language = #en
    * ^designation[=].value = "Volume of Semen"

  * #lab-pan-176 "Rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen color [Type]"

  * #lab-pan-177 "Hidi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen odor [Type]"

  * #lab-pan-178 "Suyulish vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время разжижения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen liquefaction time"

  * #lab-pan-179 "Kislotalilik (pH"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кислотность (pH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen pH"

  * #lab-pan-180 "Qovushqoqlik"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вязкость"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen viscosity [Presence]"

  * #lab-pan-181 "1 ml dagi spermatozoidlar soni"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество сперматозоидов в 1 мл"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa [#/volume] in Semen"

  * #lab-pan-182 "Umumiy hajmdagi spermatozoidlar soni"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество сперматозоидов в общем объёме"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa total count [#] in Ejaculate"

  * #lab-pan-183 "Harakatchanlik - faol"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — активные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa progressive motility [#/volume] in Semen"

  * #lab-pan-184 "Harakatchanlik - sust"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — вялые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa non-progressive motility [#/volume] in Semen"

  * #lab-pan-185 "Harakatchanlik - harakatsiz"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — неподвижные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa immotile [#/volume] in Semen"

  * #lab-pan-186 "Tirik spermatozoidlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Живые сперматозоиды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa Viable/Spermatozoa in Semen"

  * #lab-pan-187 "Patologik shakldagi sermatozoidlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Патологические формы сперматозоидов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa abnormal forms [#/volume] in Semen"

  * #lab-pan-188 "Spermatogenez epiteliysi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий сперматогенеза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Semen by Light microscopy"

  * #lab-pan-189 "Leykositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Semen"

  * #lab-pan-190 "Letsitin donachalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лецитиновые зёрна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lecithin bodies [Presence] in Semen by Microscopy"

  * #lab-pan-191 "Agglyutinatsiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Агглютинация"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa agglutination [Presence] in Semen"

  * #lab-pan-192 "Fruktoza"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фруктоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fructose [Moles/volume] in Semen"

  * #lab-pan-193 "Limon kislotasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимонная кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Citric acid [Moles/volume] in Semen"

* #lab-pan-I "Balg'am tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ мокроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum analysis"

  * #lab-pan-194 "Miqdori"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Volume of Sputum"

  * #lab-pan-195 "Hidi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Odor of Lower respiratory specimen"

  * #lab-pan-196 "Rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum color [Type]"

  * #lab-pan-197 "Xususiyati (ta'rifi)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Характер (описание)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum gross description"

  * #lab-pan-198 "Aralashmalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Примеси"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum inclusions [Type]"

  * #lab-pan-199 "Konsistensiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Sputum"

  * #lab-pan-200 "Epiteliy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Sputum by Light microscopy"

  * #lab-pan-201 "Alveolyar makrofaglar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альвеолярные макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alveolar macrophages [#/volume] in Lower respiratory specimen by Manual count"

  * #lab-pan-202 "Leykositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Sputum by Light microscopy"

  * #lab-pan-203 "Eritrositalr"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Sputum by Light microscopy"

  * #lab-pan-204 "Tolalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Волокна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Elastic fibers [#/volume] in Lower respiratory specimen by Manual count"

  * #lab-pan-205 "Elastik tolalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эластические волокна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Elastic fibers [Presence] in Sputum by Light microscopy"

  * #lab-pan-206 "Kalsiylangan (toshga aylangan zarrachalar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Обызвествлённые (окаменевшие частицы)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Calcified bodies [Presence] in Sputum by Light microscopy"

  * #lab-pan-207 "Tuberkulyoz mikrobakteriyalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микобактерии туберкулёза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycobacterium tuberculosis [Presence] in Sputum by Microscopy (Ziehl–Neelsen stain)"

  * #lab-pan-208 "Eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils/Leukocytes in Sputum"

  * #lab-pan-209 "Zamburug'lar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fungus [Presence] in Sputum by KOH preparation"

  * #lab-pan-210 "Boshqa flora"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Другая флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria identified in Sputum by Culture"

  * #lab-pan-211 "Kurshman spirallari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Спирали Куршмана"
    * ^designation[+].language = #en
    * ^designation[=].value = "Curschmann's spirals [Presence] in Sputum by Light microscopy"

  * #lab-pan-212 "Sharko-Leyden kristallari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кристаллы Шарко–Лейдена"
    * ^designation[+].language = #en
    * ^designation[=].value = "Charcot–Leyden crystals [Presence] in Sputum by Light microscopy"

  * #lab-pan-213 "Atipik belgili hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки с атипичными признаками"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells atypical [Presence] in Sputum by Cytology"

* #lab-pan-J "Prostata bezi shirasi tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ секрета предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostate gland juice analysis"

  * #lab-pan-214 "Miqdori"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Volume of Prostatic fluid"

  * #lab-pan-215 "Rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color of Prostatic fluid"

// changed english display
  * #lab-pan-216 "Shaffofligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Stool"

  * #lab-pan-217 "Konsistensiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostatic fluid consistency [Type]"

  * #lab-pan-218 "Leykositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Prostatic fluid by Light microscopy"

  * #lab-pan-219 "Eritrositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-220 "Epiteliy"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-221 "Makrofaglar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Macrophages [#/area] in Prostatic fluid by Light microscopy"

  * #lab-pan-222 "Letsitin donachalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лецитиновые зёрна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lecithin bodies [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-223 "Amiloid tanachalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Амилоидные тельца"
    * ^designation[+].language = #en
    * ^designation[=].value = "Amyloid bodies [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-224 "Spermatozoidlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сперматозоиды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-225 "Trixomonadalar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Трихомонады"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-226 "Gonokokklar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гонококки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-227 "Boshqa flora"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Другая флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Prostatic fluid by Light microscopy"

  * #lab-pan-228 "Atipik belgili hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки с атипичными признаками"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells atypical [Presence] in Prostatic fluid by Cytology"

* #lab-pan-K "TORCH-infeksiya tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ на TORCH-инфекцию"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH-infection analysis"

  * #lab-pan-229 "Xlamidiya (IgG antitanachalar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хламидия (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydia trachomatis IgG Ab [Presence] in Serum by Immunoassay"

  * #lab-pan-230 "Toksopazmoz (IgG antitanachalar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсоплазмоз (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoassay"

  * #lab-pan-231 "Sitomegalovirus (IgG antitanachalar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum by Immunoassay"

  * #lab-pan-232 "Oddiy gerpes virusi (IgG antitanachalar)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "HIV 1+O+2 Ab [Units/volume] in Serum or Plasma"

  * #lab-pan-233 "Ureaplazma"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уреаплазма"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum DNA [Presence] in Specimen by NAA with probe detection"

* #lab-pan-L "O'n ikki barmoqli ichak shirasi tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование дуоденального сока"
  * ^designation[+].language = #en
  * ^designation[=].value = "Duodenal juice analysis"

  * #lab-pan-234 "Oshqozon tarkibi hajmi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Объем желудочного содержимого"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gastric juice volume"

  * #lab-pan-235 "Erkin HCl"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободная HCl"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gastric free hydrochloric acid"

  * #lab-pan-236 "Umumiy kislotalilik"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общая кислотность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Total gastric acidity"

  * #lab-pan-237 "O'n ikki barmoq ichakka o'tish vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время перехода в дуоденум"
    * ^designation[+].language = #en
    * ^designation[=].value = "Time to duodenal passage"

  * #lab-pan-238 "Rentgen nazorati"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Рентген контроль"
    * ^designation[+].language = #en
    * ^designation[=].value = "X-ray control performed"

  * #lab-pan-239 "A porsiya - ajralish vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A excretion time"

  * #lab-pan-240 "A porsiya - hajmi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A volume"

  * #lab-pan-241 "A porsiya - rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A color"

  * #lab-pan-242 "A porsiya - shaffofligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid clarity"

  * #lab-pan-243 "A porsiya - mikroskopiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

  * #lab-pan-244 "B porsiya - ajralish vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B excretion time"

  * #lab-pan-245 "B porsiya - hajmi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B volume"

  * #lab-pan-246 "B porsiya - rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B color"

  * #lab-pan-247 "B porsiya - billurbin ko'rsatgichi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – билирубин индекс"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin index in duodenal fluid"

  * #lab-pan-248 "B porsiya - mikroskopiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

  * #lab-pan-249 "C porsiya - ajralish vaqti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C excretion time"

  * #lab-pan-250 "C porsiya - hajmi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C volume"

  * #lab-pan-251 "C porsiya rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C color"

  * #lab-pan-252 "C porsiya  - shaffofligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid clarity"

  * #lab-pan-253 "C porsiya - mikroskopiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

  * #lab-pan-254 "Billurbin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.total [Mass/volume] in Body fluid"

  * #lab-pan-255 "O't kislotalari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Желчные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bile acid [Moles/volume] in Serum or Plasma"

  * #lab-pan-256 "Xolesterin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

  * #lab-pan-257 "Xolat-xolestering koeffisenti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холато-холестериновый коэффициент"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholate-cholesterol ratio"

  * #lab-pan-258 "Flora A, B, C"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Флора A, B, C"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacterial flora in bile"

* #lab-pan-M "Orqa miya suyuqligi (MS) tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование цереброспинальной жидкости (ликвора)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid (CSF) analysis"

  * #lab-pan-259 "Miqdori"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Volume of Cerebral spinal fluid"

  * #lab-pan-260 "Sentrefugadan keyingi rangi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет после центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color of Cerebral spinal fluid"

  * #lab-pan-261 "Sentrefugagacha ksantoxromiya"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ксантохромия до центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "Xanthochromia [Presence] of Cerebral spinal fluid Qualitative"

  * #lab-pan-262 "Sentrefugadan keyingi shaffofligi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность после центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "Clarity of Cerebral spinal fluid"

  * #lab-pan-263 "Oqsil"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Cerebrospinal fluid"

  * #lab-pan-264 "Pandi reaksiyasi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция Панди"
    * ^designation[+].language = #en
    * ^designation[=].value = "Pandy test [Interpretation] in Cerebrospinal fluid"

  * #lab-pan-265 "Limfositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Cerebrospinal fluid by Manual count"

  * #lab-pan-266 "Eozinoffillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Cerebrospinal fluid by Manual count"

  * #lab-pan-267 "Neytrofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Cerebrospinal fluid by Manual count"

  * #lab-pan-268 "Makrofaglar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes+Macrophages [Presence] in Cerebral spinal fluid by Light microscopy"

  * #lab-pan-269 "O'zgargan hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Изменённые клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Abnormal lymphocytes/Leukocytes in Cerebral spinal fluid"

  * #lab-pan-270 "Poliblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полибласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polynuclear cells [Presence] in Cerebrospinal fluid by Light microscopy"

  * #lab-pan-271 "Plazmatik hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells/Leukocytes in Cerebral spinal fluid by Microscopy"

  * #lab-pan-272 "Araxnoidal endoteliy hujayralari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки арахноидального эндотелия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"

  * #lab-pan-273 "Ependima hujayralari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки эпендимы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"

  * #lab-pan-274 "Donador sharlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Зернистые шары"
    * ^designation[+].language = #en
    * ^designation[=].value = "Granular corpuscles [Presence] in Cerebrospinal fluid by Light microscopy"

  * #lab-pan-275 "Zamburug'lar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fungi [Presence] in Cerebrospinal fluid by Light microscopy"

  * #lab-pan-276 "Eritrositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Cerebrospinal fluid by Manual count"

* #lab-pan-N "Suyak ilik punktati tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ пунктата костного мозга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bone marrow aspirate analysis"

  * #lab-pan-277 "Miyelokariotsitlar soni"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество миелокариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated cells [#/volume] in Bone marrow"

  * #lab-pan-278 "Megakariotsitlar soni"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество мегакариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryocytes [Presence] in Bone marrow by Light microscopy"

  * #lab-pan-279 "Yetilmagan blastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Незрелые бласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Blasts/cells in Bone marrow"

  * #lab-pan-280 "Miyeloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myeloblasts/cells in Bone marrow by Manual count"

  * #lab-pan-281 "Promiyelotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promyelocytes/cells in Bone marrow by Manual count"

  * #lab-pan-282 "Miyelotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes/cells in Bone marrow by Manual count"

  * #lab-pan-283 "Metamiyelotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes/cells in Bone marrow by Manual count"

  * #lab-pan-284 "Tayoqchayadrolilar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Band form neutrophils/cells in Bone marrow by Manual count"

  * #lab-pan-285 "Segmentyadrolilar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Segmented neutrophils/Leukocytes in Bone marrow by Manual count"

  // In Form 085, the analytes lab-pan-282, 283, 284, and 285 are repeated three times, and the only difference between them is the reference values. This should be taken into consideration during implementation in the Admin panel.

  * #lab-pan-294 "Limfoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphoblasts/Leukocytes in Bone marrow by Manual count"

  * #lab-pan-295 "Prolimfotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolymphocytes/cells in Bone marrow by Manual count"

  * #lab-pan-296 "Limfotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes/cells in Bone marrow by Manual count"

  * #lab-pan-297 "Monoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Монобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monoblasts/Leukocytes in Bone marrow by Manual count"

  * #lab-pan-298 "Promonotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промоноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promonocytes/cells in Bone marrow by Manual count"

  * #lab-pan-299 "Monotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/cells in Bone marrow by Manual count"

  * #lab-pan-300 "Leyko-eritroblastik nisbat"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейко-эритробластическое соотношение"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myeloid cells/Erythroid cells [# Ratio] in Bone marrow"

  * #lab-pan-301 "Neytrofillar yetilish indeksi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания нейтрофилов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Segmented neutrophils/cells in Bone marrow"

  * #lab-pan-302 "Proeritroblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проэритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Pronormoblasts/cells in Bone marrow by Manual count"

  * #lab-pan-303 "Bazofil eritroblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts Basophils/cells in Bone marrow by Manual count"

  * #lab-pan-304 "Polixromafil eritroblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

  * #lab-pan-305 "Oksifil eritroblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts oxyphilic+polychromatophilic/Normoblasts.total in Bone marrow by Manual count"

  * #lab-pan-306 "Polixromatofil normoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные нормобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts Polychromatophilic/cells in Bone marrow by Manual count"

  * #lab-pan-307 "Oksifil normoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные нормобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts Orthochromic/cells in Bone marrow by Manual count"

  * #lab-pan-308 "Promegaloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts/cells in Bone marrow by Manual count"

  * #lab-pan-309 "Bazofil megaloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts/cells in Bone marrow by Manual count"

  * #lab-pan-310 "Polixromatofil megaloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

  * #lab-pan-311 "Oksifil megaloblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

  * #lab-pan-312 "Megakarioblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегакариобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryoblasts/cells in Bone marrow by Manual count"

  * #lab-pan-313 "Promegakariotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промегакариоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promegakaryocytes/100 cells in Bone marrow by Manual count"

  * #lab-pan-314 "Megokariotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегакариоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryocytes/100 cells in Bone marrow by Manual count"

  * #lab-pan-315 "Retikulyar hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ретикулярные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reticular cells [#/100 cells] in Bone marrow by Manual count"

  * #lab-pan-316 "Plazmoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasmablasts/100 leukocytes in Bone marrow by Manual count"

  * #lab-pan-317 "Proplazmotsitlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проплазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proplasmocytes/100 leukocytes in Bone marrow by Manual count"

  * #lab-pan-318 "Plazmotik xujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells/100 leukocytes in Bone marrow by Manual count"

  * #lab-pan-319 "Xujayralar mitozi granulopoez"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Митоз клеток гранулопоэза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelopoiesis cells mitosis [Presence] in Bone marrow"

  * #lab-pan-320 "Eritropoez hujayra mitozi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Митоз клеток эритропоэза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythropoiesis assessment in Bone marrow Narrative"

  * #lab-pan-321 "Eritroblast va normoblastlar sitoplazmasining yetilish indeksi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс зрелости цитоплазмы эритробластов и нормобластов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytoplasmic maturation index of erythroid cells in Bone marrow"

* #lab-pan-O "Antistreptolizin-0, S- reaktiv oqsili va revmatoid omiliga qonni tekshirish tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ крови на антистрептолизин-О, С-реактивный белок и ревматоидный фактор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood analysis for antistreptolysin-0, S-reactive protein and rheumatoid factor"

  * #lab-pan-322 "S-reyeaktiv oqsil"
    * ^designation[0].language = #ru
    * ^designation[=].value = "С-реактивный белок (CRP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C reactive protein [Presence] in Serum or Plasma"

  * #lab-pan-323 "Revmotoid omili"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ревматоидный фактор (RF)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Rheumatoid factor [Presence] in Serum"

  * #lab-pan-324 "Antistriptolizin-O"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антистрептолизин-O (ASO)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Streptolysin O Ab [Presence] in Serum"

* #lab-pan-P "Klinik - diagnostik laboratoriya miyelogramma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "КЛИНИК-ДИАГНОСТИК ЛАБОРАТОРИЯ МИЕЛОГРАММА"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical - diagnostic laboratory myelogram"

  * #lab-pan-325 "Suyak ko'migi hujayralari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки костного мозга"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bone marrow cells"

  * #lab-pan-326 "Blastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Бласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Blasts"

  * #lab-pan-327 "Barcha neytrofil elementlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Все нейтрофильные элементы"
    * ^designation[+].language = #en
    * ^designation[=].value = "All neutrophil elements"

  * #lab-pan-328 "Promiyelositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promyelocytes"

  * #lab-pan-329 "Miyelositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes"

  * #lab-pan-330 "Metamiyelositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes"

  * #lab-pan-331 "Tayoqcha yadrolilar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Band neutrophils"

  * #lab-pan-332 "Segment yadrolilar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Segmented neutrophils"

  * #lab-pan-333 "Eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils"

  * #lab-pan-334 "- Miyelosit eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофильные миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Eosinophilic myelocytes"

  * #lab-pan-335 "- Metamiyelosit eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофильные метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Eosinophilic metamyelocytes"

  * #lab-pan-336 "- Tayoqcha yadroli eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Band eosinophils"

  * #lab-pan-337 "- Segment yadroli eozinofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Segmented eosinophils"

  * #lab-pan-338 "Bazofillar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils"

  * #lab-pan-339 "Limfoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphoblasts"

  * #lab-pan-340 "Prolimfositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolymphocytes"

  * #lab-pan-341 "Limfositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes"

  * #lab-pan-342 "Monoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Монобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monoblasts"

  * #lab-pan-343 "Promonositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промоноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promonocytes"

  * #lab-pan-344 "Monositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes"

  * #lab-pan-345 "Plazmoblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasmablasts"

  * #lab-pan-346 "Proplazmositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проплазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proplasmacytes"

  * #lab-pan-347 "Plazmositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells"

  * #lab-pan-348 "Retikulyar hujayralar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ретикулярные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reticular cells"

  * #lab-pan-349 "Barcha eritron elementlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Все элементы эритрона"
    * ^designation[+].language = #en
    * ^designation[=].value = "All erythroid elements"

  * #lab-pan-350 "Eritroblastlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts"

  * #lab-pan-351 "Pronormositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пронормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Pronormocytes"

  * #lab-pan-352 "Bazofil normositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophilic normocytes"

  * #lab-pan-353 "Polixromotofil normositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polychromatophilic normocytes"

  * #lab-pan-354 "Oksifil normositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Oxyphilic normocytes"

  * #lab-pan-355 "Mitoz shakllari"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фигуры митоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mitotic figures"

  * #lab-pan-356 "Indekslar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индексы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Indices"

  * #lab-pan-357 "Leyko-eritroblastik nisbat"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейко-эритробластическое соотношение"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukoerythroblastic ratio"

  * #lab-pan-358 "Eritrokariositlar yetilish indeksi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания эритрокариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrokaryocyte maturation index"

  * #lab-pan-359 "Neytrofillar yetilish indeksi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания нейтрофилов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophil maturation index"

* #lab-pan-Q "Qon zardobidagi lipoproteinlarni tekshirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование сывороточных липопротеинов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Serum lipoprotein analysis"

  * #lab-pan-360 "Umumiy xolesterin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общий холестерин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

  * #lab-pan-361 "Triglitserid"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Триглицериды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"

  * #lab-pan-362 "XS-LPVP"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПВП (липопротеины высокой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"

  * #lab-pan-363 "XS-LPNP"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПНП (липопротеины низкой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in HDL [Mass/volume] in Serum or Plasma"

  * #lab-pan-364 "XS-LPONP"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПОНП (липопротеины очень низкой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in VLDL [Mass/volume] in Serum or Plasma by calculation"

  * #lab-pan-365 "Xolesterin koeffisenti"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Коэффициент атерогенности (коэффициент холестерина)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol.total/Cholesterol in HDL [Mass Ratio] in Serum or Plasma"

* #lab-pan-R "Siydik shakliy elementlar soni tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование подсчета образцов мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine elemental count analysis"

  * #lab-pan-366 "Leykositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты в моче (тест-полоска)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Urine by Test strip"

  * #lab-pan-367 "Eritrositlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты в моче (тест-полоска)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Urine by Test strip"

  * #lab-pan-368 "Silindrlar"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры в осадке мочи"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts [#/area] in Urine sediment"

* #lab-pan-S "TORCH infeksiyasi IXLA  tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ на TORCH-инфекции методом ИХЛА"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH infection IXLA analysis"

  * #lab-pan-369 "Cytomegalovirus Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус IgG"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"

  * #lab-pan-370 "Gerpes simplex virus1/2 Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса 1/2 типа IgG"
    * ^designation[+].language = #en
    * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Units/volume] in Serum by Immunoassay"

  * #lab-pan-371 "Toxoplasma gondii IgG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Toxoplasma gondil Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum"

  * #lab-pan-372 "Chlamydia pneumoniae IgG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Chlamedia pneumonia Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydophila pneumoniae IgG Ab [Presence] in Serum"

  * #lab-pan-373 "Mycoplasma hominis IgG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Mycoplasma hominis Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycoplasma hominis Ab [Presence] in Serum"

  * #lab-pan-374 "Ureaplasma urealyticum IgG"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ureaplasma urealyticum Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture"

* #lab-pan-T "Neonatal retest skrining tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неонатальный ретест-скрининг анализ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neonatal retest screening analysis"

  * #lab-pan-375 "Immunoreaktiv tripsin (IRT)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммунореактивный трипсин (IRT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trypsinogen I Free [Mass/volume] in DBS"

  * #lab-pan-376 "Fenilalanin (PA)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фенилаланин (PA)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phenylalanine [Moles/volume] in DBS"

  * #lab-pan-377 "Tireotrop gormon (TSH)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тиреотропный гормон (TSH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin [Units/volume] in Serum or Plasma"

* #lab-pan-U "Immunoxemilyuminestsent tahlil (IXLA)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммунохемилюминесцентный анализ (ИХЛА)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immunochemiluminescent analysis (IXLA)"

  * #lab-pan-378 "SA 125"
    * ^designation[0].language = #ru
    * ^designation[=].value = "CA 125"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cancer Ag 125 [Units/volume] in Serum or Plasma"

  * #lab-pan-379 "HВsAg quant"
    * ^designation[0].language = #ru
    * ^designation[=].value = "HBsAg количественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis B virus surface Ag [Presence] in Serum"

  * #lab-pan-380 "Anti-HCV"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к вирусу гепатита C (Anti-HCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"

  * #lab-pan-381 "Insulin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Инсулин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Insulin [Units/volume] in Serum or Plasma"

  * #lab-pan-382 "Insulinga o'xshash o'sish omili (IGF-1)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Инсулиноподобный фактор роста (IGF-1)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Insulin-like growth factor-I [Mass/volume] in Serum or Plasma"

  * #lab-pan-383 "Somatotrop gormon (CH)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соматотропный гормон (СТГ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Somatotropin [Mass/volume] in Serum or Plasma"

  * #lab-pan-384 "Foliyevaya kislota (FA)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фолиевая кислота (FA)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Folate [Mass/volume] in Serum or Plasma"

  * #lab-pan-385 "25-ON Vitamin D"
    * ^designation[0].language = #ru
    * ^designation[=].value = "25-ОН витамин D"
    * ^designation[+].language = #en
    * ^designation[=].value = "25-Hydroxyvitamin D3+25-Hydroxyvitamin D2 [Mass/volume] in Serum or Plasma"

  * #lab-pan-386 "Alfa-fetoprotein (CAFP)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-фетопротеин (AFP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"

  * #lab-pan-387 "Mioglobin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миоглобин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myoglobin [Mass/volume] in Serum or Plasma"

  * #lab-pan-388 "Vitamin V 12"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Витамин B12"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cobalamin (Vitamin B12) [Mass/volume] in Serum or Plasma"

  * #lab-pan-389 "Gomoctictein"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гомоцистеин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Homocysteine [Moles/volume] in Serum or Plasma"

  * #lab-pan-390 "Ferritin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ферритин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ferritin [Mass/volume] in Serum or Plasma"

  * #lab-pan-391 "Кreatinkinaza -МВ"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Креатинкиназа-МВ (CK-MB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Creatine kinase.MB [Mass/volume] in Serum or Plasma"

  * #lab-pan-392 "Troponin I"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тропонин I"
    * ^designation[+].language = #en
    * ^designation[=].value = "Troponin I.cardiac [Mass/volume] in Serum or Plasma"

  * #lab-pan-393 "Prokalsitonin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прокальцитонин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Procalcitonin [Mass/volume] in Serum or Plasma"

  * #lab-pan-394 "Kortizol"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кортизол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"

  * #lab-pan-395 "HIV Ab/Ag Combi"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Комбинированный тест на ВИЧ (HIV Ag/Ab Combo)"
    * ^designation[+].language = #en
    * ^designation[=].value = "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"

* #lab-pan-V "Tandem mass-spektrometriya tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование методом тандемной масс-спектрометрии (MS/MS)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tandem mass spectrometry analysis"

  * #lab-pan-396 "ALA(alanine)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ALA (аланин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alanine [Moles/volume] in Serum or Plasma"

  * #lab-pan-397 "ARG (arginine)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ARG (аргинин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Arginine [Moles/volume] in Serum or Plasma"

  * #lab-pan-398 "CIT (sitruliv)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "CIT (цитруллин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Citrulline [Moles/volume] in Serum or Plasma"

  * #lab-pan-399 "GLY (glisin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "GLY (глицин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glycine [Moles/volume] in Serum or Plasma"

  * #lab-pan-400 "LEU (leysin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "LEU (лейцин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leucine [Moles/volume] in Serum or Plasma"

  * #lab-pan-401 "MET(metionin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "MET (метионин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Methionine [Moles/volume] in DBS"

  * #lab-pan-402 "ORN (оrnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "ORN (орнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ornithine [Moles/volume] in Serum or Plasma"

  * #lab-pan-403 "PHE (fenilalanin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "PHE (фенилаланин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phenylalanine [Moles/volume] in Serum or Plasma"

  * #lab-pan-404 "PRO (prolin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "PRO (пролин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proline [Moles/volume] in DBS"

  * #lab-pan-405 "SA (suksinilasiton)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "SA (сукцинилацетон)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Succinylacetone [Moles/volume] in DBS"

  * #lab-pan-406 "TYR (tirozin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "TYR (тирозин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tyrosine [Moles/volume] in DBS"

  * #lab-pan-407 "VAL (valin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "VAL (валин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Valine [Moles/volume] in DBS"

  * #lab-pan-408 "CO (erkin karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "CO (свободный карнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Carnitine free (C0) [Moles/volume] in DBS"

  * #lab-pan-409 "C2 (asetilkarnitil)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C2 (ацетилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Acetylcarnitine (C2) [Moles/volume] in DBS"

  * #lab-pan-410 "C3 (propionilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C3 (пропионилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Propionylcarnitine (C3) [Moles/volume] in DBS"

  * #lab-pan-411 "C4 (butirilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C4 (бутирилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Butyrylcarnitine (C4) [Moles/volume] in DBS"

  * #lab-pan-412 "С4ОН/C3DC"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C4OH/C3DC (гидроксибутирилкарнитин/малонилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Malonylcarnitine (C3-DC)+3-Hydroxybutyrylcarnitine (C4-OH) [Moles/volume] in DBS"

  * #lab-pan-413 "С5 (izovalerilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5 (изовалерилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Isovalerylcarnitine (C5) [Moles/volume] in DBS"

  * #lab-pan-414 "С5:1(tiglilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5:1 (тиглилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tiglylcarnitine (C5:1) [Moles/volume] in DBS"

  * #lab-pan-415 "С5DC\\C6OH"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5DC/C6OH (глутарилкарнитин/гидроксигексаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glutarylcarnitine (C5-DC)+3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"

  * #lab-pan-416 "C5OH\\C4DC"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5OH/C4DC (гидроксиизовалерилкарнитин/сукцинилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"

  * #lab-pan-417 "C6 (teksanoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C6 (гексаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hexanoylcarnitine (C6) [Moles/volume] in DBS"

  * #lab-pan-418 "C6DC (teksanoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C6DC (адипоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Adipoylcarnitine (C6-DC) [Moles/volume] in DBS"

  * #lab-pan-419 "C8 (оktanoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C8 (октаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Octanoylcarnitine (C8) [Moles/volume] in DBS"

  * #lab-pan-420 "C8: 1(oktenoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C8:1 (октеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Octenoylcarnitine (C8:1) [Moles/volume] in DBS"

  * #lab-pan-421 "C10 (dikanoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10 (деканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decanoylcarnitine (C10) [Moles/volume] in DBS"

  * #lab-pan-422 "C10:1 (desinoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10:1 (деценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decenoylcarnitine (C10:1) [Moles/volume] in DBS"

  * #lab-pan-423 "C10:2 (dekadienoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10:2 (декадиеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decadienoylcarnitine (C10:2) [Moles/volume] in DBS"

  * #lab-pan-424 "C12 (dodekanoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C12 (додеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Dodecanoylcarnitine (C12) [Moles/volume] in DBS"

  * #lab-pan-425 "C12:1 (deodesenoikornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C12:1 (додеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Dodecenoylcarnitine (C12:1) [Moles/volume] in DBS"

  * #lab-pan-426 "C1 (formilkarnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C1 (формилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C1 (Formylcarnitine)"

  * #lab-pan-427 "C14:1 (tetradesenoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14:1 (тетрадценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS"

  * #lab-pan-428 "C14:2 (tetradekadienoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14:2 (тетрадцадиеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tetradecadienoylcarnitine (C14:2) [Moles/volume] in DBS"

  * #lab-pan-429 "C14OH (3-gidroksi- tetradekadienoilkornitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14OH (3-гидрокситетрадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxytetradecanoylcarnitine (C14-OH) [Moles/volume] in DBS"

  * #lab-pan-430 "С16 (Palmitoylcarnitine)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16 (пальмитоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Palmitoylcarnitine (C16) [Moles/volume] in Blood"

  * #lab-pan-431 "C16:1 (gексadetsenoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16:1 (гексадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C16:1 (Hexadecenoylcarnitine)"

  * #lab-pan-432 "C16:1OH (3-gidroksi-gексadetsenoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16:1ОН (3-гидрокси-гексадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxypalmitoleylcarnitine (C16:1-OH) [Moles/volume] in DBS"

  * #lab-pan-433 "C16OH (3-gidroksi-gексadekanoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C16OH (3-гидрокси-гекадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"

  * #lab-pan-434 "C18 (stearoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18 (октадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stearoylcarnitine (C18) [Moles/volume] in DBS"

  * #lab-pan-435 "C18:1 (oktadetsenoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:1 (октадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Oleoylcarnitine (C18:1) [Moles/volume] in DBS"

  * #lab-pan-436 "C18:1OH (3-gidroksi-oktadetsenoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:1OH (3-гидрокси-октадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxyoleoylcarnitine (C18:1-OH) [Moles/volume] in DBS"

  * #lab-pan-437 "C18:2 (linoleil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:2 (линолеилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Linoleoylcarnitine (C18:2) [Moles/volume] in DBS"

  * #lab-pan-438 "C18OH (3-gidroksi-oktadekanoil karnitin)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18OH (3-гидрокси-октадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxystearoylcarnitine (C18-OH) [Moles/volume] in DBS"

* #lab-pan-W "Vasserman reaksiyasiga qon tahlili va boshqalar (Zaxm uchun serologik reaksiyalar paneli)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ крови на реакцию Вассермана и другие (панель серологических реакций на сифилис)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treponema pallidum Ab [Presence] in Serum by Immunoassay"

  * #lab-pan-439 "Vasserman bo'yicha natija"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Вассерману"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum by VDRL"

  * #lab-pan-440 "Kan natija"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Кану"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

  * #lab-pan-441 "Zaks vitebskiy natija"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Заксу-Витебскому"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

  * #lab-pan-442 "Zaks georgiy natija"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Заксу-Георгию"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

  * #lab-pan-443 "Meynik natija"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Мейнику"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

* #lab-pan-X "Klinik - diagnostik laboratoriya IXLA tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клинико-диагностическая лаборатория, ИХЛА анализ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical diagnostic laboratory, CLIA (chemiluminescent immunoassay) analysis"

  * #lab-pan-444 "Cytomegalovirus Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus immune globulin given [Volume]"

  * #lab-pan-445 "Gerpes simplex virus1/2 Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса 1/2 типа (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Units/volume] in Serum"

  * #lab-pan-446 "Toxoplasma gondil Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсоплазма (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum"

  * #lab-pan-447 "Chlamedia pneumonia Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хламидия пневмонии (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydophila pneumoniae IgG Ab [Units/volume] in Serum"

  * #lab-pan-448 "Mycoplasma hominis Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микоплазма хоминис (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycoplasma pneumoniae IgG Ab [Presence] in Serum"

  * #lab-pan-449 "Ureaplasma urealyticum Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уреаплазма уреалитикум (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture"

  * #lab-pan-450 "Anti -dsDNA Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к двуспиральной ДНК (IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "DNA double strand IgG Ab [Presence] in Serum"

  * #lab-pan-451 "Kollogen  C IV"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Коллаген IV типа"
    * ^designation[+].language = #en
    * ^designation[=].value = "Collagen crosslinked C-telopeptide [Mass/volume] in Urine"

  * #lab-pan-452 "Gialuronovaya kislota (NA)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гиалуроновая кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Collagen type 4 Ag [Presence] in Tissue by Immune stain"

  * #lab-pan-453 "Foliyevaya kislota (FA)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фолиевая кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Folate [Mass/volume] in Blood"

  * #lab-pan-454 "Immunoglobulin Ig A"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин A (IgA)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgA [Presence] in Serum"

  * #lab-pan-455 "Immunoglobulin Ig M"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин M (IgM)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgM [Presence] in Serum"

  * #lab-pan-456 "Immunoglobulin Ig G"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин G (IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgG [Presence] in Serum"

  * #lab-pan-457 "Anti-SSP (Anti-CCP)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к циклическому цитруллинированному пептиду (Anti-CCP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cyclic citrullinated peptide IgG Ab [Presence] in Serum"

  * #lab-pan-458 "25-ON Vitamin D"
    * ^designation[0].language = #ru
    * ^designation[=].value = "25-ОН витамин D"
    * ^designation[+].language = #en
    * ^designation[=].value = "25-Hydroxyvitamin D3+25-Hydroxyvitamin D2 [Mass/volume] in Serum or Plasma"

  * #lab-pan-459 "Alfa-fetoprotein (CAFP)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-фетопротеин (АФП)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alpha-1-Fetoprotein [Presence] in Serum or Plasma"

  * #lab-pan-460 "Epshteyn-Barr (EBV VCA IgM)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус Эпштейна–Барр (VCA IgM)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epstein Barr virus capsid IgM Ab [Units/volume] in Serum"

  * #lab-pan-461 "Mioglobin"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миоглобин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myoglobin [Presence] in Serum or Plasma"

  * #lab-pan-462 "FT3 (свободный)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "FT3 (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) Free [Mass/volume] in Serum or Plasma"

  * #lab-pan-463 "FT4 (свободный)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "FT4 (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"

  * #lab-pan-464 "Tireotrop gormon (TTG/TSH) [Birlik/hajm]"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Tиреотропный гормон (ТТГ/TSH) [концентраци"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin [Units/volume] in Serum or Plasma"

  * #lab-pan-465 "Erkin triyodtironin (T3) [Zichlik]"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободный трийодтиронин (T3) [концентрация]"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) Free [Mass/volume] in Serum or Plasma"

  * #lab-pan-466 "Erkin tiroksin (T4) [Zichlik]"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободный тироксин (T4) [концентрация]"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"

  * #lab-pan-467 "Gepatit V DNK(HVV) (sifatli)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гепатит B ДНК(HBV), качественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"

  * #lab-pan-468 "Gepatit S RNK (HCV) (miqdoriy)"
    * ^designation[0].language = #ru
    * ^designation[=].value = "РНК вируса гепатита C (HCV), количественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"

  * #lab-pan-469 "Laboratoriya diagnostika boʻlimi Vitamin -D"
    * ^designation[0].language = #ru
    * ^designation[=].value = "Витамин D (отдел лабораторной диагностики)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Vitamin D+Metabolites [Mass/volume] in Serum or Plasma"
