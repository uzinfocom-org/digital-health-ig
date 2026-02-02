Instance: substance-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Allergy substance to SNOMED CT"
Description: "Maps local UZ ReactionSubstanceCS codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/substance-to-snomed"
* name = "AllergySubstanceToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ReactionSubstanceCS)
* sourceScopeCanonical = Canonical(ReactionSubstanceVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #aller-0010-00001
* group.element[=].display = "Ajiriq (Cyn d)"
* group.element[=].target[+].code = #260089005
* group.element[=].target[=].display = "Bermuda grass pollen (Cyn d)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00003
* group.element[=].display = "Ajiriq (Cyn d 1)"
* group.element[=].target[+].code = #260089005
* group.element[=].target[=].display = "Bermuda grass pollen (Cyn d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00004
* group.element[=].display = "Ko'p yillik mastak (Lol p 1)"
* group.element[=].target[+].code = #256280005
* group.element[=].target[=].display = "Lol p 1"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00005
* group.element[=].display = "Paspalum/grechka (Pas n)"
* group.element[=].target[+].code = #260102000
* group.element[=].target[=].display = "Paspalum/conspicuous buckwheat (Pas n)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00006
* group.element[=].display = "Ajiriqbosh (Phl p 1)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00007
* group.element[=].display = "Ajiriqbosh (Phl p 2)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00008
* group.element[=].display = "Ajiriqbosh (Phl p 5-0101)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 5-0101)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00009
* group.element[=].display = "Ajiriqbosh (Phl p 6)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00010
* group.element[=].display = "Ajiriqbosh (Phl p 7)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 7)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00011
* group.element[=].display = "Ajiriqbosh (Phl p 12)"
* group.element[=].target[+].code = #256281009
* group.element[=].target[=].display = "Timothy grass (Phl p 12)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00012
* group.element[=].display = "Qamish (Phr c)"
* group.element[=].target[+].code = #260091002
* group.element[=].target[=].display = "Reed (Phr c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00013
* group.element[=].display = "Javdar changi (Sec c pollen)"
* group.element[=].target[+].code = #387878007
* group.element[=].target[=].display = "Rye, pollen (Sec c pollen)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00015
* group.element[=].display = "Kumush akatsiya (Aca m)"
* group.element[=].target[+].code = #260132008
* group.element[=].target[=].display = "Silver acacia (Aca m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00016
* group.element[=].display = "Baland aylant (Ail a)"
* group.element[=].target[+].code = #472736009
* group.element[=].target[=].display = "Ailanthus altissima (Ail a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00017
* group.element[=].display = "Qandag'och (Aln g 1)"
* group.element[=].target[+].code = #69545006
* group.element[=].target[=].display = "Alder (Aln g 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00018
* group.element[=].display = "Qandag'och (Aln g 4)"
* group.element[=].target[+].code = #69545006
* group.element[=].target[=].display = "Alder (Aln g 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00019
* group.element[=].display = "Serbuqoq qayin (Bet v 1)"
* group.element[=].target[+].code = #256262001
* group.element[=].target[=].display = "Bet v 1"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00020
* group.element[=].display = "Serbuqoq qayin (Bet v 2)"
* group.element[=].target[+].code = #256262001
* group.element[=].target[=].display = "Bet v 2"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00021
* group.element[=].display = "Serbuqoq qayin (Bet v 6)"
* group.element[=].target[+].code = #256262001
* group.element[=].target[=].display = "Bet v 6"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00022
* group.element[=].display = "Qog'ozdaraxt (tut) (Bro pa)"
* group.element[=].target[+].code = #472732006
* group.element[=].target[=].display = "Paper mulberry (Bro pa)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00023
* group.element[=].display = "O'rmon yong'og'i (Cor a_pollen)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazel (Cor a_pollen)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00024
* group.element[=].display = "O'rmon yong'og'i (Cor a 1-0103)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazel (Cor a 1-0103)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00025
* group.element[=].display = "Yapon kriptomeriyasi (Cry j 1)"
* group.element[=].target[+].code = #260130000
* group.element[=].target[=].display = "Cryptomeria japonica (Cry j 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00026
* group.element[=].display = "Sarv (Cup a 1)"
* group.element[=].target[+].code = #1268858004
* group.element[=].target[=].display = "Cypress (Cup a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00027
* group.element[=].display = "Sarv (Cup s)"
* group.element[=].target[+].code = #387940006
* group.element[=].target[=].display = "Cypress (Cup s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00028
* group.element[=].display = "Qoraqayin (Fag s 1)"
* group.element[=].target[+].code = #428572005
* group.element[=].target[=].display = "Beech (Fag s 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00029
* group.element[=].display = "Shumtol (Fra e)"
* group.element[=].target[+].code = #1264513008
* group.element[=].target[=].display = "Ash (Fra e)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00030
* group.element[=].display = "Shumtol (Fra e 1)"
* group.element[=].target[+].code = #1264513008
* group.element[=].target[=].display = "Ash (Fra e 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00031
* group.element[=].display = "Yong'oq changi (Jug r_pollen)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut, pollen (Jug r_pollen)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00032
* group.element[=].display = "Kedr (Jun a)"
* group.element[=].target[+].code = #260142005
* group.element[=].target[=].display = "Cedar (Jun a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00033
* group.element[=].display = "Tut (Mor r)"
* group.element[=].target[+].code = #227434002
* group.element[=].target[=].display = "Mulberry (Mor r)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00034
* group.element[=].display = "Zaytun (Ole e 1)"
* group.element[=].target[+].code = #387926005
* group.element[=].target[=].display = "Olive (Ole e 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00035
* group.element[=].display = "Zaytun (Ole e 9)"
* group.element[=].target[+].code = #387926005
* group.element[=].target[=].display = "Olive (Ole e 9)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00036
* group.element[=].display = "Xurmo daraxti (Pho d 2)"
* group.element[=].target[+].code = #227423000
* group.element[=].target[=].display = "Date palm (Pho d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00037
* group.element[=].display = "Chinor (Pla a 1)"
* group.element[=].target[+].code = #387929003
* group.element[=].target[=].display = "Plane maple (Pla a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00038
* group.element[=].display = "Chinor (Pla a 2)"
* group.element[=].target[+].code = #387929003
* group.element[=].target[=].display = "Plane tree (Pla a 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00039
* group.element[=].display = "Chinor (Pla a 3)"
* group.element[=].target[+].code = #387929003
* group.element[=].target[=].display = "Plane tree (Pla a 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00040
* group.element[=].display = "Terak (Pop n)"
* group.element[=].target[+].code = #256269005
* group.element[=].target[=].display = "Poplar (Pop n)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00041
* group.element[=].display = "Qayrag'och (Ulm c)"
* group.element[=].target[+].code = #1285422007
* group.element[=].target[=].display = "Elm (Ulm c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00043
* group.element[=].display = "Oddiy olabuta (Ama r)"
* group.element[=].target[+].code = #260113002
* group.element[=].target[=].display = "Common goosefoot (Ama r)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00044
* group.element[=].display = "Ambroziya (Amb a)"
* group.element[=].target[+].code = #698721004
* group.element[=].target[=].display = "Ragweed (Amb a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00045
* group.element[=].display = "Ambroziya (Amb a 1)"
* group.element[=].target[+].code = #698721004
* group.element[=].target[=].display = "Ragweed (Amb a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00046
* group.element[=].display = "Ambroziya (Amb a 4)"
* group.element[=].target[+].code = #698721004
* group.element[=].target[=].display = "Ragweed (Amb a 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00047
* group.element[=].display = "Shuvoq (Art v)"
* group.element[=].target[+].code = #256293000
* group.element[=].target[=].display = "Wormwood (Art v)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00048
* group.element[=].display = "Shuvoq (Art v 1)"
* group.element[=].target[+].code = #256293000
* group.element[=].target[=].display = "Wormwood (Art v 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00049
* group.element[=].display = "Shuvoq (Art v 3)"
* group.element[=].target[+].code = #256293000
* group.element[=].target[=].display = "Wormwood (Art v 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00050
* group.element[=].display = "Nasha (Can s)"
* group.element[=].target[+].code = #10083006
* group.element[=].target[=].display = "Hemp (Can s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00051
* group.element[=].display = "Nasha (Can s 3)"
* group.element[=].target[+].code = #10083006
* group.element[=].target[=].display = "Hemp (Can s 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00052
* group.element[=].display = "Oq olabuta (Che a)"
* group.element[=].target[+].code = #1285421000
* group.element[=].target[=].display = "White goosefoot (Che a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00053
* group.element[=].display = "Oq olabuta (Che a 1)"
* group.element[=].target[+].code = #1285421000
* group.element[=].target[=].display = "White goosefoot (Che a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00054
* group.element[=].display = "Bir yillik prolesnik (Mer a 1)"
* group.element[=].target[+].code = #12926008
* group.element[=].target[=].display = "Annual wood-snow (Mer a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00055
* group.element[=].display = "Postennitsa (Par j)"
* group.element[=].target[+].code = #710904007
* group.element[=].target[=].display = "Wallflower (Par j)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00056
* group.element[=].display = "Postennitsa (Par j 2)"
* group.element[=].target[+].code = #710904007
* group.element[=].target[=].display = "Wallflower (Par j 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00057
* group.element[=].display = "Zubturum (Pla l)"
* group.element[=].target[+].code = #256294006
* group.element[=].target[=].display = "Plantain (Pla l)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00058
* group.element[=].display = "Zubturum (Pla l 1)"
* group.element[=].target[+].code = #256294006
* group.element[=].target[=].display = "Plantain (Pla l 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00059
* group.element[=].display = "Sho'rak (Sal k)"
* group.element[=].target[+].code = #260111000
* group.element[=].target[=].display = "Salwort (Sal k)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00060
* group.element[=].display = "Sho'rak (Sal k 1)"
* group.element[=].target[+].code = #260111000
* group.element[=].target[=].display = "Salwort (Sal k 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00061
* group.element[=].display = "Gazanda (Urt d)"
* group.element[=].target[+].code = #256298009
* group.element[=].target[=].display = "Nettle (Urt d)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00064
* group.element[=].display = "Amerika uy changi kanasi (Der f 1)"
* group.element[=].target[+].code = #703951002
* group.element[=].target[=].display = "American house dust mite (Der f 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00065
* group.element[=].display = "Amerika uy changi kanasi (Der f 2)"
* group.element[=].target[+].code = #703951002
* group.element[=].target[=].display = "American house dust mite (Der f 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00066
* group.element[=].display = "Yevropa uy changi kanasi (Der p 1)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00067
* group.element[=].display = "Yevropa uy changi kanasi (Der p 2)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00068
* group.element[=].display = "Yevropa uy changi kanasi (Der p 5)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00069
* group.element[=].display = "Yevropa uy changi kanasi (Der p 7)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 7)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00070
* group.element[=].display = "Yevropa uy changi kanasi (Der p 10)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 10)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00071
* group.element[=].display = "Yevropa uy changi kanasi (Der p 11)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 11)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00072
* group.element[=].display = "Yevropa uy changi kanasi (Der p 20)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 20)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00073
* group.element[=].display = "Yevropa uy changi kanasi (Der p 21)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 21)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00074
* group.element[=].display = "Yevropa uy changi kanasi (Der p 23)"
* group.element[=].target[+].code = #703952009
* group.element[=].target[=].display = "European house dust mite (Der p 23)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00076
* group.element[=].display = "Un kanasi (Aca s)"
* group.element[=].target[+].code = #388231000
* group.element[=].target[=].display = "Barn or flour mite (Acarus siro) (Aca s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00077
* group.element[=].display = "Uy changi kanasi Blomia tropicalis (Blo t 5)"
* group.element[=].target[+].code = #388232007
* group.element[=].target[=].display = "House dust mite Blomia tropicalis (Blo t 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00078
* group.element[=].display = "Uy changi kanasi Blomia tropicalis (Blo t 10)"
* group.element[=].target[+].code = #388232007
* group.element[=].target[=].display = "House dust mite Blomia tropicalis (Blo t 10)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00079
* group.element[=].display = "Uy changi kanasi Blomia tropicalis (Blo t 21)"
* group.element[=].target[+].code = #388232007
* group.element[=].target[=].display = "House dust mite Blomia tropicalis (Blo t 21)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00080
* group.element[=].display = "Uy changi kanasi Glycyphagus domesticus (Gly d 2)"
* group.element[=].target[+].code = #388237001
* group.element[=].target[=].display = "House dust mite Glycyphagus domesticus (Gly d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00081
* group.element[=].display = "Uy changi kanasi Lepidoglyphus destructor (Lep d 2)"
* group.element[=].target[+].code = #388238006
* group.element[=].target[=].display = "House dust mite Lepidoglyphus destructor (Lep d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00082
* group.element[=].display = "Uy changi kanasi Tyrophagus putrescentiae (Tyr p)"
* group.element[=].target[+].code = #388239003
* group.element[=].target[=].display = "House dust mite Tyrophagus putrescentiae (Tyr p)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00083
* group.element[=].display = "Uy changi kanasi Tyrophagus putrescentiae (Tyr p 2)"
* group.element[=].target[+].code = #388239003
* group.element[=].target[=].display = "House dust mite Tyrophagus putrescentiae (Tyr p 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00086
* group.element[=].display = "Xamirturushli zamburug' Malassezia sympodialis (Mala s 5)"
* group.element[=].target[+].code = #447178007
* group.element[=].target[=].display = "Yeasts of the genus Malassezia Malassezia sympodialis (Mala s 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00087
* group.element[=].display = "Xamirturushli zamburug' Malassezia sympodialis (Mala s 6)"
* group.element[=].target[+].code = #447178007
* group.element[=].target[=].display = "Yeasts of the genus Malassezia Malassezia sympodialis (Mala s 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00088
* group.element[=].display = "Xamirturushli zamburug' Malassezia sympodialis (Mala s 11)"
* group.element[=].target[+].code = #447178007
* group.element[=].target[=].display = "Yeasts of the genus Malassezia Malassezia sympodialis (Mala s 11)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00089
* group.element[=].display = "Novvoylik xamiturushlari (Sac c)"
* group.element[=].target[+].code = #58296003
* group.element[=].target[=].display = "Baker's yeast (Sac c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00091
* group.element[=].display = "Alternariya (Alternaria alternata) (Alt a 1)"
* group.element[=].target[+].code = #36703000
* group.element[=].target[=].display = "Alternaria (Alternaria alternata) (Alt a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00092
* group.element[=].display = "Alternariya (Alternaria alternata) (Alt a 6)"
* group.element[=].target[+].code = #36703000
* group.element[=].target[=].display = "Alternaria (Alternaria alternata) (Alt a 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00093
* group.element[=].display = "Tutovchi aspergil (Aspergillus fumigatus) (Asp f 1)"
* group.element[=].target[+].code = #32684000
* group.element[=].target[=].display = "Aspergillus fumigatus (Asp f 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00094
* group.element[=].display = "Tutovchi aspergil (Aspergillus fumigatus) (Asp f 3)"
* group.element[=].target[+].code = #32684000
* group.element[=].target[=].display = "Aspergillus fumigatus (Asp f 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00095
* group.element[=].display = "Tutovchi aspergil (Aspergillus fumigatus) (Asp f 4)"
* group.element[=].target[+].code = #32684000
* group.element[=].target[=].display = "Aspergillus fumigatus (Asp f 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00096
* group.element[=].display = "Tutovchi aspergil (Aspergillus fumigatus) (Asp f 6)"
* group.element[=].target[+].code = #32684000
* group.element[=].target[=].display = "Aspergillus fumigatus (Asp f 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00097
* group.element[=].display = "Cladosporium herbarum (Cla h)"
* group.element[=].target[+].code = #3459008
* group.element[=].target[=].display = "Cladosporium herbarum (Cla h)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00098
* group.element[=].display = "Cladosporium herbarum (Cla h 8)"
* group.element[=].target[+].code = #3459008
* group.element[=].target[=].display = "Cladosporium herbarum (Cla h 8)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00099
* group.element[=].display = "Oltinrang penitsillin (Penicilium chrysogenum) (Pen ch)"
* group.element[=].target[+].code = #24476004
* group.element[=].target[=].display = "Penicillium chrysogenum (Pen ch)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00102
* group.element[=].display = "Yeryong'oq (Ara h 1)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanuts (Ara h 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00103
* group.element[=].display = "Yeryong'oq (Ara h 2)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00104
* group.element[=].display = "Yeryong'oq (Ara h 3)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00105
* group.element[=].display = "Yeryong'oq (Ara h 6)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00106
* group.element[=].display = "Yeryong'oq (Ara h 8)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 8)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00107
* group.element[=].display = "Yeryong'oq (Ara h 9)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 9)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00108
* group.element[=].display = "Yeryong'oq (Ara h 15)"
* group.element[=].target[+].code = #387974005
* group.element[=].target[=].display = "Peanut (Ara h 15)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00109
* group.element[=].display = "Oddiy no'xat (Cic a)"
* group.element[=].target[+].code = #388175009
* group.element[=].target[=].display = "Chickpea (Cic a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00110
* group.element[=].display = "Soya loviyasi (Gly m 4)"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean (Gly m 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00111
* group.element[=].display = "Soya loviyasi (Gly m 5)"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean (Gly m 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00112
* group.element[=].display = "Soya loviyasi (Gly m 6)"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean (Gly m 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00113
* group.element[=].display = "Soya loviyasi (Gly m 8)"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean (Gly m 8)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00114
* group.element[=].display = "Yasmiq (Len c)"
* group.element[=].target[+].code = #227350006
* group.element[=].target[=].display = "Lentils (Len c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00115
* group.element[=].display = "Yashil loviya (Pha v)"
* group.element[=].target[+].code = #1284970000
* group.element[=].target[=].display = "Green beans (Pha v)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00116
* group.element[=].display = "No'xat (Pis s)"
* group.element[=].target[+].code = #387973004
* group.element[=].target[=].display = "Peas (Pis s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00118
* group.element[=].display = "Suli (Ave s)"
* group.element[=].target[+].code = #26949008
* group.element[=].target[=].display = "Oats (Ave s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00119
* group.element[=].display = "Kinoa (Che q)"
* group.element[=].target[+].code = #227515004
* group.element[=].target[=].display = "Quinoa (Che q)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00120
* group.element[=].display = "Oddiy marjumak (Fag e)"
* group.element[=].target[+].code = #387971002
* group.element[=].target[=].display = "Buckwheat (Fag e)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00121
* group.element[=].display = "Oddiy marjumak (Fag e 2)"
* group.element[=].target[+].code = #387971002
* group.element[=].target[=].display = "Buckwheat (Fag e 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00122
* group.element[=].display = "Arpa (Hor v)"
* group.element[=].target[+].code = #20445003
* group.element[=].target[=].display = "Barley (Hor v)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00123
* group.element[=].display = "Bo'rilukkak urug'i (Lup a)"
* group.element[=].target[+].code = #388211004
* group.element[=].target[=].display = "Lupin seeds (Lup a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00124
* group.element[=].display = "Guruch (Ory s)"
* group.element[=].target[+].code = #387968005
* group.element[=].target[=].display = "Rice (Ory s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00125
* group.element[=].display = "Tariq (Pan m)"
* group.element[=].target[+].code = #88672006
* group.element[=].target[=].display = "Millet (Pan m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00126
* group.element[=].display = "Javdar (Sec c_flour)"
* group.element[=].target[+].code = #412068007
* group.element[=].target[=].display = "Rye (Sec c_flour)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00127
* group.element[=].display = "Bo'g'doy (Tri a aA_TI)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat (Tri a aA_TI)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00128
* group.element[=].display = "Bo'g'doy (Tri a 14)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat (Tri a 14)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00129
* group.element[=].display = "Bo'g'doy (Tri a 19)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat (Tri a 19)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00130
* group.element[=].display = "Spelta bo'g'doyi (Tri s)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Spelt wheat (Tri s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00131
* group.element[=].display = "Makkajo'hori (Zea m)"
* group.element[=].target[+].code = #412357001
* group.element[=].target[=].display = "Corn (Zea m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00132
* group.element[=].display = "Makkajo'hori (Zea m 14)"
* group.element[=].target[+].code = #412357001
* group.element[=].target[=].display = "Corn (Zea m 14)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00134
* group.element[=].display = "Paprika (Cap a)"
* group.element[=].target[+].code = #227408005
* group.element[=].target[=].display = "Paprika (Cap a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00135
* group.element[=].display = "Oddiy zira (Car c)"
* group.element[=].target[+].code = #227381002
* group.element[=].target[=].display = "Caraway (Car c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00136
* group.element[=].display = "Oregano (Ori v)"
* group.element[=].target[+].code = #227407000
* group.element[=].target[=].display = "Oregano (Ori v)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00137
* group.element[=].display = "Maydanoz (Pet c)"
* group.element[=].target[+].code = #735048005
* group.element[=].target[=].display = "Parsley (Pet c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00138
* group.element[=].display = "Arpabodiyon (Pim a)"
* group.element[=].target[+].code = #227376006
* group.element[=].target[=].display = "Anise (Pim a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00139
* group.element[=].display = "Xantal (Sin)"
* group.element[=].target[+].code = #51905005
* group.element[=].target[=].display = "Mustard (Sin)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00140
* group.element[=].display = "Xantal (Sin a 1)"
* group.element[=].target[+].code = #51905005
* group.element[=].target[=].display = "Mustard (Sin a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00142
* group.element[=].display = "Kivi (Act d 1)"
* group.element[=].target[+].code = #422662008
* group.element[=].target[=].display = "Kiwi (Act d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00143
* group.element[=].display = "Kivi (Act d 2)"
* group.element[=].target[+].code = #422662008
* group.element[=].target[=].display = "Kiwi (Act d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00144
* group.element[=].display = "Kivi (Act d 5)"
* group.element[=].target[+].code = #422662008
* group.element[=].target[=].display = "Kiwi (Act d 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00145
* group.element[=].display = "Kivi (Act d 10)"
* group.element[=].target[+].code = #422662008
* group.element[=].target[=].display = "Kiwi (Act d 10)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00146
* group.element[=].display = "Papayya (Car p)"
* group.element[=].target[+].code = #735212003
* group.element[=].target[=].display = "Papaya (Car p)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00147
* group.element[=].display = "Apelsin (Cit s)"
* group.element[=].target[+].code = #256306003
* group.element[=].target[=].display = "Orange (Cit s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00148
* group.element[=].display = "Qovun (Cuc m 2)"
* group.element[=].target[+].code = #1264568007
* group.element[=].target[=].display = "Melon (Cuc m 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00149
* group.element[=].display = "Anjir (Fic c)"
* group.element[=].target[+].code = #227425007
* group.element[=].target[=].display = "Fig (Fic c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00150
* group.element[=].display = "Qulupnay (Fra a 1+3)"
* group.element[=].target[+].code = #102261002
* group.element[=].target[=].display = "Strawberry (Fra a 1+3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00151
* group.element[=].display = "Olma (Mal d 1)"
* group.element[=].target[+].code = #67505008
* group.element[=].target[=].display = "Apple (Mal d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00152
* group.element[=].display = "Olma (Mal d 2)"
* group.element[=].target[+].code = #67505008
* group.element[=].target[=].display = "Apple (Mal d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00153
* group.element[=].display = "Olma (Mal d 3)"
* group.element[=].target[+].code = #67505008
* group.element[=].target[=].display = "Apple (Mal d 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00154
* group.element[=].display = "Mango (Man i)"
* group.element[=].target[+].code = #1264563003
* group.element[=].target[=].display = "Mango (Man i)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00155
* group.element[=].display = "Banan (Mus a)"
* group.element[=].target[+].code = #256307007
* group.element[=].target[=].display = "Banana (Mus a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00156
* group.element[=].display = "Avokado (Pers a)"
* group.element[=].target[+].code = #735249009
* group.element[=].target[=].display = "Avocado (Pers a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00157
* group.element[=].display = "Gilos (Pru av)"
* group.element[=].target[+].code = #735248001
* group.element[=].target[=].display = "Cherry (Pru av)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00158
* group.element[=].display = "Shaftoli (Pru p 3)"
* group.element[=].target[+].code = #75618005
* group.element[=].target[=].display = "Peach (Pru p 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00159
* group.element[=].display = "Nok (Pyr c)"
* group.element[=].target[+].code = #735050002
* group.element[=].target[=].display = "Pear (Pyr c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00160
* group.element[=].display = "Buta mevasi (chernika) (Vac m)"
* group.element[=].target[+].code = #412061001
* group.element[=].target[=].display = "Blueberry (Vac m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00161
* group.element[=].display = "Uzum (Vit v 1)"
* group.element[=].target[+].code = #256317002
* group.element[=].target[=].display = "Grapes (Vit v 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00163
* group.element[=].display = "Piyoz (All c)"
* group.element[=].target[+].code = #735047000
* group.element[=].target[=].display = "Onion (All c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00164
* group.element[=].display = "Sarimsoqpiyoz (All s)"
* group.element[=].target[+].code = #735030001
* group.element[=].target[=].display = "Garlic (All s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00165
* group.element[=].display = "Selderey (Api g 1)"
* group.element[=].target[+].code = #256326004
* group.element[=].target[=].display = "Celery (Api g 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00166
* group.element[=].display = "Selderey (Api g 2)"
* group.element[=].target[+].code = #256326004
* group.element[=].target[=].display = "Celery (Api g 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00167
* group.element[=].display = "Selderey (Api g 6)"
* group.element[=].target[+].code = #256326004
* group.element[=].target[=].display = "Celery (Api g 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00168
* group.element[=].display = "Sabzi (Dau c)"
* group.element[=].target[+].code = #387988009
* group.element[=].target[=].display = "Carrot (Dau c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00169
* group.element[=].display = "Sabzi (Dau c 1)"
* group.element[=].target[+].code = #387988009
* group.element[=].target[=].display = "Carrot (Dau c 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00170
* group.element[=].display = "Kartoshka (Sol t)"
* group.element[=].target[+].code = #735053000
* group.element[=].target[=].display = "Potato (Sol t)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00171
* group.element[=].display = "Pomidor (Sola l)"
* group.element[=].target[+].code = #392551007
* group.element[=].target[=].display = "Tomato (Sola l)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00172
* group.element[=].display = "Pomidor (Sola l 6)"
* group.element[=].target[+].code = #392551007
* group.element[=].target[=].display = "Tomato (Sola l 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00174
* group.element[=].display = "Hind yong'og'i (keshyu) (Ana o)"
* group.element[=].target[+].code = #388050007
* group.element[=].target[=].display = "Cashew (Ana o)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00175
* group.element[=].display = "Hind yong'og'i (keshyu) (Ana o 2)"
* group.element[=].target[+].code = #388050007
* group.element[=].target[=].display = "Cashew (Ana o 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00176
* group.element[=].display = "Hind yong'og'i (keshyu) (Ana o 3)"
* group.element[=].target[+].code = #388050007
* group.element[=].target[=].display = "Cashew (Ana o 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00177
* group.element[=].display = "Braziliya yong'og'i (Ber e)"
* group.element[=].target[+].code = #387981003
* group.element[=].target[=].display = "Brazil nut (Ber e)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00178
* group.element[=].display = "Braziliya yong'og'i (Ber e 1)"
* group.element[=].target[+].code = #387981003
* group.element[=].target[=].display = "Brazil nut (Ber e 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00179
* group.element[=].display = "Pekan yong'og'i (Car i)"
* group.element[=].target[+].code = #708108002
* group.element[=].target[=].display = "Pecan, nut (Car i)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00180
* group.element[=].display = "Funduk yong'og'i (Cor a 1-0401)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazelnut (Cor a 1-0401)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00181
* group.element[=].display = "Funduk yong'og'i (Cor a 8)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazelnut (Cor a 8)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00182
* group.element[=].display = "Funduk yong'og'i (Cor a 9)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazelnut (Cor a 9)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00183
* group.element[=].display = "Funduk yong'og'i (Cor a 11)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazelnut (Cor a 11)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00184
* group.element[=].display = "Funduk yong'og'i (Cor a 14)"
* group.element[=].target[+].code = #387980002
* group.element[=].target[=].display = "Hazelnut (Cor a 14)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00185
* group.element[=].display = "Gretsiya yong'og'i (Jug r 1)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut (Jug r 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00186
* group.element[=].display = "Gretsiya yong'og'i (Jug r 2)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut (Jug r 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00187
* group.element[=].display = "Gretsiya yong'og'i (Jug r 3)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut (Jug r 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00188
* group.element[=].display = "Gretsiya yong'og'i (Jug r 4)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut (Jug r 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00189
* group.element[=].display = "Gretsiya yong'og'i (Jug r 6)"
* group.element[=].target[+].code = #1264473004
* group.element[=].target[=].display = "Walnut (Jug r 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00190
* group.element[=].display = "Makadamiya yong'og'i (Mac i 2S Albumin)"
* group.element[=].target[+].code = #708776008
* group.element[=].target[=].display = "Macadamia nut (Mac i 2S Albumin)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00191
* group.element[=].display = "Makadamiya yong'og'i (Mac inte)"
* group.element[=].target[+].code = #708776008
* group.element[=].target[=].display = "Macadamia nut (Mac inte)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00192
* group.element[=].display = "Pistalar (Pis v 1)"
* group.element[=].target[+].code = #388052004
* group.element[=].target[=].display = "Pistachio (Pis v 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00193
* group.element[=].display = "Pistalar (Pis v 2)"
* group.element[=].target[+].code = #388052004
* group.element[=].target[=].display = "Pistachio (Pis v 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00194
* group.element[=].display = "Pistalar (Pis v 3)"
* group.element[=].target[+].code = #388052004
* group.element[=].target[=].display = "Pistachio (Pis v 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00195
* group.element[=].display = "Bodom (Pru du)"
* group.element[=].target[+].code = #708783001
* group.element[=].target[=].display = "Almond (Pru du)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00197
* group.element[=].display = "Qovoq urug'i (Cuc p)"
* group.element[=].target[+].code = #227514000
* group.element[=].target[=].display = "Pumpkin seeds (Cuc p)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00198
* group.element[=].display = "Kungaboqar urug'i (Hel a)"
* group.element[=].target[+].code = #387913006
* group.element[=].target[=].display = "Sunflower seeds (Hel a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00199
* group.element[=].display = "Ko'knor urug'i (Pap s)"
* group.element[=].target[+].code = #388082005
* group.element[=].target[=].display = "Poppy seeds (Pap s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00200
* group.element[=].display = "Ko'knor urug'i (Pap s 2S Albumin)"
* group.element[=].target[+].code = #388082005
* group.element[=].target[=].display = "Poppy seeds (Pap s 2S Albumin)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00201
* group.element[=].display = "Kunjut (Ses i)"
* group.element[=].target[+].code = #387969002
* group.element[=].target[=].display = "Sesame (Ses i)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00202
* group.element[=].display = "Kunjut (Ses i 1)"
* group.element[=].target[+].code = #387969002
* group.element[=].target[=].display = "Sesame (Ses i 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00203
* group.element[=].display = "Fenugrek urug'i (Tri fo)"
* group.element[=].target[+].code = #227398002
* group.element[=].target[=].display = "Fenugreek seeds (Tri fo)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00206
* group.element[=].display = "Sigir suti (Bos d_milk)"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk (Bos d_milk)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00207
* group.element[=].display = "Sigir suti (Bos d 4)"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk (Bos d 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00208
* group.element[=].display = "Sigir suti (Bos d 5)"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk (Bos d 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00209
* group.element[=].display = "Sigir suti (Bos d 8)"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00210
* group.element[=].display = "Tuya suti (Cam d)"
* group.element[=].target[+].code = #70813002
* group.element[=].target[=].display = "Camel milk (Cam d)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00211
* group.element[=].display = "Echki suti (Cap h_milk)"
* group.element[=].target[+].code = #83595008
* group.element[=].target[=].display = "Goat milk (Cap h_milk)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00212
* group.element[=].display = "Baytal (ot) suti (qimiz) (Equ c_milk)"
* group.element[=].target[+].code = #710181002
* group.element[=].target[=].display = "Mare's milk (Equ c_milk)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00213
* group.element[=].display = "Qo'y suti (Ovi a_milk)"
* group.element[=].target[+].code = #226791004
* group.element[=].target[=].display = "Sheep milk (Ovi a_milk)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00215
* group.element[=].display = "Tuxum oqsili (Gal d_white)"
* group.element[=].target[+].code = #256443002
* group.element[=].target[=].display = "Egg white (Gal d_white)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00216
* group.element[=].display = "Tuxum sarig'i (Gal d_yolk)"
* group.element[=].target[+].code = #256442007
* group.element[=].target[=].display = "Egg yolk (Gal d_yolk)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00217
* group.element[=].display = "Tuxum oqsili (Gal d 1)"
* group.element[=].target[+].code = #256443002
* group.element[=].target[=].display = "Egg white (Gal d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00218
* group.element[=].display = "Tuxum oqsili (Gal d 2)"
* group.element[=].target[+].code = #256443002
* group.element[=].target[=].display = "Egg white (Gal d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00219
* group.element[=].display = "Tuxum oqsili (Gal d 3)"
* group.element[=].target[+].code = #256443002
* group.element[=].target[=].display = "Egg white (Gal d 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00220
* group.element[=].display = "Tuxum oqsili (Gal d 4)"
* group.element[=].target[+].code = #256443002
* group.element[=].target[=].display = "Egg white (Gal d 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00221
* group.element[=].display = "Tuxum sarig'i (Gal d 5)"
* group.element[=].target[+].code = #256442007
* group.element[=].target[=].display = "Egg yolk (Gal d 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00223
* group.element[=].display = "Seld balig'i qurti (Ani s 1)"
* group.element[=].target[+].code = #3706005
* group.element[=].target[=].display = "Herring worm (Ani s 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00224
* group.element[=].display = "Seld balig'i qurti (Ani s 3)"
* group.element[=].target[+].code = #3706005
* group.element[=].target[=].display = "Herring worm (Ani s 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00225
* group.element[=].display = "Krab (Chi spp-)"
* group.element[=].target[+].code = #736159005
* group.element[=].target[=].display = "Crab (Chi spp-)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00226
* group.element[=].display = "Atlantika seld balig'i (Clu h)"
* group.element[=].target[+].code = #17278005
* group.element[=].target[=].display = "Atlantic herring (Clu h)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00227
* group.element[=].display = "Atlantika seld balig'i (Clu h 1)"
* group.element[=].target[+].code = #17278005
* group.element[=].target[=].display = "Atlantic herring (Clu h 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00228
* group.element[=].display = "Oddiy krevetka (Cra c 6)"
* group.element[=].target[+].code = #278840001
* group.element[=].target[=].display = "Common shrimp (Cra c 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00229
* group.element[=].display = "Karp (Cyp c 1)"
* group.element[=].target[+].code = #3676004
* group.element[=].target[=].display = "Carp (Cyp c 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00230
* group.element[=].display = "Atlantika treska balig'i (Gad m)"
* group.element[=].target[+].code = #55264007
* group.element[=].target[=].display = "Atlantic cod (Gad m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00231
* group.element[=].display = "Atlantika treska balig'i (Gad m 2+3)"
* group.element[=].target[+].code = #55264007
* group.element[=].target[=].display = "Atlantic cod (Gad m 2+3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00232
* group.element[=].display = "Atlantika treska balig'i (Gad m 1)"
* group.element[=].target[+].code = #55264007
* group.element[=].target[=].display = "Atlantic cod (Gad m 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00233
* group.element[=].display = "Omar (Hom g)"
* group.element[=].target[+].code = #9907001
* group.element[=].target[=].display = "Lobster (Hom g)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00234
* group.element[=].display = "Krevetka (Lit s)"
* group.element[=].target[+].code = #227433008
* group.element[=].target[=].display = "Shrimp (Lit s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00235
* group.element[=].display = "Kalmar (Lol spp-)"
* group.element[=].target[+].code = #735006003
* group.element[=].target[=].display = "Squid (Lol spp-)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00236
* group.element[=].display = "Yeyishli midiya (Myt e)"
* group.element[=].target[+].code = #387991009
* group.element[=].target[=].display = "Edible mussel (Myt e)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00237
* group.element[=].display = "Ustritsa (Ost e)"
* group.element[=].target[+].code = #90014002
* group.element[=].target[=].display = "Oyster (Ost e)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00238
* group.element[=].display = "Shimoliy krevetka (Pan b)"
* group.element[=].target[+].code = #387984006
* group.element[=].target[=].display = "Northern shrimp (Pan b)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00239
* group.element[=].display = "Dengiz chig'anog'i (Pec spp-)"
* group.element[=].target[+].code = #736027000
* group.element[=].target[=].display = "Scallop (Pec spp-)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00240
* group.element[=].display = "Qora yo'lbarssimon krevetka (Pen m 1)"
* group.element[=].target[+].code = #420525009
* group.element[=].target[=].display = "Black tiger shrimp (Pen m 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00241
* group.element[=].display = "Qora yo'lbarssimon krevetka (Pen m 2)"
* group.element[=].target[+].code = #420525009
* group.element[=].target[=].display = "Black tiger shrimp (Pen m 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00242
* group.element[=].display = "Qora yo'lbarssimon krevetka (Pen m 3)"
* group.element[=].target[+].code = #420525009
* group.element[=].target[=].display = "Black tiger shrimp (Pen m 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00243
* group.element[=].display = "Qora yo'lbarssimon krevetka (Pen m 4)"
* group.element[=].target[+].code = #420525009
* group.element[=].target[=].display = "Black tiger shrimp (Pen m 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00244
* group.element[=].display = "Dengiz tulkisi yoki tikanli skat (Raj c)"
* group.element[=].target[+].code = #82211005
* group.element[=].target[=].display = "Thresher or spiny (Raj c)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00245
* group.element[=].display = "Dengiz tulkisi yoki tikanli skat (Raj c Parvalbumin)"
* group.element[=].target[+].code = #82211005
* group.element[=].target[=].display = "Thresher or spiny ray (Raj c Parvalbumin)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00246
* group.element[=].display = "Mollyuska (Rud spp-)"
* group.element[=].target[+].code = #54787006
* group.element[=].target[=].display = "Shellfish (Rud spp-)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00247
* group.element[=].display = "Losos (Sal s)"
* group.element[=].target[+].code = #39947003
* group.element[=].target[=].display = "Salmon (Sal s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00248
* group.element[=].display = "Losos (Sal s 1)"
* group.element[=].target[+].code = #39947003
* group.element[=].target[=].display = "Salmon (Sal s 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00249
* group.element[=].display = "Atlantika skumboriya balig'i (Sco s)"
* group.element[=].target[+].code = #86980008
* group.element[=].target[=].display = "Atlantic mackerel (Sco s)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00250
* group.element[=].display = "Atlantika skumbriya balig'i (Sco s 1)"
* group.element[=].target[+].code = #86980008
* group.element[=].target[=].display = "Atlantic mackerel (Sco s 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00251
* group.element[=].display = "Tunes (Thu a)"
* group.element[=].target[+].code = #70716001
* group.element[=].target[=].display = "Tuna (Thu a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00252
* group.element[=].display = "Tunes (Thu a 1)"
* group.element[=].target[+].code = #70716001
* group.element[=].target[=].display = "Tuna (Thu a 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00253
* group.element[=].display = "Qilich baliq (Xip g 1)"
* group.element[=].target[+].code = #80162008
* group.element[=].target[=].display = "Swordfish (Xip g 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00255
* group.element[=].display = "Uy chigirtkasi (Ach d)"
* group.element[=].target[+].code = #89817000
* group.element[=].target[=].display = "House cricket (Ach d)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00256
* group.element[=].display = "Mol go'shti (Bos d_meat)"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef (Bos d_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00257
* group.element[=].display = "Mol go'shti (Bos d 6)"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef (Bos d 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00258
* group.element[=].display = "Ot go'shti (Equ c_meat)"
* group.element[=].target[+].code = #710171001
* group.element[=].target[=].display = "Horse meat (Equ c_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00259
* group.element[=].display = "Tovuq go'shti (Gal d_meat)"
* group.element[=].target[+].code = #226955001
* group.element[=].target[=].display = "Chicken (Gal d_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00260
* group.element[=].display = "Ko'chmanchi chigirtka (Loc m)"
* group.element[=].target[+].code = #13807007
* group.element[=].target[=].display = "Migratory locust (Loc m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00261
* group.element[=].display = "Kurka go'shti (Mel g)"
* group.element[=].target[+].code = #226967004
* group.element[=].target[=].display = "Turkey (Mel g)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00262
* group.element[=].display = "Quyon go'shti (Ory_meat)"
* group.element[=].target[+].code = #710183004
* group.element[=].target[=].display = "Rabbit (Ory_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00263
* group.element[=].display = "Qo'y go'shti (Ovi a_meat)"
* group.element[=].target[+].code = #226942002
* group.element[=].target[=].display = "Lamb (Ovi a_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00264
* group.element[=].display = "Cho'chqa go'shti (Sus d_meat)"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork (Sus d_meat)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00265
* group.element[=].display = "Cho'chqa go'shti (Sus d 1)"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork (Sus d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00266
* group.element[=].display = "Katta un qo'ng'izi (Ten m)"
* group.element[=].target[+].code = #22085009
* group.element[=].target[=].display = "Large mealworm (Ten m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00269
* group.element[=].display = "Olovli chumoli (Sol spp-)"
* group.element[=].target[+].code = #54688007
* group.element[=].target[=].display = "Fire ant (Sol spp-)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00271
* group.element[=].display = "Asalari (Api m)"
* group.element[=].target[+].code = #46266008
* group.element[=].target[=].display = "Honey bee (Api m)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00272
* group.element[=].display = "Asalari (Api m 1)"
* group.element[=].target[+].code = #46266008
* group.element[=].target[=].display = "Honey bee (Api m 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00273
* group.element[=].display = "Asalari (Api m 10)"
* group.element[=].target[+].code = #46266008
* group.element[=].target[=].display = "Honey bee (Api m 10)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00275
* group.element[=].display = "Sakson arisi (Dol spp)"
* group.element[=].target[+].code = #261356007
* group.element[=].target[=].display = "Saxon wasp (Dol spp)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00276
* group.element[=].display = "Qog'oz ari (Pol d)"
* group.element[=].target[+].code = #261356007
* group.element[=].target[=].display = "Paper wasp (Pol d)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00277
* group.element[=].display = "Qog'oz ari (Pol d 5)"
* group.element[=].target[+].code = #261356007
* group.element[=].target[=].display = "Paper wasp (Pol d 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00278
* group.element[=].display = "Oddiy ari (Ves v)"
* group.element[=].target[+].code = #45458006
* group.element[=].target[=].display = "Common wasp (Ves v)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00279
* group.element[=].display = "Oddiy ari (Ves v 1)"
* group.element[=].target[+].code = #45458006
* group.element[=].target[=].display = "Common wasp (Ves v 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00280
* group.element[=].display = "Oddiy ari (Ves v 5)"
* group.element[=].target[+].code = #45458006
* group.element[=].target[=].display = "Common wasp (Ves v 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00282
* group.element[=].display = "Nemes suvaragi (Bla g 1)"
* group.element[=].target[+].code = #8062001
* group.element[=].target[=].display = "German cockroach (Bla g 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00283
* group.element[=].display = "Nemes suvaragi (Bla g 2)"
* group.element[=].target[+].code = #8062001
* group.element[=].target[=].display = "German cockroach (Bla g 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00284
* group.element[=].display = "Nemes suvaragi (Bla g 4)"
* group.element[=].target[+].code = #8062001
* group.element[=].target[=].display = "German cockroach (Bla g 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00285
* group.element[=].display = "Nemes suvaragi (Bla g 5)"
* group.element[=].target[+].code = #8062001
* group.element[=].target[=].display = "German cockroach (Bla g 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00286
* group.element[=].display = "Nemes suvaragi (Bla g 9)"
* group.element[=].target[+].code = #8062001
* group.element[=].target[=].display = "German cockroach (Bla g 9)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00287
* group.element[=].display = "Amerika suvaragi (Per a)"
* group.element[=].target[+].code = #8985003
* group.element[=].target[=].display = "American cockroach (Per a)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00288
* group.element[=].display = "Amerika suvaragi (Per a 7)"
* group.element[=].target[+].code = #8985003
* group.element[=].target[=].display = "American cockroach (Per a 7)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00291
* group.element[=].display = "It (Can f_Fd1)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f_Fd1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00292
* group.element[=].display = "It siydigi (shu jumladan Can f 5) (Can f_male urine)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog urine (incl- Can f 5) (Can f_male urine)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00293
* group.element[=].display = "It (Can f 1)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00294
* group.element[=].display = "It (Can f 2)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00295
* group.element[=].display = "It (Can f 3)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00296
* group.element[=].display = "It (Can f 4)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00297
* group.element[=].display = "It (Can f 6)"
* group.element[=].target[+].code = #106969009
* group.element[=].target[=].display = "Dog (Can f 6)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00298
* group.element[=].display = "Dengiz cho'chqasi (Cav p 1)"
* group.element[=].target[+].code = #125076001
* group.element[=].target[=].display = "Guinea pig (Cav p 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00299
* group.element[=].display = "Mushuk (Fel d 1)"
* group.element[=].target[+].code = #388618001
* group.element[=].target[=].display = "Cat (Fel d 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00300
* group.element[=].display = "Mushuk (Fel d 2)"
* group.element[=].target[+].code = #388618001
* group.element[=].target[=].display = "Cat (Fel d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00301
* group.element[=].display = "Mushuk (Fel d 4)"
* group.element[=].target[+].code = #388618001
* group.element[=].target[=].display = "Cat (Fel d 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00302
* group.element[=].display = "Mushuk (Fel d 7)"
* group.element[=].target[+].code = #388618001
* group.element[=].target[=].display = "Cat (Fel d 7)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00303
* group.element[=].display = "Uy sichqoni epiteliyasi (Mus m 1)"
* group.element[=].target[+].code = #447612001
* group.element[=].target[=].display = "House mouse, epidermis (Mus m 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00304
* group.element[=].display = "Quyon epiteliyasi (Ory c 1)"
* group.element[=].target[+].code = #88818001
* group.element[=].target[=].display = "Rabbit, epithelium (Ory c 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00305
* group.element[=].display = "Quyon epiteliyasi (Ory c 2)"
* group.element[=].target[+].code = #88818001
* group.element[=].target[=].display = "Rabbit, epithelium (Ory c 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00306
* group.element[=].display = "Quyon epiteliyasi (Ory c 3)"
* group.element[=].target[+].code = #88818001
* group.element[=].target[=].display = "Rabbit, epithelium (Ory c 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00307
* group.element[=].display = "Djungar og'maxoni (Phod s 1)"
* group.element[=].target[+].code = #392390005
* group.element[=].target[=].display = "Djungarian hamster (Phod s 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00308
* group.element[=].display = "Kalamush epiteliyasi (Rat n)"
* group.element[=].target[+].code = #256422003
* group.element[=].target[=].display = "Rat, epithelium (Rat n)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00310
* group.element[=].display = "Sigir epiteliyasi (Bos d 2)"
* group.element[=].target[+].code = #256410001
* group.element[=].target[=].display = "Cow, epithelium (Bos d 2)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00311
* group.element[=].display = "Echki epiteliyasi (Cap h_epithelia)"
* group.element[=].target[+].code = #256413004
* group.element[=].target[=].display = "Goat, epithelium (Cap h_epithelia)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00312
* group.element[=].display = "Ot epiteliyasi (Equ c 1)"
* group.element[=].target[+].code = #256418008
* group.element[=].target[=].display = "Horse, epithelium (Equ c 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00313
* group.element[=].display = "Ot epiteliyasi (Equ c 3)"
* group.element[=].target[+].code = #256418008
* group.element[=].target[=].display = "Horse, epithelium (Equ c 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00314
* group.element[=].display = "Ot epiteliyasi (Equ c 4)"
* group.element[=].target[+].code = #256418008
* group.element[=].target[=].display = "Horse, epithelium (Equ c 4)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00315
* group.element[=].display = "Qo'y epiteliyasi (Ovi a_epithelia)"
* group.element[=].target[+].code = #260162002
* group.element[=].target[=].display = "Sheep, epithelium (Ovi a_epithelia)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00316
* group.element[=].display = "Cho'chqa epiteliyasi (Sus d_epithelia)"
* group.element[=].target[+].code = #256420006
* group.element[=].target[=].display = "Pig, epithelium (Sus d_epithelia)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00319
* group.element[=].display = "Lateks (Hev b 1)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00320
* group.element[=].display = "Lateks (Hev b 3)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 3)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00321
* group.element[=].display = "Lateks (Hev b 5)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 5)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00322
* group.element[=].display = "Lateks (Hev b 6-02)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 6-02)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00323
* group.element[=].display = "Lateks (Hev b 8)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 8)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00324
* group.element[=].display = "Lateks (Hev b 11)"
* group.element[=].target[+].code = #1003751008
* group.element[=].target[=].display = "Latex (Hev b 11)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00326
* group.element[=].display = "Fikus (Fic b)"
* group.element[=].target[+].code = #260203002
* group.element[=].target[=].display = "Ficus (Fic b)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00328
* group.element[=].display = "Laktoferrin (Hom s Lactoferrin) (Hom s LF)"
* group.element[=].target[+].code = #102670005
* group.element[=].target[=].display = "Lactoferrin (Hom s Lactoferrin) (Hom s LF)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00330
* group.element[=].display = "Qisqichbaqasimon kana (Argas reflexus) (Arg r 1)"
* group.element[=].target[+].code = #65009006
* group.element[=].target[=].display = "Shell mite (Argas reflexus) (Arg r 1)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
