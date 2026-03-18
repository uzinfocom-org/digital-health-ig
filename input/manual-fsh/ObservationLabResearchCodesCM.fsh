Instance: lab-research-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Lab Research Codes to LOINC"
Description: "Maps local UZ lab research codes to LOINC codes for laboratory observations."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/lab-research-to-loinc"
* name = "LabResearchToLoinc"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationLabResearchCodesCS)
* sourceScopeCanonical = Canonical(ObservationCodesVS)
* group.target = $loinc
* targetScopeCanonical = $loinc


* group.element[+].code = #lab-A
* group.element[=].display = "Umumiy qon tahlili"
* group.element[=].target[+].code = #58410-2
* group.element[=].target[=].display = "CBC panel"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1
* group.element[=].display = "Leykositlar (WBC)"
* group.element[=].target[+].code = #6690-2
* group.element[=].target[=].display = "Leukocytes [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-2
* group.element[=].display = "Barcha neurofil elementlar (Neu#)"
* group.element[=].target[+].code = #751-8
* group.element[=].target[=].display = "Neutrophils [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-3
* group.element[=].display = "Limfotsitlar soni (Lym#)"
* group.element[=].target[+].code = #731-0
* group.element[=].target[=].display = "Lymphocytes [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-4
* group.element[=].display = "Monotsitlar soni (Mon#)"
* group.element[=].target[+].code = #742-7
* group.element[=].target[=].display = "Monocytes [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-5
* group.element[=].display = "Eozinofillar soni (Eos#)"
* group.element[=].target[+].code = #711-2
* group.element[=].target[=].display = "Eosinophils [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-6
* group.element[=].display = "Bazofillar soni (Bas#)"
* group.element[=].target[+].code = #704-7
* group.element[=].target[=].display = "Basophils [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-7
* group.element[=].display = "Neytrofillar yetilish indeksi (Neu%)"
* group.element[=].target[+].code = #770-8
* group.element[=].target[=].display = "Neutrophils/100 leukocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-8
* group.element[=].display = "Limfotsitlar (Lym%)"
* group.element[=].target[+].code = #736-9
* group.element[=].target[=].display = "Lymphocytes/100 leukocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-9
* group.element[=].display = "Monositlar (Mon%)"
* group.element[=].target[+].code = #5905-5
* group.element[=].target[=].display = "Monocytes/100 leukocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-10
* group.element[=].display = "Eozinofillar (Eos%)"
* group.element[=].target[+].code = #713-8
* group.element[=].target[=].display = "Eosinophils/100 leukocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-11
* group.element[=].display = "Bazofillar (Bas%)"
* group.element[=].target[+].code = #706-2
* group.element[=].target[=].display = "Basophils/100 leukocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-12
* group.element[=].display = "Eritrotsitlar (RBC)"
* group.element[=].target[+].code = #789-8
* group.element[=].target[=].display = "Erythrocytes [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-13
* group.element[=].display = "Gemoglobin (HGB)"
* group.element[=].target[+].code = #718-7
* group.element[=].target[=].display = "Hemoglobin [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-14
* group.element[=].display = "Gematokrit (HCT)"
* group.element[=].target[+].code = #4544-3
* group.element[=].target[=].display = "Hematocrit [Volume Fraction] of Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-15
* group.element[=].display = "Eritrotsit o'rtacha hajmi (MCV)"
* group.element[=].target[+].code = #787-2
* group.element[=].target[=].display = "MCV [Entitic volume] by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-16
* group.element[=].display = "1 dona eritrotsitdagi gemoglobinning miqdori (MCH)"
* group.element[=].target[+].code = #785-6
* group.element[=].target[=].display = "MCH [Entitic mass] by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-17
* group.element[=].display = "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
* group.element[=].target[+].code = #786-4
* group.element[=].target[=].display = "MCHC [Mass/volume] by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-18
* group.element[=].display = "Eritrotsitlar anizotsitozi (RDW-CV)"
* group.element[=].target[+].code = #788-0
* group.element[=].target[=].display = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-19
* group.element[=].display = "Eritrotsit hajmi standart og‘ishi (RDW-SD)"
* group.element[=].target[+].code = #21000-5
* group.element[=].target[=].display = "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-20
* group.element[=].display = "Trombotsitlar (PLT)"
* group.element[=].target[+].code = #777-3
* group.element[=].target[=].display = "Platelets [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-21
* group.element[=].display = "Trombotsitlar o'rtacha hajmi (MPV)"
* group.element[=].target[+].code = #32623-1
* group.element[=].target[=].display = "Mean platelet volume [Entitic volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-22
* group.element[=].display = "Trombotsitlar anizotsitozi (PDW)"
* group.element[=].target[+].code = #32207-3
* group.element[=].target[=].display = "Platelet distribution width [Entitic volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-23
* group.element[=].display = "Trombokrit (PCT)"
* group.element[=].target[+].code = #51637-7
* group.element[=].target[=].display = "Plateletcrit [Volume Fraction] of Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-24
* group.element[=].display = "Yirik trombotsitlar soni (P-LCC)"
* group.element[=].target[+].code = #49498-9
* group.element[=].target[=].display = "Platelet large cell count [#/volume] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-25
* group.element[=].display = "Yirik trombotsitlar ulushi (P-LCR)"
* group.element[=].target[+].code = #49138-3
* group.element[=].target[=].display = "Platelet large cell ratio [#] in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-26
* group.element[=].display = "Eritrotsitning cho'kish tezligi (ECHT)"
* group.element[=].target[+].code = #4537-7
* group.element[=].target[=].display = "Erythrocyte sedimentation rate (ESR) by Westergren method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-B
* group.element[=].display = "Qon koagulogrammasi (qon ivish ko‘rsatkichlari)"
* group.element[=].target[+].code = #34552-5
* group.element[=].target[=].display = "Coagulation panel"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-27
* group.element[=].display = "Kvik bo‘yicha protrombin indeksi"
* group.element[=].target[+].code = #5901-4
* group.element[=].target[=].display = "Prothrombin activity (Quick) [Ratio] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-28
* group.element[=].display = "Protrombin vaqti"
* group.element[=].target[+].code = #5902-2
* group.element[=].target[=].display = "Prothrombin time (PT) [Time] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-29
* group.element[=].display = "Xalqaro normallashtirilgan nisbat (INR)"
* group.element[=].target[+].code = #6301-6
* group.element[=].target[=].display = "INR (International normalized ratio) in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-30
* group.element[=].display = "Trombotest"
* group.element[=].target[+].code = #3244-3
* group.element[=].target[=].display = "Thrombotest [Interpretation] in Platelet poor plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-31
* group.element[=].display = "Fibrinogen"
* group.element[=].target[+].code = #3255-7
* group.element[=].target[=].display = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-32
* group.element[=].display = "Faollashtirilgan qisman tromboplastin vaqti"
* group.element[=].target[+].code = #3173-2
* group.element[=].target[=].display = "Activated partial thromboplastin time (APTT) [Time] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-33
* group.element[=].display = "Trombin vaqti"
* group.element[=].target[+].code = #3243-3
* group.element[=].target[=].display = "Thrombin time (TT) [Time] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-34
* group.element[=].display = "Sitologik tekshiruv (surtma)"
* group.element[=].target[+].code = #11529-5
* group.element[=].target[=].display = "Cytology study of genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-35
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #6690-2
* group.element[=].target[=].display = "Leukocytes [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-36
* group.element[=].display = "Epitelial hujayralar"
* group.element[=].target[+].code = #20407-3
* group.element[=].target[=].display = "Epithelial cells [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-37
* group.element[=].display = "Mikroflora"
* group.element[=].target[+].code = #20409-9
* group.element[=].target[=].display = "Bacteria [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-38
* group.element[=].display = "Gonokokklar"
* group.element[=].target[+].code = #47972-9
* group.element[=].target[=].display = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-39
* group.element[=].display = "Trichomonadalar"
* group.element[=].target[+].code = #47973-7
* group.element[=].target[=].display = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-40
* group.element[=].display = "Zamburug‘lar"
* group.element[=].target[+].code = #20410-7
* group.element[=].target[=].display = "Yeast [Presence] in Genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-D
* group.element[=].display = "Najasning makroskopik tekshiruvi"
* group.element[=].target[+].code = #11529-5
* group.element[=].target[=].display = "Cytology study of genital specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-41
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #20408-1
* group.element[=].target[=].display = "Stool volume [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-42
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #20407-3
* group.element[=].target[=].display = "Stool consistency [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-43
* group.element[=].display = "Shakli"
* group.element[=].target[+].code = #20409-9
* group.element[=].target[=].display = "Stool form [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-44
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #47972-9
* group.element[=].target[=].display = "Stool odor [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-45
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #47973-7
* group.element[=].target[=].display = "Stool color [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-46
* group.element[=].display = "Muhit (pH reaksiyasi)"
* group.element[=].target[+].code = #20410-7
* group.element[=].target[=].display = "Stool pH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-47
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #5782-8
* group.element[=].target[=].display = "Mucus [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-48
* group.element[=].display = "Qon"
* group.element[=].target[+].code = #5792-7
* group.element[=].target[=].display = "Blood [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-49
* group.element[=].display = "Hazm bo`lmagan oziq-ovqat qoldiqlari"
* group.element[=].target[+].code = #5786-9
* group.element[=].target[=].display = "Undigested food [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-50
* group.element[=].display = "Yashirin qonga reaksiya"
* group.element[=].target[+].code = #57905-2
* group.element[=].target[=].display = "Occult blood [Presence] in Stool by Guaiac test"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-51
* group.element[=].display = "Sterkobilinga reaksiya"
* group.element[=].target[+].code = #19114-6
* group.element[=].target[=].display = "Stercobilin [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-52
* group.element[=].display = "Bilirubinga reaksiya"
* group.element[=].target[+].code = #19115-3
* group.element[=].target[=].display = "Bilirubin [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-E
* group.element[=].display = "Najasning mikroskopik tekshiruvi"
* group.element[=].target[+].code = #20884-3
* group.element[=].target[=].display = "Microscopic examination of feces"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-53
* group.element[=].display = "Mushak tolalari: chiziqli"
* group.element[=].target[+].code = #19116-1
* group.element[=].target[=].display = "Muscle fibers striated [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-54
* group.element[=].display = "Mushak tolalari: chiziqsiz"
* group.element[=].target[+].code = #19117-9
* group.element[=].target[=].display = "Muscle fibers non-striated [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-55
* group.element[=].display = "Biriktiruvchi to‘qima"
* group.element[=].target[+].code = #19118-7
* group.element[=].target[=].display = "Connective tissue [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-56
* group.element[=].display = "Neytral yog‘"
* group.element[=].target[+].code = #19119-5
* group.element[=].target[=].display = "Neutral fat [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-57
* group.element[=].display = "Yog‘ kislotalari"
* group.element[=].target[+].code = #19120-3
* group.element[=].target[=].display = "Fatty acids [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-58
* group.element[=].display = "Sovunlar"
* group.element[=].target[+].code = #19121-1
* group.element[=].target[=].display = "Soaps [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-59
* group.element[=].display = "Hazm bo‘ladigan o‘simlik tolasi"
* group.element[=].target[+].code = #19122-9
* group.element[=].target[=].display = "Plant fibers digested [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-60
* group.element[=].display = "Kraxmal"
* group.element[=].target[+].code = #19123-7
* group.element[=].target[=].display = "Starch granules [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-61
* group.element[=].display = "Yodofil flora"
* group.element[=].target[+].code = #19124-5
* group.element[=].target[=].display = "Iodophilic bacteria [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-62
* group.element[=].display = "Kristallar"
* group.element[=].target[+].code = #19125-2
* group.element[=].target[=].display = "Crystals [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-63
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #19126-0
* group.element[=].target[=].display = "Mucus [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-64
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #19127-8
* group.element[=].target[=].display = "Epithelial cells [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-65
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #19128-6
* group.element[=].target[=].display = "Leukocytes [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-66
* group.element[=].display = "Eritrotsitlar"
* group.element[=].target[+].code = #19129-4
* group.element[=].target[=].display = "Erythrocytes [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-67
* group.element[=].display = "Eng sodda organizmlar (protozoylar)"
* group.element[=].target[+].code = #19130-2
* group.element[=].target[=].display = "Protozoa [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-68
* group.element[=].display = "Gijja tuxumlari"
* group.element[=].target[+].code = #19131-0
* group.element[=].target[=].display = "Ova (helminth) [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-69
* group.element[=].display = "Xamirturush zamburug‘lari"
* group.element[=].target[+].code = #19132-8
* group.element[=].target[=].display = "Yeast [Presence] in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-70
* group.element[=].display = "Najasning mikroskopik kuzatuvi (nam preparat)"
* group.element[=].target[+].code = #6470-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Wet preparation"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-71
* group.element[=].display = "Najasning Gram bo‘yicha bo‘yalgan holda mikroskopiyasi"
* group.element[=].target[+].code = #649-4
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-72
* group.element[=].display = "Najasning trixrom bo‘yicha bo‘yalgan holda mikroskopiyasi"
* group.element[=].target[+].code = #6469-1
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Trichrome stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-73
* group.element[=].display = "Najasning qorong‘i maydon usuli bilan mikroskopiyasi"
* group.element[=].target[+].code = #20884-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Dark field examination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-74
* group.element[=].display = "Yorug‘lik mikroskopiyasi orqali najasda aniqlangan gijja tuxumlari va parazitlar"
* group.element[=].target[+].code = #10704-5
* group.element[=].target[=].display = "Ova and parasites identified in Stool by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-F
* group.element[=].display = "Siydikning makroskopik tekshiruvi"
* group.element[=].target[+].code = #24357-6
* group.element[=].target[=].display = "Urinalysis macro (dipstick) panel"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-75
* group.element[=].display = "Siydik hajmi"
* group.element[=].target[+].code = #3167-4
* group.element[=].target[=].display = "Urine volume [Volume]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-76
* group.element[=].display = "Siydik rangi"
* group.element[=].target[+].code = #5778-6
* group.element[=].target[=].display = "Color of Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-77
* group.element[=].display = "Siydikning tashqi ko‘rinishi"
* group.element[=].target[+].code = #5767-9
* group.element[=].target[=].display = "Appearance of Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-78
* group.element[=].display = "Refraktometriya orqali siydikning solishtirma zichligi"
* group.element[=].target[+].code = #5811-5
* group.element[=].target[=].display = "Specific gravity of Urine by Refractometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-79
* group.element[=].display = "Siydik pH darajasi"
* group.element[=].target[+].code = #2756-5
* group.element[=].target[=].display = "Urine pH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-80
* group.element[=].display = "Test-tasma orqali siydikdagi oqsil miqdori"
* group.element[=].target[+].code = #5804-0
* group.element[=].target[=].display = "Protein [Mass/volume] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-81
* group.element[=].display = "Test-tasma orqali siydikdagi glyukoza miqdori"
* group.element[=].target[+].code = #5792-7
* group.element[=].target[=].display = "Glucose [Mass/volume] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-82
* group.element[=].display = "Test-tasma orqali siydikdagi ketonlar miqdori"
* group.element[=].target[+].code = #5797-6
* group.element[=].target[=].display = "Ketones [Mass/volume] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-83
* group.element[=].display = "Test-tasma orqali siydikda gemoglobinning mavjudligi"
* group.element[=].target[+].code = #57751-0
* group.element[=].target[=].display = "Hemoglobin [Presence] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-84
* group.element[=].display = "Test-tasma orqali siydikda bilirubinning mavjudligi"
* group.element[=].target[+].code = #5770-3
* group.element[=].target[=].display = "Bilirubin [Presence] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-85
* group.element[=].display = "Test-tasma orqali siydikda urobilinogening mavjudligi"
* group.element[=].target[+].code = #20405-7
* group.element[=].target[=].display = "Urobilinogen [Presence] in Urine by Test strip"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-86
* group.element[=].display = "Siydikda o‘t kislotalarining mavjudligi"
* group.element[=].target[+].code = #14631-0
* group.element[=].target[=].display = "Bile acids [Presence] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-G
* group.element[=].display = "Siydikning mikroskopik tekshiruvi"
* group.element[=].target[+].code = #12235-8
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Urine sediment by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-87
* group.element[=].display = "Epiteliy: yassi"
* group.element[=].target[+].code = #12258-0
* group.element[=].target[=].display = "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-88
* group.element[=].display = "Epiteliy: o‘tuvchi"
* group.element[=].target[+].code = #13654-9
* group.element[=].target[=].display = "Epithelial cells.transitional [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-89
* group.element[=].display = "Epiteliy: buyrak epiteliyasi"
* group.element[=].target[+].code = #12257-2
* group.element[=].target[=].display = "Epithelial cells.renal [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-90
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #20408-1
* group.element[=].target[=].display = "Leukocytes [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-91
* group.element[=].display = "O‘zgargan eritrotsitlar"
* group.element[=].target[+].code = #57986-7
* group.element[=].target[=].display = "Erythrocytes dysmorphic [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-92
* group.element[=].display = "O‘zgarmagan eritrotsitlar"
* group.element[=].target[+].code = #20409-9
* group.element[=].target[=].display = "Erythrocytes [#/area] in Urine sediment by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-93
* group.element[=].display = "Silindrlar: gialinli"
* group.element[=].target[+].code = #57974-3
* group.element[=].target[=].display = "Casts.hyaline [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-94
* group.element[=].display = "Silindrlar: mumsimon"
* group.element[=].target[+].code = #32162-6
* group.element[=].target[=].display = "Casts.waxy [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-95
* group.element[=].display = "Silindrlar: donador"
* group.element[=].target[+].code = #33062-0
* group.element[=].target[=].display = "Casts.granular [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-96
* group.element[=].display = "Silindrlar: eritrotsitar"
* group.element[=].target[+].code = #33061-2
* group.element[=].target[=].display = "Casts.red blood cells [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-97
* group.element[=].display = "Silindrlar: leykotsitar"
* group.element[=].target[+].code = #33060-4
* group.element[=].target[=].display = "Casts.white blood cells [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-98
* group.element[=].display = "Silindrlar: epitelial"
* group.element[=].target[+].code = #57976-8
* group.element[=].target[=].display = "Casts.epithelial cells [#/area] in Urine sediment by Microscopy LPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-99
* group.element[=].display = "Shilliq"
* group.element[=].target[+].code = #28545-2
* group.element[=].target[=].display = "Mucus [Presence] in Urine sediment by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-100
* group.element[=].display = "Tuzlar"
* group.element[=].target[+].code = #12261-9
* group.element[=].target[=].display = "Crystals [Presence] in Urine sediment by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-101
* group.element[=].display = "Bakteriyalar"
* group.element[=].target[+].code = #5769-5
* group.element[=].target[=].display = "Bacteria [Presence] in Urine sediment by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-H
* group.element[=].display = "Biokimyoviy qon tahlili"
* group.element[=].target[+].code = #24323-8
* group.element[=].target[=].display = "Comprehensive metabolic 2000 panel – Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-102
* group.element[=].display = "Umumiy oqsil"
* group.element[=].target[+].code = #2885-2
* group.element[=].target[=].display = "Protein [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-103
* group.element[=].display = "Albumin"
* group.element[=].target[+].code = #1751-7
* group.element[=].target[=].display = "Albumin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-104
* group.element[=].display = "Xolesterin (umumiy)"
* group.element[=].target[+].code = #2093-3
* group.element[=].target[=].display = "Cholesterol [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-105
* group.element[=].display = "Triglitseridlar"
* group.element[=].target[+].code = #2571-8
* group.element[=].target[=].display = "Triglyceride [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-106
* group.element[=].display = "Glyukoza"
* group.element[=].target[+].code = #2345-7
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-107
* group.element[=].display = "Mochevina"
* group.element[=].target[+].code = #3094-0
* group.element[=].target[=].display = "Urea nitrogen [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-108
* group.element[=].display = "Kreatinin"
* group.element[=].target[+].code = #2160-0
* group.element[=].target[=].display = "Creatinine [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-109
* group.element[=].display = "Umumiy bilirubin"
* group.element[=].target[+].code = #1975-2
* group.element[=].target[=].display = "Bilirubin.total [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-110
* group.element[=].display = "To‘g‘ri (bog‘langan) bilirubin"
* group.element[=].target[+].code = #1968-7
* group.element[=].target[=].display = "Bilirubin.direct [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-111
* group.element[=].display = "Bilvosita (erkin) bilirubin"
* group.element[=].target[+].code = #1971-1
* group.element[=].target[=].display = "Bilirubin.indirect [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-112
* group.element[=].display = "Alaninaminotransferaza (ALT)"
* group.element[=].target[+].code = #1742-6
* group.element[=].target[=].display = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-113
* group.element[=].display = "Aspartataminotransferaza (AST)"
* group.element[=].target[+].code = #1920-8
* group.element[=].target[=].display = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-114
* group.element[=].display = "Laktatdegidrogenaza (LDH)"
* group.element[=].target[+].code = #14804-9
* group.element[=].target[=].display = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-115
* group.element[=].display = "Gammaglutamiltransferaza (GGT)"
* group.element[=].target[+].code = #2324-2
* group.element[=].target[=].display = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-116
* group.element[=].display = "Alfa-amilaza"
* group.element[=].target[+].code = #1798-8
* group.element[=].target[=].display = "Amylase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-117
* group.element[=].display = "Ishqoriy fosfataza"
* group.element[=].target[+].code = #6768-6
* group.element[=].target[=].display = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-118
* group.element[=].display = "Kaliy"
* group.element[=].target[+].code = #2823-3
* group.element[=].target[=].display = "Potassium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-119
* group.element[=].display = "Natriy"
* group.element[=].target[+].code = #2951-2
* group.element[=].target[=].display = "Sodium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-120
* group.element[=].display = "Kalsiy"
* group.element[=].target[+].code = #17861-6
* group.element[=].target[=].display = "Calcium [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-121
* group.element[=].display = "Temir"
* group.element[=].target[+].code = #2498-4
* group.element[=].target[=].display = "Iron [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-122
* group.element[=].display = "Fosfor"
* group.element[=].target[+].code = #2777-1
* group.element[=].target[=].display = "Phosphate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-123
* group.element[=].display = "Xlor"
* group.element[=].target[+].code = #2075-0
* group.element[=].target[=].display = "Chloride [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-I
* group.element[=].display = "Gormonal qon tahlili"
* group.element[=].target[+].code = #24357-5
* group.element[=].target[=].display = "Hormone studies (panel) – Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-124
* group.element[=].display = "T3 (triiodtironin)"
* group.element[=].target[+].code = #3053-6
* group.element[=].target[=].display = "Triiodothyronine (T3) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-125
* group.element[=].display = "T4 (tiroksin)"
* group.element[=].target[+].code = #3026-2
* group.element[=].target[=].display = "Thyroxine (T4) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-126
* group.element[=].display = "TTG (tireotrop gormon)"
* group.element[=].target[+].code = #3016-3
* group.element[=].target[=].display = "Thyrotropin (TSH) [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-127
* group.element[=].display = "Estradiol"
* group.element[=].target[+].code = #2243-4
* group.element[=].target[=].display = "Estradiol (E2) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-128
* group.element[=].display = "Testosteron"
* group.element[=].target[+].code = #2986-8
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-129
* group.element[=].display = "Kortizol"
* group.element[=].target[+].code = #2143-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-130
* group.element[=].display = "Prolaktin"
* group.element[=].target[+].code = #2842-3
* group.element[=].target[=].display = "Prolactin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-131
* group.element[=].display = "LG (luteinlashtiruvchi gormon)"
* group.element[=].target[+].code = #10501-5
* group.element[=].target[=].display = "Luteinizing hormone (LH) [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-132
* group.element[=].display = "FSG (follikulni rag‘batlantiruvchi gormon)"
* group.element[=].target[+].code = #15067-2
* group.element[=].target[=].display = "Follicle stimulating hormone (FSH) [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-133
* group.element[=].display = "Progesteron"
* group.element[=].target[+].code = #2839-9
* group.element[=].target[=].display = "Progesterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-134
* group.element[=].display = "PSA (prostata-spetsifik antigen)"
* group.element[=].target[+].code = #2857-1
* group.element[=].target[=].display = "Prostate specific Ag (PSA) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-J
* group.element[=].display = "Spermogramma tekshiruvi"
* group.element[=].target[+].code = #10558-7
* group.element[=].target[=].display = "Semen analysis (panel) – Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-135
* group.element[=].display = "Hajmi"
* group.element[=].target[+].code = #10586-6
* group.element[=].target[=].display = "Semen volume [Volume]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-136
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #10587-4
* group.element[=].target[=].display = "Semen color [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-137
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #10588-2
* group.element[=].target[=].display = "Semen odor [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-138
* group.element[=].display = "Suyulish vaqti"
* group.element[=].target[+].code = #10590-8
* group.element[=].target[=].display = "Semen liquefaction time"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-139
* group.element[=].display = "Kislotaliligi (pH)"
* group.element[=].target[+].code = #10589-0
* group.element[=].target[=].display = "Semen pH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-140
* group.element[=].display = "Qovushqoqligi"
* group.element[=].target[+].code = #10591-6
* group.element[=].target[=].display = "Semen viscosity [Presence]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-141
* group.element[=].display = "1 ml dagi spermatozoidlar soni"
* group.element[=].target[+].code = #11068-0
* group.element[=].target[=].display = "Spermatozoa [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-142
* group.element[=].display = "Umumiy hajmdagi spermatozoidlar soni"
* group.element[=].target[+].code = #72514-3
* group.element[=].target[=].display = "Spermatozoa total count [#] in Ejaculate"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-143
* group.element[=].display = "Harakatchanlik — faol"
* group.element[=].target[+].code = #10610-4
* group.element[=].target[=].display = "Spermatozoa progressive motility [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-144
* group.element[=].display = "Harakatchanlik — sust"
* group.element[=].target[+].code = #10611-2
* group.element[=].target[=].display = "Spermatozoa non-progressive motility [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-145
* group.element[=].display = "Harakatchanlik — harakatsiz"
* group.element[=].target[+].code = #10612-0
* group.element[=].target[=].display = "Spermatozoa immotile [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-146
* group.element[=].display = "Tirik spermatozoidlar"
* group.element[=].target[+].code = #11070-6
* group.element[=].target[=].display = "Spermatozoa viability [#/volume] in Semen by Stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-147
* group.element[=].display = "Spermatozoidlarning patologik shakllari"
* group.element[=].target[+].code = #10613-8
* group.element[=].target[=].display = "Spermatozoa abnormal forms [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-148
* group.element[=].display = "Spermatogenez epiteliyasi"
* group.element[=].target[+].code = #10614-6
* group.element[=].target[=].display = "Epithelial cells [Presence] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-149
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #10592-4
* group.element[=].target[=].display = "Leukocytes [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-150
* group.element[=].display = "Letsitin donachalari"
* group.element[=].target[+].code = #19159-1
* group.element[=].target[=].display = "Lecithin bodies [Presence] in Semen by Microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-151
* group.element[=].display = "Agglyutinatsiya"
* group.element[=].target[+].code = #10615-3
* group.element[=].target[=].display = "Spermatozoa agglutination [Presence] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-152
* group.element[=].display = "Fruktoza"
* group.element[=].target[+].code = #10593-2
* group.element[=].target[=].display = "Fructose [Moles/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-153
* group.element[=].display = "Limon kislotasi"
* group.element[=].target[+].code = #10594-0
* group.element[=].target[=].display = "Citric acid [Moles/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-K
* group.element[=].display = "Balg‘am tahlili"
* group.element[=].target[+].code = #11525-3
* group.element[=].target[=].display = "Sputum studies (panel) – Sputum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-154
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #40868-5
* group.element[=].target[=].display = "Sputum volume [Volume]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-155
* group.element[=].display = "Hidi"
* group.element[=].target[+].code = #10588-2
* group.element[=].target[=].display = "Sputum odor [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-156
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #11526-1
* group.element[=].target[=].display = "Sputum color [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-157
* group.element[=].display = "Xususiyati (tavsifi)"
* group.element[=].target[+].code = #11525-3
* group.element[=].target[=].display = "Sputum gross description"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-158
* group.element[=].display = "Aralashmalar"
* group.element[=].target[+].code = #11527-9
* group.element[=].target[=].display = "Sputum inclusions [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-159
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #11528-7
* group.element[=].target[=].display = "Sputum consistency [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-160
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #12248-1
* group.element[=].target[=].display = "Epithelial cells [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-161
* group.element[=].display = "Alveolyar makrofaglar"
* group.element[=].target[+].code = #12249-9
* group.element[=].target[=].display = "Macrophages [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-162
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #12250-7
* group.element[=].target[=].display = "Leukocytes [#/area] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-163
* group.element[=].display = "Eritrotsitlar"
* group.element[=].target[+].code = #12251-5
* group.element[=].target[=].display = "Erythrocytes [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-164
* group.element[=].display = "Tolalar"
* group.element[=].target[+].code = #22768-2
* group.element[=].target[=].display = "Fibers [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-165
* group.element[=].display = "Elastik tolalar"
* group.element[=].target[+].code = #12252-3
* group.element[=].target[=].display = "Elastic fibers [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-166
* group.element[=].display = "Ohaklangan (toshga o‘xshash) zarrachalar"
* group.element[=].target[+].code = #12253-1
* group.element[=].target[=].display = "Calcified bodies [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-167
* group.element[=].display = "Sil mikobakteriyalari"
* group.element[=].target[+].code = #11545-1
* group.element[=].target[=].display = "Mycobacterium tuberculosis [Presence] in Sputum by Microscopy (Ziehl–Neelsen stain)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-168
* group.element[=].display = "Eozinofillar"
* group.element[=].target[+].code = #12254-9
* group.element[=].target[=].display = "Eosinophils [#/area] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-169
* group.element[=].display = "Zamburug‘lar"
* group.element[=].target[+].code = #12255-6
* group.element[=].target[=].display = "Fungi [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-170
* group.element[=].display = "Boshqa flora"
* group.element[=].target[+].code = #12256-4
* group.element[=].target[=].display = "Bacteria [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-171
* group.element[=].display = "Kurshman spirallari"
* group.element[=].target[+].code = #19148-4
* group.element[=].target[=].display = "Curschmann's spirals [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-172
* group.element[=].display = "Sharko–Leyden kristallari"
* group.element[=].target[+].code = #19149-2
* group.element[=].target[=].display = "Charcot–Leyden crystals [Presence] in Sputum by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-173
* group.element[=].display = "Atipik belgilarga ega hujayralar"
* group.element[=].target[+].code = #12247-3
* group.element[=].target[=].display = "Epithelial cells atypical [Presence] in Sputum by Cytology"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-L
* group.element[=].display = "Prostata bezi sekretining tahlili"
* group.element[=].target[+].code = #19132-8
* group.element[=].target[=].display = "Prostatic secretion study (panel) – Prostatic fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-174
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #19133-6
* group.element[=].target[=].display = "Prostatic fluid volume [Volume]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-175
* group.element[=].display = "Rangi"
* group.element[=].target[+].code = #19134-4
* group.element[=].target[=].display = "Prostatic fluid color [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-176
* group.element[=].display = "Shaffofligi"
* group.element[=].target[+].code = #19135-1
* group.element[=].target[=].display = "Prostatic fluid clarity [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-177
* group.element[=].display = "Konsistensiyasi"
* group.element[=].target[+].code = #19136-9
* group.element[=].target[=].display = "Prostatic fluid consistency [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-178
* group.element[=].display = "Leykotsitlar"
* group.element[=].target[+].code = #19137-7
* group.element[=].target[=].display = "Leukocytes [#/area] in Prostatic fluid by Microscopy HPF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-179
* group.element[=].display = "Eritrotsitlar"
* group.element[=].target[+].code = #19138-5
* group.element[=].target[=].display = "Erythrocytes [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-180
* group.element[=].display = "Epiteliy"
* group.element[=].target[+].code = #19139-3
* group.element[=].target[=].display = "Epithelial cells [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-181
* group.element[=].display = "Makrofaglar"
* group.element[=].target[+].code = #19140-1
* group.element[=].target[=].display = "Macrophages [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-182
* group.element[=].display = "Letsitin donachalari"
* group.element[=].target[+].code = #19141-9
* group.element[=].target[=].display = "Lecithin bodies [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-183
* group.element[=].display = "Amiloid tanachalar"
* group.element[=].target[+].code = #19142-7
* group.element[=].target[=].display = "Amyloid bodies [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-184
* group.element[=].display = "Spermatozoidlar"
* group.element[=].target[+].code = #19143-5
* group.element[=].target[=].display = "Spermatozoa [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-185
* group.element[=].display = "Trichomonadalar"
* group.element[=].target[+].code = #19144-3
* group.element[=].target[=].display = "Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-186
* group.element[=].display = "Gonokokklar"
* group.element[=].target[+].code = #19145-0
* group.element[=].target[=].display = "Neisseria gonorrhoeae [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-187
* group.element[=].display = "Boshqa flora"
* group.element[=].target[+].code = #19146-8
* group.element[=].target[=].display = "Bacteria [Presence] in Prostatic fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-188
* group.element[=].display = "Atipik belgilarga ega hujayralar"
* group.element[=].target[+].code = #19147-6
* group.element[=].target[=].display = "Epithelial cells atypical [Presence] in Prostatic fluid by Cytology"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-M
* group.element[=].display = "TORCH-infeksiyalar bo‘yicha tahlil"
* group.element[=].target[+].code = #50596-8
* group.element[=].target[=].display = "TORCH IgG panel – Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-189
* group.element[=].display = "Xlamidiya (IgG antitanalari)"
* group.element[=].target[+].code = #50964-2
* group.element[=].target[=].display = "Chlamydia trachomatis IgG Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-190
* group.element[=].display = "Toksoplazmoz (IgG antitanalari)"
* group.element[=].target[+].code = #40677-7
* group.element[=].target[=].display = "Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-191
* group.element[=].display = "Sitomegalovirus (IgG antitanalari)"
* group.element[=].target[+].code = #13949-3
* group.element[=].target[=].display = "Cytomegalovirus IgG Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-192
* group.element[=].display = "Oddiy gerpes virusi (IgG antitanalari)"
* group.element[=].target[+].code = #48346-1
* group.element[=].target[=].display = "Herpes simplex virus 1+2 IgG Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-193
* group.element[=].display = "Ureaplazma"
* group.element[=].target[+].code = #32703-1
* group.element[=].target[=].display = "Ureaplasma urealyticum DNA [Presence] in Specimen by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-N
* group.element[=].display = "Serebrospinal suyuqlik (likvor) tekshiruvi"
* group.element[=].target[+].code = #19101-7
* group.element[=].target[=].display = "Cerebrospinal fluid studies (panel)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-194
* group.element[=].display = "Miqdori"
* group.element[=].target[+].code = #19102-5
* group.element[=].target[=].display = "Cerebrospinal fluid volume [Volume]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-195
* group.element[=].display = "Sentrifugatsiyadan keyingi rangi"
* group.element[=].target[+].code = #10335-8
* group.element[=].target[=].display = "CSF color [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-196
* group.element[=].display = "Sentrifugatsiyadan oldingi ksantoxromiya"
* group.element[=].target[+].code = #10336-6
* group.element[=].target[=].display = "CSF xanthochromia [Presence]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-197
* group.element[=].display = "Sentrifugatsiyadan keyingi shaffofligi"
* group.element[=].target[+].code = #10337-4
* group.element[=].target[=].display = "CSF clarity [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-198
* group.element[=].display = "Oqsil"
* group.element[=].target[+].code = #2880-3
* group.element[=].target[=].display = "Protein [Mass/volume] in Cerebrospinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-199
* group.element[=].display = "Pandi reaksiyasi"
* group.element[=].target[+].code = #19103-3
* group.element[=].target[=].display = "Pandy test [Interpretation] in Cerebrospinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-200
* group.element[=].display = "Limfotsitlar"
* group.element[=].target[+].code = #10328-3
* group.element[=].target[=].display = "Lymphocytes [#/volume] in Cerebrospinal fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-201
* group.element[=].display = "Eozinofillar"
* group.element[=].target[+].code = #10329-1
* group.element[=].target[=].display = "Eosinophils [#/volume] in Cerebrospinal fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-202
* group.element[=].display = "Neytrofillar"
* group.element[=].target[+].code = #10330-9
* group.element[=].target[=].display = "Neutrophils [#/volume] in Cerebrospinal fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-203
* group.element[=].display = "Makrofaglar"
* group.element[=].target[+].code = #19104-1
* group.element[=].target[=].display = "Macrophages [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-204
* group.element[=].display = "O‘zgargan hujayralar"
* group.element[=].target[+].code = #19105-8
* group.element[=].target[=].display = "Cells abnormal [Presence] in Cerebrospinal fluid by Cytology"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-205
* group.element[=].display = "Poliblastlar"
* group.element[=].target[+].code = #19106-6
* group.element[=].target[=].display = "Polynuclear cells [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-206
* group.element[=].display = "Plazmatik hujayralar"
* group.element[=].target[+].code = #19107-4
* group.element[=].target[=].display = "Plasma cells [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-207
* group.element[=].display = "Araxnoidal endoteliy hujayralari"
* group.element[=].target[+].code = #19108-2
* group.element[=].target[=].display = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-208
* group.element[=].display = "Ependima hujayralari"
* group.element[=].target[+].code = #19109-0
* group.element[=].target[=].display = "Ependymal cells [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-209
* group.element[=].display = "Donador sharlar"
* group.element[=].target[+].code = #19110-8
* group.element[=].target[=].display = "Granular corpuscles [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-210
* group.element[=].display = "Zamburug‘lar"
* group.element[=].target[+].code = #19111-6
* group.element[=].target[=].display = "Fungi [Presence] in Cerebrospinal fluid by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-211
* group.element[=].display = "Eritrotsitlar"
* group.element[=].target[+].code = #10331-7
* group.element[=].target[=].display = "Erythrocytes [#/volume] in Cerebrospinal fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-O
* group.element[=].display = "Suyak iligi punktati tahlili"
* group.element[=].target[+].code = #4469-9
* group.element[=].target[=].display = "Bone marrow differential panel – Bone marrow smear or aspirate"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-212
* group.element[=].display = "Miyelokariotsitlar soni"
* group.element[=].target[+].code = #74466-5
* group.element[=].target[=].display = "Myelokaryocytes [#/volume] in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-213
* group.element[=].display = "Megakariotsitlar soni"
* group.element[=].target[+].code = #74467-3
* group.element[=].target[=].display = "Megakaryocytes [Presence] in Bone marrow by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-214
* group.element[=].display = "Yetilmagan blastlar"
* group.element[=].target[+].code = #26444-0
* group.element[=].target[=].display = "Blast cells immature [#/100 cells] in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-215
* group.element[=].display = "Miyeloblastlar"
* group.element[=].target[+].code = #26445-7
* group.element[=].target[=].display = "Myeloblasts/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-216
* group.element[=].display = "Promiyelotsitlar"
* group.element[=].target[+].code = #26446-5
* group.element[=].target[=].display = "Promyelocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-217
* group.element[=].display = "Miyelotsitlar"
* group.element[=].target[+].code = #26447-3
* group.element[=].target[=].display = "Myelocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-218
* group.element[=].display = "Metamiyelotsitlar"
* group.element[=].target[+].code = #26448-1
* group.element[=].target[=].display = "Metamyelocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-219
* group.element[=].display = "Tayoqchasimon yadroli neytrofillar"
* group.element[=].target[+].code = #26449-9
* group.element[=].target[=].display = "Neutrophils.band form/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-220
* group.element[=].display = "Segmentyadroli neytrofillar"
* group.element[=].target[+].code = #26450-7
* group.element[=].target[=].display = "Neutrophils.segmented/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-221
* group.element[=].display = "Limfoblastlar"
* group.element[=].target[+].code = #26453-1
* group.element[=].target[=].display = "Lymphoblasts/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-222
* group.element[=].display = "Prolimfotsitlar"
* group.element[=].target[+].code = #26454-9
* group.element[=].target[=].display = "Prolymphocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-223
* group.element[=].display = "Limfotsitlar"
* group.element[=].target[+].code = #26455-6
* group.element[=].target[=].display = "Lymphocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-224
* group.element[=].display = "Monoblastlar"
* group.element[=].target[+].code = #26456-4
* group.element[=].target[=].display = "Monoblasts/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-225
* group.element[=].display = "Promonotsitlar"
* group.element[=].target[+].code = #26457-2
* group.element[=].target[=].display = "Promonocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-226
* group.element[=].display = "Monotsitlar"
* group.element[=].target[+].code = #26458-0
* group.element[=].target[=].display = "Monocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-227
* group.element[=].display = "Leyko-eritroblastik nisbat"
* group.element[=].target[+].code = #26459-8
* group.element[=].target[=].display = "Myeloid/erythroid ratio in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-228
* group.element[=].display = "Neytrofillar yetilish indeksi"
* group.element[=].target[+].code = #26460-6
* group.element[=].target[=].display = "Neutrophil maturation index in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-229
* group.element[=].display = "Proeritroblastlar"
* group.element[=].target[+].code = #26461-4
* group.element[=].target[=].display = "Proerythroblasts/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-230
* group.element[=].display = "Bazofil eritroblastlar"
* group.element[=].target[+].code = #26462-2
* group.element[=].target[=].display = "Erythroblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-231
* group.element[=].display = "Polixromatofil eritroblastlar"
* group.element[=].target[+].code = #26463-0
* group.element[=].target[=].display = "Erythroblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-232
* group.element[=].display = "Oksifil eritroblastlar"
* group.element[=].target[+].code = #26464-8
* group.element[=].target[=].display = "Erythroblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-233
* group.element[=].display = "Polixromatofil normoblastlar"
* group.element[=].target[+].code = #26465-5
* group.element[=].target[=].display = "Normoblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-234
* group.element[=].display = "Oksifil normoblastlar"
* group.element[=].target[+].code = #26466-3
* group.element[=].target[=].display = "Normoblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-235
* group.element[=].display = "Promegaloblastlar"
* group.element[=].target[+].code = #74452-5
* group.element[=].target[=].display = "Megaloblasts.pro/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-236
* group.element[=].display = "Bazofil megaloblastlar"
* group.element[=].target[+].code = #74453-3
* group.element[=].target[=].display = "Megaloblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-237
* group.element[=].display = "Polixromatofil megaloblastlar"
* group.element[=].target[+].code = #74454-1
* group.element[=].target[=].display = "Megaloblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-238
* group.element[=].display = "Oksifil megaloblastlar"
* group.element[=].target[+].code = #74455-8
* group.element[=].target[=].display = "Megaloblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-239
* group.element[=].display = "Megakarioblastlar"
* group.element[=].target[+].code = #74456-6
* group.element[=].target[=].display = "Megakaryoblasts/100 cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-240
* group.element[=].display = "Promegakariotsitlar"
* group.element[=].target[+].code = #74457-4
* group.element[=].target[=].display = "Promegakaryocytes/100 cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-241
* group.element[=].display = "Megakariotsitlar"
* group.element[=].target[+].code = #74458-2
* group.element[=].target[=].display = "Megakaryocytes/100 cells in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-242
* group.element[=].display = "Retikulyar hujayralar"
* group.element[=].target[+].code = #74459-0
* group.element[=].target[=].display = "Reticular cells [#/100 cells] in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-243
* group.element[=].display = "Plazmoblastlar"
* group.element[=].target[+].code = #26467-1
* group.element[=].target[=].display = "Plasmablasts/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-244
* group.element[=].display = "Proplazmotsitlar"
* group.element[=].target[+].code = #74460-8
* group.element[=].target[=].display = "Proplasmocytes/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-245
* group.element[=].display = "Plazmatik hujayralar"
* group.element[=].target[+].code = #26468-9
* group.element[=].target[=].display = "Plasma cells/100 leukocytes in Bone marrow by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-246
* group.element[=].display = "Granulopoez hujayralarining mitozi"
* group.element[=].target[+].code = #74461-6
* group.element[=].target[=].display = "Myelopoiesis cells mitosis [Presence] in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-247
* group.element[=].display = "Eritropoez hujayralarining mitozi"
* group.element[=].target[+].code = #74462-4
* group.element[=].target[=].display = "Erythropoiesis cells mitosis [Presence] in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-248
* group.element[=].display = "Eritroblastlar va normoblastlar sitoplazmasining yetilish indeksi"
* group.element[=].target[+].code = #74463-2
* group.element[=].target[=].display = "Cytoplasmic maturation index of erythroid cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-249
* group.element[=].display = "Gepatit B virusi DNKsi — sifat jihatidan"
* group.element[=].target[+].code = #29610-3
* group.element[=].target[=].display = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-250
* group.element[=].display = "Gepatit B virusi DNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #42595-9
* group.element[=].target[=].display = "Hepatitis B virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-251
* group.element[=].display = "Gepatit C virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #11259-9
* group.element[=].target[=].display = "Hepatitis C virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-252
* group.element[=].display = "Gepatit C virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #11011-4
* group.element[=].target[=].display = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-253
* group.element[=].display = "Gepatit C virusi genotipi — genotiplash"
* group.element[=].target[+].code = #32286-7
* group.element[=].target[=].display = "Hepatitis C virus genotype [Identifier] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-254
* group.element[=].display = "Gepatit D virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #7906-1
* group.element[=].target[=].display = "Hepatitis D virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-255
* group.element[=].display = "Gepatit D virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #85512-2
* group.element[=].target[=].display = "Hepatitis D virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-256
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — miqdoriy"
* group.element[=].target[+].code = #22327-1
* group.element[=].target[=].display = "Hepatitis C virus Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-257
* group.element[=].display = "Gepatit B virusining yuzaki antigeni"
* group.element[=].target[+].code = #75410-1
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum, Plasma or blood by Rapid immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-258
* group.element[=].display = "Gepatit B virusining yuzaki antigeniga qarshi antitanalar — anti-HBs"
* group.element[=].target[+].code = #22322-2
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-259
* group.element[=].display = "Gepatit B virusining yuzaki antigeni — HBsAg"
* group.element[=].target[+].code = #5195-3
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-260
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — umumiy (Anti-HCV)"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-261
* group.element[=].display = "Gepatit B virusining yadroviy antigeniga qarshi antitanalar — anti-HBc"
* group.element[=].target[+].code = #13952-7
* group.element[=].target[=].display = "Hepatitis B virus (HBV) Core antibody, Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-262
* group.element[=].display = "Gepatit B virusining e-antigeni — HBeAg"
* group.element[=].target[+].code = #13954-3
* group.element[=].target[=].display = "Hepatitis B virus e Ag [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-263
* group.element[=].display = "Gepatit A virusiga qarshi antitanalar — anti-HAV"
* group.element[=].target[+].code = #22314-9
* group.element[=].target[=].display = "Hepatitis A virus IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-264
* group.element[=].display = "Gepatit B virusining e-antigeniga qarshi antitanalar — anti-HBe"
* group.element[=].target[+].code = #22320-6
* group.element[=].target[=].display = "Hepatitis B virus e Ab [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-P
* group.element[=].display = "Gepatit A virusi"
* group.element[=].target[+].code = #32762-3
* group.element[=].target[=].display = "Hepatitis A virus"  
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-263
* group.element[=].display = "Gepatit A virusiga qarshi antitanalar — anti-HAV"
* group.element[=].target[+].code = #22314-9
* group.element[=].target[=].display = "Hepatitis A virus IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-R
* group.element[=].display = "Gepatit B virusi"
* group.element[=].target[+].code = #32762-3
* group.element[=].target[=].display = "Hepatitis B virus"  
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-249
* group.element[=].display = "Gepatit B virusi DNKsi — sifat jihatidan"
* group.element[=].target[+].code = #29610-3
* group.element[=].target[=].display = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-250
* group.element[=].display = "Gepatit B virusi DNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #42595-9
* group.element[=].target[=].display = "Hepatitis B virus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-257
* group.element[=].display = "Gepatit B virusining yuzaki antigeni"
* group.element[=].target[+].code = #5195-3
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-258
* group.element[=].display = "Gepatit B virusining yuzaki antigeniga qarshi antitanalar — anti-HBs"
* group.element[=].target[+].code = #22322-2
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-259
* group.element[=].display = "Gepatit B virusining yuzaki antigeni — HBsAg"
* group.element[=].target[+].code = #5195-3
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-261
* group.element[=].display = "Gepatit B virusining yadroviy antigeniga qarshi antitanalar — anti-HBc"
* group.element[=].target[+].code = #13952-7
* group.element[=].target[=].display = "Hepatitis B virus (HBV) Core antibody, Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-262
* group.element[=].display = "Gepatit B virusining e-antigeni — HBeAg"
* group.element[=].target[+].code = #13954-3
* group.element[=].target[=].display = "Hepatitis B virus e Ag [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-264
* group.element[=].display = "Gepatit B virusining e-antigeniga qarshi antitanalar — anti-HBe"
* group.element[=].target[+].code = #22320-6
* group.element[=].target[=].display = "Hepatitis B virus e Ab [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-S 
* group.element[=].display = "Gepatit C virusi"
* group.element[=].target[+].code = #32754-0
* group.element[=].target[=].display = "Hepatitis C virus"  
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-251
* group.element[=].display = "Gepatit C virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #11259-9
* group.element[=].target[=].display = "Hepatitis C virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-252
* group.element[=].display = "Gepatit C virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #11011-4
* group.element[=].target[=].display = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-253
* group.element[=].display = "Gepatit C virusi genotipi — genotiplash"
* group.element[=].target[+].code = #32286-7
* group.element[=].target[=].display = "Hepatitis C virus genotype [Identifier] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-256
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — miqdoriy"
* group.element[=].target[+].code = #22327-1
* group.element[=].target[=].display = "Hepatitis C virus Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-260
* group.element[=].display = "Gepatit C virusiga qarshi antitanalar — umumiy (Anti-HCV)"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-T
* group.element[=].display = "Gepatit D virusi"
* group.element[=].target[+].code = #80426-0
* group.element[=].target[=].display = "Hepatitis D virus"  
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-254
* group.element[=].display = "Gepatit D virusi RNKsi — sifat jihatidan"
* group.element[=].target[+].code = #7906-1
* group.element[=].target[=].display = "Hepatitis D virus RNA [Presence] in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-255
* group.element[=].display = "Gepatit D virusi RNKsi — miqdoriy (IU/mL)"
* group.element[=].target[+].code = #85512-2
* group.element[=].target[=].display = "Hepatitis D virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent
