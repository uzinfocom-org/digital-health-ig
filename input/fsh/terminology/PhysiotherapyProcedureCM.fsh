Instance: physiotherapy-procedure-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Physiotherapy procedure to SNOMED CT"
Description: "Maps local UZ PhysiotherapyProcedureCS codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/physiotherapy-procedure-to-snomed"
* name = "PhysiotherapyProcedureToSnomed"
* status = #draft
* experimental = true
* publisher = "Uzinfocom"

* group.source = Canonical(PhysiotherapyProcedureCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #proce-0001-00001
* group.element[=].display = "Amplipulsterapiya (sinusoidal modulyatsiyalangan toklar bilan davolash)"
* group.element[=].target[+].code = #313128003
* group.element[=].target[=].display = "Alternating current therapy"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #proce-0001-00002
* group.element[=].display = "Aeroionoterapiya"
* group.element[=].target[+].code = #182627008
* group.element[=].target[=].display = "Aerotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00003
* group.element[=].display = "Baroterapiya"
* group.element[=].target[+].code = #44387004
* group.element[=].target[=].display = "Decompression chamber therapy"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #proce-0001-00004
* group.element[=].display = "Gidroterapiya (suv bilan davolash)"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00005
* group.element[=].display = "Dorivor vannalar"
* group.element[=].target[+].code = #439352000
* group.element[=].target[=].display = "Taking medicated bath"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00006
* group.element[=].display = "Gidrogalvanik vannalar"
* group.element[=].target[+].code = #229564002
* group.element[=].target[=].display = "Direct current therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00007
* group.element[=].display = "Mineral vannalar"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00008
* group.element[=].display = "Vodorod sulfidli vannalar"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00009
* group.element[=].display = "Radonli vannalar"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00010
* group.element[=].display = "Gazli vannalar"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00011
* group.element[=].display = "Gazli vannalar (kislorodli, karbonat angidridli, azotli)"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00012
* group.element[=].display = "Xushbo‘y moddali vannalar"
* group.element[=].target[+].code = #394615007
* group.element[=].target[=].display = "Aromatherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00013
* group.element[=].display = "Kontrast vannalar"
* group.element[=].target[+].code = #20185002
* group.element[=].target[=].display = "Contrast water bath hydrotherapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00014
* group.element[=].display = "Girdobli vannalar"
* group.element[=].target[+].code = #113133001
* group.element[=].target[=].display = "Hydrotherapy with whirlpool bath"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00015
* group.element[=].display = "Quruq havo vannalari"
* group.element[=].target[+].code = #266694003
* group.element[=].target[=].display = "Heat therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00016
* group.element[=].display = "Shifobaxsh balchiqli vannalar"
* group.element[=].target[+].code = #229574004
* group.element[=].target[=].display = "Hot mud treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00017
* group.element[=].display = "Havo pufakchali (marvaridli) vannalar"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00018
* group.element[=].display = "Suv ostida ichakni yuvish vannasi"
* group.element[=].target[+].code = #174228003
* group.element[=].target[=].display = "Colonic lavage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00019
* group.element[=].display = "Yod-bromli vanna"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00020
* group.element[=].display = "Qum vannalari"
* group.element[=].target[+].code = #266694003
* group.element[=].target[=].display = "Heat therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00021
* group.element[=].display = "Davolovchi dush"
* group.element[=].target[+].code = #4827002
* group.element[=].target[=].display = "Shower hydrotherapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00022
* group.element[=].display = "Suv osti dush-massaji"
* group.element[=].target[+].code = #46903006
* group.element[=].target[=].display = "Hydrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00023
* group.element[=].display = "Suv ostida umurtqa pog‘onasini tortish"
* group.element[=].target[+].code = #12285001
* group.element[=].target[=].display = "Therapeutic mechanical traction"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00024
* group.element[=].display = "Galvanizatsiya"
* group.element[=].target[+].code = #313129006
* group.element[=].target[=].display = "Constant direct current therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00025
* group.element[=].display = "Gelioterapiya (quyosh nuri bilan davolash)"
* group.element[=].target[+].code = #31394004
* group.element[=].target[=].display = "Light therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00026
* group.element[=].display = "Gipoksiterapiya"
* group.element[=].target[+].code = #698510006
* group.element[=].target[=].display = "Respiratory therapy by modification of proportion of atmospheric gas"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00027
* group.element[=].display = "Balchiq bilan davolash (peloidoterapiya)"
* group.element[=].target[+].code = #229574004
* group.element[=].target[=].display = "Hot mud treatment"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #proce-0001-00028
* group.element[=].display = "Galoterapiya (tuz aerozoli bilan davolash)"
* group.element[=].target[+].code = #1366004
* group.element[=].target[=].display = "Inhalation therapy procedure"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00029
* group.element[=].display = "Galvanobalchiq terapiyasi"
* group.element[=].target[+].code = #229574004
* group.element[=].target[=].display = "Hot mud treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00030
* group.element[=].display = "Balchiqli induktotermiya"
* group.element[=].target[+].code = #229574004
* group.element[=].target[=].display = "Hot mud treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00031
* group.element[=].display = "Pelofonoterapiya"
* group.element[=].target[+].code = #229574004
* group.element[=].target[=].display = "Hot mud treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00032
* group.element[=].display = "Darsonvalizatsiya"
* group.element[=].target[+].code = #313128003
* group.element[=].target[=].display = "Alternating current therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00033
* group.element[=].display = "Detsimetr to‘lqinli terapiya (DMV-terapiya)"
* group.element[=].target[+].code = #47902005
* group.element[=].target[=].display = "Microwave diathermy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00034
* group.element[=].display = "Diadinamik toklar bilan davolash (DDT)"
* group.element[=].target[+].code = #229564002
* group.element[=].target[=].display = "Direct current therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00035
* group.element[=].display = "Duodenal zondlash"
* group.element[=].target[+].code = #440066008
* group.element[=].target[=].display = "Intubation of duodenum and aspiration of duodenal contents"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00036
* group.element[=].display = "Induktotermiya"
* group.element[=].target[+].code = #59705002
* group.element[=].target[=].display = "Short wave diathermy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00037
* group.element[=].display = "Ingalyatsiya (aerozolterapiya)"
* group.element[=].target[+].code = #702808009
* group.element[=].target[=].display = "Aerosol therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00038
* group.element[=].display = "Infraqizil nurlar bilan nurlantirish"
* group.element[=].target[+].code = #169421008
* group.element[=].target[=].display = "Infrared radiation therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00039
* group.element[=].display = "Interferens terapiya"
* group.element[=].target[+].code = #229558009
* group.element[=].target[=].display = "Interferential therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00040
* group.element[=].display = "Kislorod chodirida kislorod terapiyasi"
* group.element[=].target[+].code = #57485005
* group.element[=].target[=].display = "Oxygen therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00041
* group.element[=].display = "O‘ta yuqori chastotali millimetr to‘lqinli terapiya (KVCh-terapiya)"
* group.element[=].target[+].code = #313092005
* group.element[=].target[=].display = "Electromagnetic energy therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00042
* group.element[=].display = "Lazer terapiyasi"
* group.element[=].target[+].code = #229565001
* group.element[=].target[=].display = "Low power laser therapy"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #proce-0001-00043
* group.element[=].display = "Lazeropunktura"
* group.element[=].target[+].code = #231088001
* group.element[=].target[=].display = "Laser acupuncture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00044
* group.element[=].display = "Davolovchi jismoniy tarbiya (DJT)"
* group.element[=].target[+].code = #51998003
* group.element[=].target[=].display = "Therapeutic exercise"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00045
* group.element[=].display = "Magnitoterapiya"
* group.element[=].target[+].code = #1513241000168108
* group.element[=].target[=].display = "Electrophysical agent therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00046
* group.element[=].display = "Magnitopunktura"
* group.element[=].target[+].code = #1513241000168108
* group.element[=].target[=].display = "Electrophysical agent therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00047
* group.element[=].display = "Davolovchi massaj"
* group.element[=].target[+].code = #387854002
* group.element[=].target[=].display = "Massage physiotherapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00048
* group.element[=].display = "Kriomassaj"
* group.element[=].target[+].code = #387854002
* group.element[=].target[=].display = "Massage physiotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00049
* group.element[=].display = "Vakuumli massaj"
* group.element[=].target[+].code = #387854002
* group.element[=].target[=].display = "Massage physiotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00050
* group.element[=].display = "Ultrabinafsha nurlanish uchun biodozani aniqlash"
* group.element[=].target[+].code = #87724004
* group.element[=].target[=].display = "Photosensitivity test"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00051
* group.element[=].display = "Ozokerit bilan davolash"
* group.element[=].target[+].code = #229572000
* group.element[=].target[=].display = "Wax treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00052
* group.element[=].display = "Kislorod terapiyasi (oksigenoterapiya)"
* group.element[=].target[+].code = #57485005
* group.element[=].target[=].display = "Oxygen therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00053
* group.element[=].display = "Parafin bilan davolash"
* group.element[=].target[+].code = #229572000
* group.element[=].target[=].display = "Wax treatment"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00054
* group.element[=].display = "Santimetr to‘lqinli terapiya (SMV-terapiya)"
* group.element[=].target[+].code = #47902005
* group.element[=].target[=].display = "Microwave diathermy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00055
* group.element[=].display = "Mikroto‘lqinli terapiya (SVCh-terapiya)"
* group.element[=].target[+].code = #47902005
* group.element[=].target[=].display = "Microwave diathermy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00056
* group.element[=].display = "Yorug‘lik bilan davolash (fototerapiya)"
* group.element[=].target[+].code = #31394004
* group.element[=].target[=].display = "Light therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00057
* group.element[=].display = "Yorug‘lik vannasi"
* group.element[=].target[+].code = #31394004
* group.element[=].target[=].display = "Light therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00058
* group.element[=].display = "Skelet tortmasi"
* group.element[=].target[+].code = #69446009
* group.element[=].target[=].display = "Skeletal traction"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00059
* group.element[=].display = "Issiqlik bilan davolash (termoterapiya)"
* group.element[=].target[+].code = #266694003
* group.element[=].target[=].display = "Heat therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00060
* group.element[=].display = "Tyubaj (zondsiz o‘t ajralishini rag‘batlantirish)"
* group.element[=].target[+].code = #118824002
* group.element[=].target[=].display = "Procedure on biliary tract"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #proce-0001-00061
* group.element[=].display = "Umurtqa pog‘onasini traksion tortish"
* group.element[=].target[+].code = #12285001
* group.element[=].target[=].display = "Therapeutic mechanical traction"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00062
* group.element[=].display = "Ultratonoterapiya (UTT)"
* group.element[=].target[+].code = #313128003
* group.element[=].target[=].display = "Alternating current therapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00063
* group.element[=].display = "Ultra yuqori chastotali terapiya (UVCh-terapiya)"
* group.element[=].target[+].code = #49913004
* group.element[=].target[=].display = "Ultrashort wave diathermy"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #proce-0001-00064
* group.element[=].display = "Ultratovush terapiyasi"
* group.element[=].target[+].code = #89002000
* group.element[=].target[=].display = "Therapeutic ultrasound"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00065
* group.element[=].display = "Ultrabinafsha nurlar bilan nurlantirish"
* group.element[=].target[+].code = #363695005
* group.element[=].target[=].display = "Ultraviolet light therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00066
* group.element[=].display = "Ultrabinafsha nurlanish. PUVA vannalari"
* group.element[=].target[+].code = #46467001
* group.element[=].target[=].display = "Photochemotherapy with psoralens and ultraviolet A"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00067
* group.element[=].display = "Ultrabinafsha nurlanish. Tubus-kvars"
* group.element[=].target[+].code = #60478006
* group.element[=].target[=].display = "Local actinotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00068
* group.element[=].display = "Franklinizatsiya"
* group.element[=].target[+].code = #169430000
* group.element[=].target[=].display = "Electrotherapy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00069
* group.element[=].display = "Fonoforez"
* group.element[=].target[+].code = #229557004
* group.element[=].target[=].display = "Phonophoresis therapy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00070
* group.element[=].display = "Flyuktuorizatsiya"
* group.element[=].target[+].code = #57942008
* group.element[=].target[=].display = "Therapeutic electrical stimulation"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00071
* group.element[=].display = "Elektroforez (dori elektroforezi)"
* group.element[=].target[+].code = #91480001
* group.element[=].target[=].display = "Iontophoresis procedure"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #proce-0001-00072
* group.element[=].display = "Elektrosuyqu terapiyasi"
* group.element[=].target[+].code = #276347004
* group.element[=].target[=].display = "Transcranial electrical stimulation"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00073
* group.element[=].display = "Elektrotrankvilizatsiya"
* group.element[=].target[+].code = #276347004
* group.element[=].target[=].display = "Transcranial electrical stimulation"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #proce-0001-00074
* group.element[=].display = "Elektrostimulyatsiya"
* group.element[=].target[+].code = #57942008
* group.element[=].target[=].display = "Therapeutic electrical stimulation"
* group.element[=].target[=].relationship = #equivalent