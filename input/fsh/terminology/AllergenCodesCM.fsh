Instance: allergen-code-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "UZ local allergen codes → SNOMED CT"
Description: "Maps local UZ allergen codes to SNOMED CT for AllergyIntolerance.code"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/allergen-code-to-snomed"
* name = "AllergenCodeToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(AllergenCodesCS)
* sourceScopeCanonical = Canonical(AllergenCodesVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #aller-0010-00001
* group.element[=].display = "O't changlari"
* group.element[=].target[+].code = #256277009
* group.element[=].target[=].display = "Grass pollen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00014
* group.element[=].display = "Daraxt gulchanglari"
* group.element[=].target[+].code = #782576004
* group.element[=].target[=].display = "Tree pollen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00042
* group.element[=].display = "Begona o'tlar changlari"
* group.element[=].target[+].code = #419604006
* group.element[=].target[=].display = "Weed pollen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00063
* group.element[=].display = "Yevropa uy changi kanasi"
* group.element[=].target[+].code = #256260009
* group.element[=].target[=].display = "European house dust mite"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00085
* group.element[=].display = "Xamirturushlar"
* group.element[=].target[+].code = #23988000
* group.element[=].target[=].display = "Molds mushrooms"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00101
* group.element[=].display = "Dukkakli don ekinlari"
* group.element[=].target[+].code = #227313005
* group.element[=].target[=].display = "Legumes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00117
* group.element[=].display = "Donli mahsulotlar"
* group.element[=].target[+].code = #23182003
* group.element[=].target[=].display = "Cereals / Grains"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00133
* group.element[=].display = "Ziravorlar"
* group.element[=].target[+].code = #227374009
* group.element[=].target[=].display = "Spices"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00141
* group.element[=].display = "Mevalar"
* group.element[=].target[+].code = #72511004
* group.element[=].target[=].display = "Fruits"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00162
* group.element[=].display = "Sabzavotlar"
* group.element[=].target[+].code = #22836000
* group.element[=].target[=].display = "Vegetables"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00173
* group.element[=].display = "Yong'oqlar"
* group.element[=].target[+].code = #13577000
* group.element[=].target[=].display = "Nuts"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00196
* group.element[=].display = "Urug'lar"
* group.element[=].target[+].code = #264337003
* group.element[=].target[=].display = "Seeds"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00205
* group.element[=].display = "Sut"
* group.element[=].target[+].code = #70813002
* group.element[=].target[=].display = "Milk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00214
* group.element[=].display = "Tuxum"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Egg"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00222
* group.element[=].display = "Dengiz mahsulotlari"
* group.element[=].target[+].code = #44027008
* group.element[=].target[=].display = "Seafood / Shellfish"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00254
* group.element[=].display = "Go'sht"
* group.element[=].target[+].code = #28647000
* group.element[=].target[=].display = "Meat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00268
* group.element[=].display = "Yondiruvchi qurt chaqishi zahari"
* group.element[=].target[+].code = #710939007
* group.element[=].target[=].display = "Fire ant venom"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00270
* group.element[=].display = "Asalari zahari"
* group.element[=].target[+].code = #288328004
* group.element[=].target[=].display = "Bee venom"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00274
* group.element[=].display = "Qoriq zahari"
* group.element[=].target[+].code = #256440004
* group.element[=].target[=].display = "Wasp venom"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00281
* group.element[=].display = "Suvarak"
* group.element[=].target[+].code = #14241002
* group.element[=].target[=].display = "Cockroach"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00291
* group.element[=].display = "Uy iti"
* group.element[=].target[+].code = #448771007
* group.element[=].target[=].display = "Domestic dog"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00299
* group.element[=].display = "Uy mushugi"
* group.element[=].target[+].code = #448169003
* group.element[=].target[=].display = "Domestic cat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00318
* group.element[=].display = "Lateks"
* group.element[=].target[+].code = #111088007
* group.element[=].target[=].display = "Latex"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00325
* group.element[=].display = "Fikus turlari"
* group.element[=].target[+].code = #260203002
* group.element[=].target[=].display = "Ficus spp"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00331
* group.element[=].display = "Metallga allergiya"
* group.element[=].target[+].code = #1155942004
* group.element[=].target[=].display = "Allergy to metal"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00332
* group.element[=].display = "Fermentlanlagan ozuqa"
* group.element[=].target[+].code = #423703004
* group.element[=].target[=].display = "Fermented food"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00333
* group.element[=].display = "Ozuqaviy qo'ziqorinlarga allergiya"
* group.element[=].target[+].code = #447961002
* group.element[=].target[=].display = "Allergy to dietary mushroom"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00334
* group.element[=].display = "Spirtli ichimlik"
* group.element[=].target[+].code = #53527002
* group.element[=].target[=].display = "Alcoholic beverage"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00335
* group.element[=].display = "Kofeinli ichimlik"
* group.element[=].target[+].code = #792905007
* group.element[=].target[=].display = "Caffeined beverage"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00336
* group.element[=].display = "Shakarli ichimlik"
* group.element[=].target[+].code = #818989004
* group.element[=].target[=].display = "Sugar sweetened beverage"
* group.element[=].target[=].relationship = #equivalent
// 441900009 is just "Chemical" substance, not an allergy propensity. Using broader "Allergic disposition" instead.
* group.element[+].code = #aller-0010-00337
* group.element[=].display = "Kimyoviy modda allergiyasi"
* group.element[=].target[+].code = #609328004
* group.element[=].target[=].display = "Allergic disposition"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 417982003 "Allergy to cosmetic" is inactive. Using 200843008 which is a condition (dermatitis), not a propensity.
* group.element[+].code = #aller-0010-00338
* group.element[=].display = "Kosmetikaga allergiya"
* group.element[=].target[+].code = #200843008
* group.element[=].target[=].display = "Allergic contact dermatitis caused by cosmetic"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00289
* group.element[=].display = "Hayvonlarga allergiya"
* group.element[=].target[+].code = #717234006
* group.element[=].target[=].display = "Allergy to animal"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0001-00008
* group.element[=].display = "Gelmint (parazit qurt)"
* group.element[=].target[+].code = #37017009
* group.element[=].target[=].display = "Helminth"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0001-00004
* group.element[=].display = "O'simlik tolasi allergiyasi"
* group.element[=].target[+].code = #703926003
* group.element[=].target[=].display = "Allergy to plant fibre"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00339
* group.element[=].display = "Sulfanilamid antibiotik allergiyasi"
* group.element[=].target[+].code = #429239002
* group.element[=].target[=].display = "Allergy to sulfonamide antibiotic"
* group.element[=].target[=].relationship = #equivalent

// 294221004 "Allergy to muscle relaxants" is inactive. Using broader 416098002 "Drug allergy".
* group.element[+].code = #aller-0010-00340
* group.element[=].display = "Mushak bo'shatuvchi dori allergiyasi"
* group.element[=].target[+].code = #416098002
* group.element[=].target[=].display = "Drug allergy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00341
* group.element[=].display = "Mahalliy anestezik allergiyasi"
* group.element[=].target[+].code = #293718005
* group.element[=].target[=].display = "Allergy to local anaesthetic"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0001-00006
* group.element[=].display = "Dorilarga allergiya"
* group.element[=].target[+].code = #416098002
* group.element[=].target[=].display = "Allergy to drugs"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00342
* group.element[=].display = "Tibbiy ferment allergiyasi"
* group.element[=].target[+].code = #196546001
* group.element[=].target[=].display = "Medical enzyme allergy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00075
* group.element[=].display = "Ombor kanasi"
* group.element[=].target[+].code = #84073006
* group.element[=].target[=].display = "Storage mite"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0010-00343
* group.element[=].display = "Analgetikka allergik reaksiya"
* group.element[=].target[+].code = #15919911000119108
* group.element[=].target[=].display = "Allergic reaction caused by analgesic"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00344
* group.element[=].display = "Ovqat qo'shimchasiga allergiya"
* group.element[=].target[+].code = #16067171000119102
* group.element[=].target[=].display = "Allergy to food additive"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00345
* group.element[=].display = "Hasharot chaqishi allergiyasi"
* group.element[=].target[+].code = #151201000119107
* group.element[=].target[=].display = "Allergy to insect venom"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0010-00346
* group.element[=].display = "Tibbiy ichimlik"
* group.element[=].target[+].code = #439191000124108
* group.element[=].target[=].display = "Medical beverage"
* group.element[=].target[=].relationship = #equivalent
